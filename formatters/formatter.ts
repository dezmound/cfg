import {Asm} from "../asm/asm";
import Row = Asm.Row;
import RowList = Asm.RowList;
import {GdbRow} from "./GdbDumpFormatter";

export interface Formatter {
    /**
     * Return single row implementation.
     * @param {string|GdbRow} row
     * @returns {Asm.Row}
     */
    row(row: string|GdbRow): Row;

    /**
     * Return multiple row implementation by code.
     * @param {string|Buffer} code
     * @returns {Asm.RowList}
     */
    rows(code: string|Buffer): RowList;
}