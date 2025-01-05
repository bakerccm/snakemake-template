# run these commands from repo root to create the DAG, rulegraph and filegraph saved here

# the default rule 'all' should be sufficient to re-run the code in its entirety:
snakemake -c 1 -n -F all

# generate DAG etc as png:
snakemake -c 1 -n -F all --dag | dot -Tpng >docs/snakemake_dag.png
snakemake -c 1 -n -F all --rulegraph | dot -Tpng >docs/snakemake_rulegraph.png
snakemake -c 1 -n -F all --filegraph | dot -Tpng >docs/snakemake_filegraph.png

# generate DAG etc as svg:
snakemake -c 1 -n -F all --dag | dot -Tsvg >docs/snakemake_dag.svg
snakemake -c 1 -n -F all --rulegraph | dot -Tsvg >docs/snakemake_rulegraph.svg
snakemake -c 1 -n -F all --filegraph | dot -Tsvg >docs/snakemake_filegraph.svg

