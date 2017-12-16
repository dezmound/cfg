import {Cfg} from "./cfg/cfg";
import CfgBuilder = Cfg.CfgBuilder;

console.log(JSON.stringify(CfgBuilder.parse("out.asm")));