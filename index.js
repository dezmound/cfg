"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const cfg_1 = require("./cfg/cfg");
var CfgBuilder = cfg_1.Cfg.CfgBuilder;
const ArgsParser = require("minimist");
const Express = require("express");
const BodyParser = require("body-parser");
let args = ArgsParser(process.argv.slice(2));
if (!args.entry && !args.server) {
    console.error('entry point is not set');
    process.exit(-1);
}
if (args.server) {
    let app = Express();
    let options = Object.assign({
        p: 3027,
        ip: 'localhost'
    }, args);
    app.use(BodyParser.json());
    app.put('/cfg', (req, res) => {
        try {
            if (!req.body.path.trim()) {
                throw "Bad data path is not set";
            }
            if (!req.body.entry.trim()) {
                throw "Bad data entry is not set";
            }
            res.json(CfgBuilder.parse(req.body.path, req.body.entry));
        }
        catch (e) {
            res.status(403).json(e, req.body).send();
        }
    });
    app.listen(options.p, options.ip);
    console.log(`Listening of ${options.ip}:${options.p}`);
}
else if (args.file) {
    let graph = CfgBuilder.parse(args.file, args.entry.toString());
    console.error(graph.nodes.length);
    console.log(JSON.stringify(graph));
}
else {
    console.error('File name not set and it\'s not a server');
}
//# sourceMappingURL=index.js.map