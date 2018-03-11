"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const asmParser_1 = require("../asmParser");
const fs = require("fs");
const crypto = require("crypto");
const ObjDumpFormatter_1 = require("../formatters/ObjDumpFormatter");
const _ = require("lodash");
var Cfg;
(function (Cfg) {
    /**
     * Control flow graph builder.
     */
    class CfgBuilder {
        static parse(filename) {
            let graph = Graph.new();
            let buffer = fs.readFileSync(filename);
            let formatter = new ObjDumpFormatter_1.ObjDumpFormatter();
            let { nodes, edges } = asmParser_1.AsmParser.parse(buffer, formatter, '804ccda', 250);
            graph.nodes = nodes.map(e => Node.new(e));
            graph.edges = edges.map(e => Edge.new((Object.assign(e, {
                source: _.find(graph.nodes, { id: e.source.id }),
                target: _.find(graph.nodes, { id: e.target.id })
            }))));
            console.log('Nodes: ', graph.nodes.length);
            console.log('Edges: ', graph.edges.length);
            return graph;
        }
    }
    Cfg.CfgBuilder = CfgBuilder;
    /**
     * Presents of single node in CFG.
     */
    class Node {
        constructor(id = "", label = "", body) {
            this.id = id;
            this.label = label;
            this.body = body;
        }
        /**
         * Returns object what contains rows of CFG node.
         * @return {object}
         */
        getMeta() {
            return {
                rows: this.body.toString()
            };
        }
        static new(propertys) {
            return new Node(propertys.id, propertys.label, propertys.body);
        }
        toString() {
            return this.id;
        }
        /**
         * JSON presentation of Node contents.
         * @return {{}}
         */
        toJSON() {
            return {
                id: this.id,
                label: this.id != '1' ? `Code: ${this.getMeta().rows}` : `---Entry point---: ${this.getMeta().rows}`,
                // metadata: this.getMeta(),
                size: this.id != '1' ? this.body.size() : 20,
                x: ((parseInt(this.id) - 1) % 10) * 2 + (Math.random() * 100 % 5),
                y: Math.floor((parseInt(this.id) - 1) / 10) * 5 + (Math.random() * 100 % 5),
                color: '#' + crypto.randomBytes(3).toString('hex')
            };
        }
    }
    Cfg.Node = Node;
    /**
     * Single edge between to nodes in CFG.
     */
    class Edge {
        constructor(source = null, target = null, directed = true, label = "", id = "") {
            this.source = source;
            this.target = target;
            this.directed = directed;
            this.label = label;
            this.id = id;
        }
        static new(parameters) {
            return new Edge(parameters.source, parameters.target, parameters.directed, parameters.label, parameters.id);
        }
        toJSON() {
            return {
                directed: this.directed,
                label: this.label,
                id: this.id,
                source: this.source.toString(),
                target: this.target.toString()
            };
        }
    }
    Cfg.Edge = Edge;
    class Graph {
        constructor(label = "") {
            this.label = label;
        }
        static new() {
            return new Graph();
        }
    }
    Cfg.Graph = Graph;
})(Cfg = exports.Cfg || (exports.Cfg = {}));
//# sourceMappingURL=cfg.js.map