#!/bin/bash

ACTIVATE_DIR=${PREFIX}/etc/conda/activate.d
DEACTIVATE_DIR=${PREFIX}/etc/conda/deactivate.d
mkdir -p ${ACTIVATE_DIR}
mkdir -p ${DEACTIVATE_DIR}

cp ${RECIPE_DIR}/activate.sh ${ACTIVATE_DIR}/devsource-activate.sh
cp ${RECIPE_DIR}/deactivate.sh ${DEACTIVATE_DIR}/devsource-deactivate.sh

mkdir -p ${PREFIX}/usr
ln -s .. ${PREFIX}/usr/local