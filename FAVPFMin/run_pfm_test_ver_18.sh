#!/bin/sh

set -ex

$1 -i PFM_test_ver_18.in -ij PFM_test_ver_18.json -l ../../../../../tests/verification/outputs/load/val_11.out -o PFM_test_ver_18.out -s ../FlawFiles/PWRsurf5.dat -w ../FlawFiles/PWRweld50.dat -p ../FlawFiles/PWRplate50.dat
grep -v DATE PFM_test_ver_18.out.orig > PFM_test_ver_18.without_date.out.orig
grep -v DATE PFM_test_ver_18.out > PFM_test_ver_18.without_date.out
numdiff -r 0.05 PFM_test_ver_18.without_date.out.orig PFM_test_ver_18.without_date.out
mv INITIATE.DAT PFM_test_ver_18_INITIATE.DAT
mv FAILURE.DAT PFM_test_ver_18_FAILURE.DAT
