#!/bin/sh

set -ex

$1 -i PFM_test_val_7.in -l ../../../../../tests/verification/outputs/load/val_7.out -o PFM_test_val_7.out
grep -v DATE PFM_test_val_7.out.orig > PFM_test_val_7.without_date.out.orig
grep -v DATE PFM_test_val_7.out > PFM_test_val_7.without_date.out
numdiff -r 0.05 PFM_test_val_7.without_date.out.orig PFM_test_val_7.without_date.out
mv INITIATE.DAT PFM_test_val_7_INITIATE.DAT
mv FAILURE.DAT PFM_test_val_7_FAILURE.DAT
