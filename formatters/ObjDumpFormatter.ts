import {Formatter} from "./formatter";
import {Asm} from "../asm/asm";
import RowList = Asm.RowList;
import RowX32 = Asm.RowX32;


/**
 * Rows formatter for objDump file asm code.
 */
export class ObjDumpFormatter implements Formatter{
    /**
     * @inheritDoc
     */
    row(row: string): Asm.Row {
        let matched = row.trim().match(new RegExp('([\\da-f]+):\\s+([\\da-f ]+)\\s+([\\w %():,$]+)', "i"));
        if(matched && matched.length > 3){
            return new RowX32(
                Buffer.from(matched[2].trim().split(' ').map(e => parseInt(e, 16))),
                matched[3].trim(),
                matched[1].trim()
            );
        }
        return undefined;
    }

    /**
     * @inheritDoc
     */
    rows(code: string|Buffer): Asm.RowList {
        if(code instanceof Buffer){
            code = code.toString();
        }
        return new RowList(
            code.split("\n").map(e => this.row(e)).filter(e => e !== undefined)
        );
    }

}