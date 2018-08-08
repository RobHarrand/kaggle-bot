#!/usr/bin/env bash
# File: kaggle-kernel-maker.sh

echo "Enter a CSV-based binary classification dataset, e.g. uciml/pima-indians-diabetes-database :"
read response

kaggle kernel init

HOUR=$(date +%T)


sed -i 's/INSERT_KERNEL_TYPE_HERE/notebook/' kernel-metadata.json
sed -i "s|INSERT_KERNEL_SLUG_HERE|bot_generated_$HOUR|" kernel-metadata.json
sed -i 's/INSERT_CODE_FILE_PATH_HERE/bot.ipynb/' kernel-metadata.json
sed -i 's/INSERT_LANGUAGE_HERE/r/' kernel-metadata.json
sed -i "s|INSERT_TITLE_HERE|bot_generated_$HOUR|" kernel-metadata.json
sed -i 's|"dataset_sources": \[\]|"dataset_sources": ["'$response'"]|' kernel-metadata.json

kaggle kernel push
