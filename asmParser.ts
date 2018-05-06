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
     * @param {number} limit
     * @returns {Buffer}
     */
    static parse(buffer: Buffer, formatter: Formatter, entryPoint: string, limit?: number): {
            nodes: {body: RowList, id: string, label?: string, initialAddress?: any}[],
            edges: {source: {id:string}, target:{id: string}, label?: string, id: string}[]
    } {
        let rows = formatter.rows(buffer);
        let address = null;
        let nodes: {body: RowList, id: string, label?: string, initialAddress?: any}[] = [];
        let edges: {source: {id: string}, target:{id: string}, label?: string, id: string}[] = [];
        let rowSet: Row[] = [];
        let stack = [{braceNode: null, nextRow: rows.toPointer(entryPoint), row: null, callstack: []}];
        limit = limit || Number.MAX_VALUE;
        let initialAddress = function (){
            let row = this.body.get(0);
            return row ? row.address : null;
        };

        while (stack.length && nodes.length < limit) {
            let state = stack.pop();
            let firstAddress = '';
            let lastAddress = '';
            if(state.nextRow instanceof Row){
                rows.toPointer(state.nextRow.address);
            } else {
                throw new Error("Cannot move pointer to next asm row.");
            }
            for (let row of rows) {
                // console.log(row.toString());
                // TODO Logic of if double address.
                if(firstAddress === row.address) {
                    firstAddress = lastAddress;
                    rows.toPointer(rows.nextOf(rows.get(lastAddress)).address);
                }
                firstAddress = firstAddress || address;
                lastAddress = row.address;
                if (address = row.getControlFlowAddress()) {
                    // TODO Create logic of building ControlFlowGraph block.
                    let node = null;
                    if(!(node = _.find(nodes, e => e.initialAddress() == address))) {
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
                        // If has infinite cycle in code flow
                        let index = 0;
                        if((index = _.findIndex(stack, {row: row.address})) >= 0){
                            let braceNode: {nextRow: boolean|Row} = stack.splice(index, 1).pop();
                            rows.toPointer(braceNode.nextRow instanceof Row ? braceNode.nextRow.address : '');
                            continue;
                        } else {
                            stack.push({braceNode: _.last(nodes), nextRow: rows.nextOf(row), row: row.address, callstack: state.callstack.slice()});
                        }
                    }

                    rowSet = [];
                    rows.toPointer(address);
                    /* If control flow command was call. Save return address in stack. */
                    if((new RegExp('call\\s+', 'i')).test(row.command)){
                        state.callstack.push(row);
                    }
                } else if(address == null){ /* If control flow command is ret or bad jmp address */
                    // TODO Change simple save address of return to analyze stack contains.
                    // TODO bad jmp address.
                    if(!state.callstack.length){
                        console.warn("Stack corruption. CallStack is empty now.");
                        continue;
                    }
                    let callable = state.callstack.pop();
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