import {Cfg} from "./cfg/cfg";
import CfgBuilder = Cfg.CfgBuilder;
import * as ArgsParser from 'minimist';
import * as Express from 'express';
import * as BodyParser from 'body-parser';
import {GdbDumpFormatter} from "./formatters/GdbDumpFormatter";

let args = ArgsParser(process.argv.slice(2));

if(!args.entry && !args.server) {
    console.error('entry point is not set');
    process.exit(-1);
}

if(args.server){
    let app = Express();
    let options = Object.assign({
        p: 3027,
        ip: 'localhost'
    }, args);
    app.use(BodyParser.json());
    app.put('/cfg', (req, res) => {
        try {
            const {path, entry, formatter} = req.body;
            if(path && !path.trim()) {
                throw "Bad data path is not set";
            }
            if(entry && !entry.trim()) {
                throw "Bad data entry is not set";
            }
            if(formatter === "gdb") {
                res.json(CfgBuilder.parse(path, null, new GdbDumpFormatter()));
            } else {
                res.json(CfgBuilder.parse(path, entry));
            }
        } catch (e) {
            console.error(e);
            res.status(403).json(e).send();
        }
    });
    app.listen(options.p, options.ip);
    console.log(`Listening of ${options.ip}:${options.p}`);
} else if(args.file) {
    let graph = null;
    if(args.formatter === "gdb") {
        graph = CfgBuilder.parse(args.file, null, new GdbDumpFormatter());
    } else {
        graph = CfgBuilder.parse(args.file, args.entry.toString());
    }
    console.error(graph.nodes.length);
    console.log(JSON.stringify(graph));
} else {
    console.error('File name not set and it\'s not a server');
}