"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const asm_1 = require("../asm/asm");
var RowList = asm_1.Asm.RowList;
var RowX32 = asm_1.Asm.RowX32;
/**
 * Rows formatter for objDump file asm code.
 */
class ObjDumpFormatter {
    /**
     * @inheritDoc
     */
    row(row) {
        let matched = row.trim().match(new RegExp('([\\da-f]+):\\s+([\\da-f ]+)\\s+([\\w %():,$]+)', "i"));
        if (matched && matched.length > 3) {
            return new RowX32(Buffer.from(matched[2].trim().split(' ').map(e => parseInt(e, 16))), matched[3].trim(), matched[1].trim());
        }
        return undefined;
    }
    /**
     * @inheritDoc
     */
    rows(code) {
        if (code instanceof Buffer) {
            code = code.toString();
        }
        return new RowList(code.split("\n").map(e => this.row(e)).filter(e => e !== undefined));
    }
}
exports.ObjDumpFormatter = ObjDumpFormatter;
//# sourceMappingURL=ObjDumpFormatter.js.map