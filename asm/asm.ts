import * as util from "util";
import * as _ from "lodash";
import {isNumber} from "util";

export namespace Asm{
    /**
     * Class that presents single row of asm language.
     */
    export abstract class Row{

        /**
         * Needs to be initialized on method of child class
         * to use cache.
         * @type {boolean|null}
         * @private
         */
        protected _isChangeControlFlow: boolean|null = null;

        /**
         * Byte code of string.
         */
        public code: Buffer;

        /**
         * String implementation of command.
         */
        public command: string;


        /**
         * String value of offset this string in code segment.
         */
        public address: string;

        /**
         * Create of new Row instance.
         * @param {Buffer} code
         * @param {string} command
         * @param {string} address
         */
        constructor (code: Buffer, command: string, address: string){
            this.code = code;
            this.command = command;
            this.address = address;
        }


        /**
         * String view of asm row.
         * @returns {string}
         */
        public toString(): string{
            return util.format('%s %s %s', this.address, this.code.toString('hex'), this.command);
        }

        /**
         * Return boolean value that describe control
         * flow change behavior.
         * @return {boolean}
         */
        public isChangeControlFlow(): boolean {
            return this._isChangeControlFlow;
        }

        /**
         * Returns next command address in control flow.
         * If current row is not change CF return false.
         * @throws Error If bad command syntax.
         * @return {boolean|string|null}
         */
        public getControlFlowAddress(): string|boolean|null {
            if(this.isChangeControlFlow()){
                let matched = this.command.match(new RegExp('([\\da-f]+)$'));
                if(matched && matched.length > 1){
                    return matched[1];
                }
                return null;
            }
            return false;
        }


        /**
         * Returns true if this row contains conditional jump.
         * @return {boolean}
         */
        public isDoubleBraceFlow(): boolean{
            return (new RegExp('l?j[belmnopsz]+\\s+', 'i')).test(this.command) &&
                !(new RegExp('l?jmp', 'i')).test(this.command);
        }
    }

    export class RowX32 extends Row{
        /**
         * @inheritDoc
         */
        public isChangeControlFlow(): boolean {
            if(super.isChangeControlFlow() !== null && super.isChangeControlFlow()){
                return true;
            }
            let controlFlowPatterns : RegExp[] = [
                new RegExp('l?j[belmnopsz]+\\s*', 'i'),
                new RegExp('call\\s+', 'i'),
                new RegExp('ret', 'i')
            ];
            let isChangeControlFlow = false;
            controlFlowPatterns.some(e => isChangeControlFlow = e.test(this.command));
            return this._isChangeControlFlow = isChangeControlFlow;
        }

    }

    /**
     * Class that presents a set of Asm.Row.
     * This implements Iterable interface
     */
    export class RowList implements IterableIterator<Row>{

        /**
         * Pointer of current row.
         * @type {number}
         */
        private pointer = 0;

        /**
         * Build new RowList instance.
         * @param {Asm.Row[]} rows
         */
        constructor(private rows: Row[]) {}

        /**
         * @inheritDoc
         */
        public next(): IteratorResult<Row>{
            if(this.pointer < this.rows.length){
                return {
                    done: false,
                    value: this.rows[this.pointer++]
                }
            }
            return {
                done: true,
                value: null
            }
        }

        [Symbol.iterator](): IterableIterator<Row> {
            return this;
        }

        /**
         * Move pointer to row with same address.
         * @param {string} address
         */
        public toPointer(address: string): boolean| Row {
            let index = this.rows.findIndex(e => e.address === address);
            if(index >= 0){
                this.pointer = index;
                return this.rows[this.pointer];
            }
            return false;
        }

        /**
         * Return row after.
         * @param {Asm.Row} row
         * @return {Asm.Row}
         */
        public nextOf(row: Row): Row{
            let current = _.find(this.rows, row);
            return this.rows[_.indexOf(this.rows, current) + 1];
        }

        /**
         * Return row by index.
         * @param {number} index or address
         * @return {Asm.Row}
         */
        public get(index: number|string): Row{
            if(isNumber(index)){
                return this.rows.length ? this.rows[index] : undefined;
            }
            return _.find(this.rows, {address: index});
        }

        public toString(): string{
            return this.rows.join("\n");
        }

        /**
         *
         * @return {{}}
         */
        public toJSON(): {}{
            return {
                rows: this.toString()
            }
        }

        /**
         * Return count of rows.
         * @return {number}
         */
        public size(): number{
            return this.rows.length;
        }

    }
}