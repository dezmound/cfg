import {AsmParser} from "../asmParser";
import * as fs from "fs";
import * as crypto from "crypto";
import {ObjDumpFormatter} from "../formatters/ObjDumpFormatter";
import {Formatter} from "../formatters/formatter";
import {Asm} from "../asm/asm";
import * as _ from "lodash";

export namespace Cfg{
    import RowList = Asm.RowList;

    /**
     * Control flow graph builder.
     */
    export class CfgBuilder {
        static parse(filename: string, entryPoint: string, formatterClass: Formatter = null): Graph {
            let graph: Graph = Graph.new();
            let buffer: Buffer = fs.readFileSync(filename);
            let formatter: Formatter = formatterClass || new ObjDumpFormatter();
            let {nodes, edges} = AsmParser.parse(buffer, formatter, entryPoint/*'804ccda'*/, 512);
            graph.nodes = nodes.map(e => Node.new(e));
            graph.edges = edges.map(e => Edge.new((Object.assign(e, {
                source: _.find(graph.nodes, {id: e.source.id}),
                target: _.find(graph.nodes, {id: e.target.id})
            }))));
            return graph;
        }
    }

    /**
     * Presents of single node in CFG.
     */
    export class Node {

        /**
         * Returns object what contains rows of CFG node.
         * @return {object}
         */
        public getMeta() : {rows: string} {
            return {
                rows : this.body.toString()
            }
        }

        constructor(public id: string = "", public label: string = "", public body: RowList){    }

        public static new(propertys: {label?: string, id: string, body: RowList}) : Node {
            return new Node(propertys.id, propertys.label, propertys.body);
        }

        toString(): string{
            return this.id;
        }

        /**
         * JSON presentation of Node contents.
         * @return {{}}
         */
        toJSON(): {}{
            return {
                id: this.id,
                label: this.id != '1' ? `Code: ${this.getMeta().rows}` : `---Entry point---: ${this.getMeta().rows}`,
                // metadata: this.getMeta(),
                size: this.id != '1' ? this.body.size() : 20,
                x: ((parseInt(this.id) - 1) % 10) * 2 + (Math.random() * 100 % 13),
                y: Math.floor((parseInt(this.id) - 1) / 10) * 5 + (Math.random() * 100 % 13),
                color: '#' + crypto.randomBytes(3).toString('hex')
            }
        }
    }

    /**
     * Single edge between to nodes in CFG.
     */
    export class Edge {
        constructor(
            public source: Node|null = null,
            public target: Node|null = null,
            public directed: boolean = true,
            public label: string = "",
            public id: string = "",
        ) {}

        public static new(parameters: { id: string, source: Cfg.Node | any, target: Cfg.Node | any, directed?: boolean, label?: string }){
            return new Edge(
                parameters.source,
                parameters.target,
                parameters.directed,
                parameters.label,
                parameters.id
            );
        }

        public toJSON(): {} {
            return {
                directed: this.directed,
                label: this.label,
                id: this.id,
                source: this.source.toString(),
                target: this.target.toString()
            }
        }
    }

    export class Graph {
        public edges: Edge[];
        public nodes: Node[];

        constructor(public label:string = "") {}

        public static new(): Graph{
            return new Graph();
        }
    }

}