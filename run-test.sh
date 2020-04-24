#!/bin/bash
pip install behave
output_directory="TEST-JUNIT-REPORTS-"$(date +%Y%m%d-%H%M)
echo "$(pwd)"
python setup.py install
python setup.py develop
cd tests
cd features
echo "$(pwd)"
echo "*****************************************************"
echo "*******************STARTING TEST*********************"
echo "*****************************************************"
tags=$tags
if [[ -n "$tags" ]]; then
echo "No tags specified.....All tests will be executed..."
behave --format "json.pretty" --tags="$tags" --expand --verbose --junit --junit-directory="${output_directory}"
else
echo "tags $tags specified..Only these will be executed..."
behave --format "json.pretty" --expand --verbose --junit --junit-directory="${output_directory}"
fi
