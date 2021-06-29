#!/bin/sh -l

exit_code=0

pytest --cov-report=xml --cov=art --cov-append -q -vv tests/estimators/object_detection/test_tensorflow_faster_rcnn.py --framework=tensorflow --skip_travis=True --durations=0
if [[ $? -ne 0 ]]; then exit_code=1; echo "Failed estimators/object_detection/test_tensorflow_faster_rcnn.py tests"; fi

exit ${exit_code}