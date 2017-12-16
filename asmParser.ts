import {Formatter} from "./formatters/formatter";
import * as _ from "lodash";
import {Asm} from "./asm/asm";
import RowList = Asm.RowList;
import Row = Asm.Row;

export class AsmParser {
    /**
     *
     * @param {Buffer} buffer
     * @param {Formatter} formatter
     * @param {string} entryPoint
     * @returns {Buffer}
     */
    static parse(buffer: Buffer, formatter: Formatter, entryPoint: string): {
            nodes: {body: RowList, id: string, label?: string, initialAddress?: any}[],
            edges: {source: {id:string}, target:{id: string}, label?: string, id: string}[]
    } {
        let rows = formatter.rows(buffer);
        let address = null;
        let nodes: {body: RowList, id: string, label?: string, initialAddress?: any}[] = [];
        let edges: {source: {id: string}, target:{id: string}, label?: string, id: string}[] = [];
        let rowSet: Row[] = [];
        let stack = [{braceNode: null, nextRow: rows.toPointer(entryPoint)}];
        let callstack = [];
        let initialAddress = function (){
            let row = this.body.get(0);
            return row ? row.address : null;
        };

        while (stack.length) {
            let state = stack.pop();
            if(state.nextRow instanceof Row){
                rows.toPointer(state.nextRow.address);
            } else {
                throw new Error("Cannot move pointer to next asm row.");
            }
            for (let row of rows) {
                // console.log(row.toString());
                // TODO Logic of if double address.
                if (address = row.getControlFlowAddress()) {
                    // TODO Create logic of building ControlFlowGraph block.
                    let node = null;
                    if(!(node = _.find(nodes, e => e.initialAddress() == rows.nextOf(rows.get(address)).address ))) {
                        nodes.push({
                            body: new RowList(rowSet),
                            label: "",
                            id: _.uniqueId(),
                            initialAddress: initialAddress
                        });
                        node = _.last(nodes);
                    }

                    if(state.braceNode){
                        edges.push({
                            source: state.braceNode,
                            target: node,
                            id: _.uniqueId('e')
                        });
                        state.braceNode = null;
                    } else if(nodes.length > 1){
                        edges.push({
                            source: _.first(nodes.slice(-2)),
                            target: node,
                            id: _.uniqueId('e')
                        });
                    }
                    if (row.isDoubleBraceFlow()) {
                        stack.push({braceNode: _.last(nodes), nextRow: rows.nextOf(row)});
                    }

                    rowSet = [];
                    rows.toPointer(address);
                    /* If control flow command was call. Save return address in stack. */
                    if((new RegExp('call\\s+', 'i')).test(row.command)){
                        callstack.push(row);
                    }
                } else if(address == null){ /* If control flow command is ret or bad jmp address */
                    // TODO Change simple save address of return to analyze stack contains.
                    // TODO bad jmp address.
                    if(!callstack.length){
                        throw new Error("Stack corruption. CallStack is empty now.");
                    }
                    let callable = callstack.pop();
                    let node = null;
                    if(!(node = _.find(nodes, e => e.initialAddress() == rows.nextOf(callable).address))) {
                        nodes.push({
                            body: new RowList(rowSet),
                            label: "",
                            id: _.uniqueId(),
                            initialAddress: initialAddress
                        });
                        node = _.last(nodes);
                    } else {
                        if(state.braceNode){
                            edges.push({
                                source: state.braceNode,
                                target: node,
                                id: _.uniqueId('e')
                            });
                            state.braceNode = null;
                        } else if(nodes.length > 1){
                            edges.push({
                                source: _.first(nodes.slice(-2)),
                                target: node,
                                id: _.uniqueId('e')
                            });
                        }
                        break;
                    }

                    if(state.braceNode){
                        edges.push({
                            source: state.braceNode,
                            target: node,
                            id: _.uniqueId('e')
                        });
                        state.braceNode = null;
                    } else if(nodes.length > 1){
                        edges.push({
                            source: _.first(nodes.slice(-2)),
                            target: node,
                            id: _.uniqueId('e')
                        });
                    }

                    rows.toPointer(rows.nextOf(callable).address);
                } else {
                    rowSet.push(row);
                }
            }
        }

        return {nodes: nodes, edges: edges};
    }
}