#!/bin/sh

set -ex

$1 -i PFM_test_ver_16.in -ij PFM_test_ver_16.json -l ../../../../../tests/verification/outputs/load/ver_7.out -o PFM_test_ver_16.out -s ../FlawFiles/Szero.dat -w ../FlawFiles/Wzero.dat -p ../FlawFiles/PWRplate50.dat
grep -v DATE PFM_test_ver_16.out.orig > PFM_test_ver_16.without_date.out.orig
grep -v DATE PFM_test_ver_16.out > PFM_test_ver_16.without_date.out
numdiff -r 0.05 PFM_test_ver_16.without_date.out.orig PFM_test_ver_16.without_date.out
mv INITIATE.DAT PFM_test_ver_16_INITIATE.DAT
mv FAILURE.DAT PFM_test_ver_16_FAILURE.DAT
