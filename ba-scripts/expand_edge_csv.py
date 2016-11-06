#!/usr/bin/python3
"""
This little python script takes the CSV edge list, exported from giphi, and
replaces the node IDs with their name/label
"""

import csv

input_file = "../tex/resources/neo4j-renders/large-test-meta-graph-edges.csv"
node_file = "../tex/resources/neo4j-renders/large-test-meta-graph-nodes.csv"
output_file = "../tex/resources/neo4j-renders/large-test-meta-graph-edges-expanded.csv"

# open file handlers
inpf = open(input_file, 'r', newline='')
outf = open(output_file, 'w', newline='')

# create csv reader/writer
inp_csv = csv.DictReader(inpf, delimiter=',', quoting=csv.QUOTE_NONE)
out_csv = csv.DictWriter(outf, delimiter=',', quoting=csv.QUOTE_NONE, fieldnames=inp_csv.fieldnames)
out_csv.writeheader()

# generate translation dict for node IDs
nodeid_dict = {}
with open(node_file, 'r', newline='') as nodef:
    node_csv = csv.DictReader(nodef, delimiter=',', quoting=csv.QUOTE_NONE)
    for row in node_csv:
        nodeid_dict[row['id']] = row['label']

# iterating over the rows
for row in inp_csv:
    row['Source'] = nodeid_dict[row['Source']]
    row['Target'] = nodeid_dict[row['Target']]
    out_csv.writerow(row)

inpf.close()
outf.close()
