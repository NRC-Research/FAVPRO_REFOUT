#!/bin/sh

set -ex

$1 -i PFM_test_val_11.in -l ../../../../../tests/verification/outputs/load/val_11.out -o PFM_test_val_11.out -s ../FlawFiles/PWRsurf5.dat -w ../FlawFiles/Wzero.dat -p ../FlawFiles/Pzero.dat
grep -v DATE PFM_test_val_11.out.orig > PFM_test_val_11.without_date.out.orig
grep -v DATE PFM_test_val_11.out > PFM_test_val_11.without_date.out
numdiff -r 0.05 PFM_test_val_11.without_date.out.orig PFM_test_val_11.without_date.out
mv INITIATE.DAT PFM_test_val_11_INITIATE.DAT
mv FAILURE.DAT PFM_test_val_11_FAILURE.DAT
