#!/bin/sh

set -ex

$1 -i PFM_test_val_5.in -ij PFM_test_val_5.json -l ../../../../../tests/verification/outputs/load/val_5.out -o PFM_test_val_5.out
grep -v DATE PFM_test_val_5.out.orig > PFM_test_val_5.without_date.out.orig
grep -v DATE PFM_test_val_5.out > PFM_test_val_5.without_date.out
numdiff -r 0.05 PFM_test_val_5.without_date.out.orig PFM_test_val_5.without_date.out
mv INITIATE.DAT PFM_test_val_5_INITIATE.DAT
mv FAILURE.DAT PFM_test_val_5_FAILURE.DAT
