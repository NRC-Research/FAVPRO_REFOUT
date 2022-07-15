#!/bin/sh

set -ex

$1 -i PFM_test_val_8.in -ij PFM_test_val_8.json -l ../../../../../tests/verification/outputs/load/val_8.out -o PFM_test_val_8.out
grep -v DATE PFM_test_val_8.out.orig > PFM_test_val_8.without_date.out.orig
grep -v DATE PFM_test_val_8.out > PFM_test_val_8.without_date.out
numdiff -r 0.05 PFM_test_val_8.without_date.out.orig PFM_test_val_8.without_date.out
mv INITIATE.DAT PFM_test_val_8_INITIATE.DAT
mv FAILURE.DAT PFM_test_val_8_FAILURE.DAT
