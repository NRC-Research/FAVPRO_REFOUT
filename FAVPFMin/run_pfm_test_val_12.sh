#!/bin/sh

set -ex

$1 -i PFM_test_val_12.in -ij PFM_test_val_12.json -l ../../../../../tests/verification/outputs/load/val_11.out -o PFM_test_val_12.out -s ../FlawFiles/PWRsurf5.dat -w ../FlawFiles/Wzero.dat -p ../FlawFiles/Pzero.dat
grep -v DATE PFM_test_val_12.out.orig > PFM_test_val_12.without_date.out.orig
grep -v DATE PFM_test_val_12.out > PFM_test_val_12.without_date.out
numdiff -r 0.05 PFM_test_val_12.without_date.out.orig PFM_test_val_12.without_date.out
mv INITIATE.DAT PFM_test_val_12_INITIATE.DAT
mv FAILURE.DAT PFM_test_val_12_FAILURE.DAT
