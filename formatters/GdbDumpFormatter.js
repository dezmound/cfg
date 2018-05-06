"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const asm_1 = require("../asm/asm");
var RowList = asm_1.Asm.RowList;
var RowX32 = asm_1.Asm.RowX32;
/**
 * Rows formatter for objDump file asm code.
 */
class GdbDumpFormatter {
    /**
     * @inheritDoc
     */
    row(row) {
        return new RowX32(new Buffer(row.inst), row.inst.split(' ')[0], row.address);
    }
    /**
     * @inheritDoc
     */
    rows(code) {
        if (code instanceof Buffer) {
            code = code.toString();
        }
        let rows = JSON.parse(code);
        return new RowList(rows.status.asm_insns.map(e => this.row(e)).filter(e => e !== undefined));
    }
}
exports.GdbDumpFormatter = GdbDumpFormatter;
//# sourceMappingURL=GdbDumpFormatter.js.map