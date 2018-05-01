import {Cfg} from "./cfg/cfg";
import CfgBuilder = Cfg.CfgBuilder;
import * as ArgsParser from 'minimist';
import * as Express from 'express';
import * as BodyParser from 'body-parser';

let args = ArgsParser(process.argv.slice(2));

if(!args.entry) {
    console.error('entry point is not set');
    process.exit(-1);
}

if(args.server){
    let app = Express();
    let options = Object.assign({
        p: 3000,
        ip: 'localhost'
    }, args);
    app.use(BodyParser.json());
    app.put('/cfg', (req, res) => {
        try {
            if(!req.body.path.trim()) {
                throw "Bad data path is not set";
            }
            res.json(CfgBuilder.parse(req.body.path, args.entry));
        } catch (e) {
            res.status(403).json(e, req.body).send();
        }
    });
    app.listen(options.p, options.ip);
    console.log(`Listening of ${options.ip}:${options.p}`);
} else if(args.file) {
    let graph = CfgBuilder.parse(args.file, args.entry.toString());
    console.error(graph.nodes.length);
    console.log(JSON.stringify(graph));
} else {
    console.error('File name not set and it\'s not a server');
}