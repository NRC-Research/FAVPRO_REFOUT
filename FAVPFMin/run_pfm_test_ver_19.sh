#!/bin/sh

set -ex

$1 -i PFM_test_ver_19.in -ij PFM_test_ver_19.json -l ../../../../../tests/verification/outputs/load/val_1.out -o PFM_test_ver_19.out -s ../FlawFiles/PWRsurf5.dat -w ../FlawFiles/PWRweld50.dat -p ../FlawFiles/PWRplate50.dat
grep -v DATE PFM_test_ver_19.out.orig > PFM_test_ver_19.without_date.out.orig
grep -v DATE PFM_test_ver_19.out > PFM_test_ver_19.without_date.out
numdiff -r 0.05 PFM_test_ver_19.without_date.out.orig PFM_test_ver_19.without_date.out
mv INITIATE.DAT PFM_test_ver_19_INITIATE.DAT
mv FAILURE.DAT PFM_test_ver_19_FAILURE.DAT
