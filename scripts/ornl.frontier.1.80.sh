#!/bin/sh

cd /lustre/orion/world-shared/chm155/radical/radical.modules/
module load cray-python
pip install --target=./install 'radical.entk>=1.80.0,<1.90' 'radical.analytics>=1.80.0,<1.90'

