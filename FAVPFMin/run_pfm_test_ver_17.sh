#!/bin/sh

set -ex

$1 -i PFM_test_ver_17.in -ij PFM_test_ver_17.json -l ../../../../../tests/verification/outputs/load/ver_3.out -o PFM_test_ver_17.out -s ../FlawFiles/PWRsurf5.dat -w ../FlawFiles/PWRweld50.dat -p ../FlawFiles/PWRplate50.dat
grep -v DATE PFM_test_ver_17.out.orig > PFM_test_ver_17.without_date.out.orig
grep -v DATE PFM_test_ver_17.out > PFM_test_ver_17.without_date.out
numdiff -r 0.05 PFM_test_ver_17.without_date.out.orig PFM_test_ver_17.without_date.out
mv INITIATE.DAT PFM_test_ver_17_INITIATE.DAT
mv FAILURE.DAT PFM_test_ver_17_FAILURE.DAT
