#!/bin/sh

set -ex

$1 -i PFM_test_val_9.in -ij PFM_test_val_9.json -l ../../../../../tests/verification/outputs/load/val_9.out -o PFM_test_val_9.out
grep -v DATE PFM_test_val_9.out.orig > PFM_test_val_9.without_date.out.orig
grep -v DATE PFM_test_val_9.out > PFM_test_val_9.without_date.out
numdiff -r 0.05 PFM_test_val_9.without_date.out.orig PFM_test_val_9.without_date.out
mv INITIATE.DAT PFM_test_val_9_INITIATE.DAT
mv FAILURE.DAT PFM_test_val_9_FAILURE.DAT
