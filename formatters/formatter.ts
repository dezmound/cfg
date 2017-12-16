import {Asm} from "../asm/asm";
import Row = Asm.Row;
import RowList = Asm.RowList;

export interface Formatter {
    /**
     * Return single row implementation.
     * @param {string} row
     * @returns {Asm.Row}
     */
    row(row: string): Row;

    /**
     * Return multiple row implementation by code.
     * @param {string|Buffer} code
     * @returns {Asm.RowList}
     */
    rows(code: string|Buffer): RowList;
}