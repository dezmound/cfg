"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const cfg_1 = require("./cfg/cfg");
var CfgBuilder = cfg_1.Cfg.CfgBuilder;
const ArgsParser = require("minimist");
const Express = require("express");
const BodyParser = require("body-parser");
const GdbDumpFormatter_1 = require("./formatters/GdbDumpFormatter");
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
            const { path, entry, formatter } = req.body;
            if (path && !path.trim()) {
                throw "Bad data path is not set";
            }
            if (entry && !entry.trim()) {
                throw "Bad data entry is not set";
            }
            if (formatter === "gdb") {
                res.json(CfgBuilder.parse(path, null, new GdbDumpFormatter_1.GdbDumpFormatter()));
            }
            else {
                res.json(CfgBuilder.parse(path, entry));
            }
        }
        catch (e) {
            console.error({ e, req: req.body });
            res.status(403).json({ e, req: req.body }).send();
        }
    });
    app.listen(options.p, options.ip);
    console.log(`Listening of ${options.ip}:${options.p}`);
}
else if (args.file) {
    let graph = null;
    if (args.formatter === "gdb") {
        graph = CfgBuilder.parse(args.file, null, new GdbDumpFormatter_1.GdbDumpFormatter());
    }
    else {
        graph = CfgBuilder.parse(args.file, args.entry.toString());
    }
    console.error(graph.nodes.length);
    console.log(JSON.stringify(graph));
}
else {
    console.error('File name not set and it\'s not a server');
}
//# sourceMappingURL=index.js.map