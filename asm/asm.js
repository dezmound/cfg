"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const util = require("util");
const _ = require("lodash");
const util_1 = require("util");
var Asm;
(function (Asm) {
    /**
     * Class that presents single row of asm language.
     */
    class Row {
        /**
         * Create of new Row instance.
         * @param {Buffer} code
         * @param {string} command
         * @param {string} address
         */
        constructor(code, command, address) {
            /**
             * Needs to be initialized on method of child class
             * to use cache.
             * @type {boolean|null}
             * @private
             */
            this._isChangeControlFlow = null;
            this.code = code;
            this.command = command;
            this.address = address;
        }
        /**
         * String view of asm row.
         * @returns {string}
         */
        toString() {
            return util.format('%s %s %s', this.address, this.code.toString('hex'), this.command);
        }
        /**
         * Return boolean value that describe control
         * flow change behavior.
         * @return {boolean}
         */
        isChangeControlFlow() {
            return this._isChangeControlFlow;
        }
        /**
         * Returns next command address in control flow.
         * If current row is not change CF return false.
         * @throws Error If bad command syntax.
         * @return {boolean|string|null}
         */
        getControlFlowAddress() {
            if (this.isChangeControlFlow()) {
                let matched = this.command.match(new RegExp('([\\da-f]+)$'));
                if (matched && matched.length > 1) {
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
        isDoubleBraceFlow() {
            return (new RegExp('l?j[belmnopsz]+\\s+', 'i')).test(this.command) &&
                !(new RegExp('l?jmp', 'i')).test(this.command);
        }
    }
    Asm.Row = Row;
    class RowX32 extends Row {
        /**
         * @inheritDoc
         */
        isChangeControlFlow() {
            if (super.isChangeControlFlow() !== null && super.isChangeControlFlow()) {
                return true;
            }
            let controlFlowPatterns = [
                new RegExp('l?j[belmnopsz]+\\s*', 'i'),
                new RegExp('call\\s+', 'i'),
                new RegExp('ret', 'i')
            ];
            let isChangeControlFlow = false;
            controlFlowPatterns.some(e => isChangeControlFlow = e.test(this.command));
            return this._isChangeControlFlow = isChangeControlFlow;
        }
    }
    Asm.RowX32 = RowX32;
    /**
     * Class that presents a set of Asm.Row.
     * This implements Iterable interface
     */
    class RowList {
        /**
         * Build new RowList instance.
         * @param {Asm.Row[]} rows
         */
        constructor(rows) {
            this.rows = rows;
            /**
             * Pointer of current row.
             * @type {number}
             */
            this.pointer = 0;
        }
        /**
         * @inheritDoc
         */
        next() {
            if (this.pointer < this.rows.length) {
                return {
                    done: false,
                    value: this.rows[this.pointer++]
                };
            }
            return {
                done: true,
                value: null
            };
        }
        [Symbol.iterator]() {
            return this;
        }
        /**
         * Move pointer to row with same address.
         * @param {string} address
         */
        toPointer(address) {
            let index = this.rows.findIndex(e => e.address === address);
            if (index >= 0) {
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
        nextOf(row) {
            let current = _.find(this.rows, row);
            return this.rows[_.indexOf(this.rows, current) + 1];
        }
        /**
         * Return row by index.
         * @param {number} index or address
         * @return {Asm.Row}
         */
        get(index) {
            if (util_1.isNumber(index)) {
                return this.rows.length ? this.rows[index] : undefined;
            }
            return _.find(this.rows, { address: index });
        }
        toString() {
            return this.rows.join("\n");
        }
        /**
         *
         * @return {{}}
         */
        toJSON() {
            return {
                rows: this.toString()
            };
        }
        /**
         * Return count of rows.
         * @return {number}
         */
        size() {
            return this.rows.length;
        }
    }
    Asm.RowList = RowList;
})(Asm = exports.Asm || (exports.Asm = {}));
//# sourceMappingURL=asm.js.map