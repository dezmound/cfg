import {Formatter} from "./formatter";
import {Asm} from "../asm/asm";
import RowList = Asm.RowList;
import RowX32 = Asm.RowX32;

type GdbRow = {
    "address":string,
    "func-name":string,
    offset:string,
    opcodes:string,
    inst: string
};

type GdbData = {
    "state":string,
    "status":{
        "asm_insns": GdbRow[]
    }
};

/**
 * Rows formatter for objDump file asm code.
 */
export class GdbDumpFormatter implements Formatter {
    /**
     * @inheritDoc
     */
    row(row: GdbRow): Asm.Row {
        return new RowX32(
            new Buffer(row.inst),
            row.inst.split(' ')[0],
            row.address
        );
    }

    /**
     * @inheritDoc
     */
    rows(code: string|Buffer): Asm.RowList {
        if(code instanceof Buffer){
            code = code.toString();
        }
        let rows: GdbData = JSON.parse(code);
        return new RowList(
            rows.status.asm_insns.map(e => this.row(e)).filter(e => e !== undefined)
        );
    }

}

export {GdbRow, GdbData};