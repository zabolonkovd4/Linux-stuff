#!/bin/bash

FILE=~/local/nifti_cert/nifti2019_cacert.pem
HOST=85.143.6.98
USERNAME=diz

sudo charon-cmd --cert $FILE --host $HOST --identity $USERNAME

