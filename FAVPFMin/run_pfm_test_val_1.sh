#!/bin/sh

set -ex

$1 -i PFM_test_val_1.in -ij PFM_test_val_1.json -l ../../../../../tests/verification/outputs/load/val_1.out -o PFM_test_val_1.out
grep -v DATE PFM_test_val_1.out.orig > PFM_test_val_1.without_date.out.orig
grep -v DATE PFM_test_val_1.out > PFM_test_val_1.without_date.out
numdiff -r 0.05 PFM_test_val_1.without_date.out.orig PFM_test_val_1.without_date.out
mv INITIATE.DAT PFM_test_val_1_INITIATE.DAT
mv FAILURE.DAT PFM_test_val_1_FAILURE.DAT
