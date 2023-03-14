#!/bin/bash

DIR=${1:-"./benchmark_runs/tabular/test"}  # from root of project

if [ ! -d $DIR ]; then
  mkdir -p $DIR
fi

# create virtual env
python3.8 -m venv .venv
source $DIR/.venv/bin/activate

# install latest AMLB
git clone --depth 1 --branch stable https://github.com/openml/automlbenchmark.git $DIR/automlbenchmark
pip install -r $DIR/automlbenchmark/requirements.txt
