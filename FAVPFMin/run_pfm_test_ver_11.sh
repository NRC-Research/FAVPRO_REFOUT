#!/bin/sh

set -ex

$1 -i PFM_test_ver_11.in -ij PFM_test_ver_11.json -l ../../../../../tests/verification/outputs/load/val_1.out -o PFM_test_ver_11.out -s ../FlawFiles/PWRsurf5.dat -w ../FlawFiles/PWRweld50.dat -p ../FlawFiles/PWRplate50.dat
grep -v DATE PFM_test_ver_11.out.orig > PFM_test_ver_11.without_date.out.orig
grep -v DATE PFM_test_ver_11.out > PFM_test_ver_11.without_date.out
numdiff -r 0.05 PFM_test_ver_11.without_date.out.orig PFM_test_ver_11.without_date.out
mv INITIATE.DAT PFM_test_ver_11_INITIATE.DAT
mv FAILURE.DAT PFM_test_ver_11_FAILURE.DAT
