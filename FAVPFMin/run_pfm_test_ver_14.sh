#!/bin/sh

set -ex

$1 -i PFM_test_ver_14.in -l ../../../../../tests/verification/outputs/load/ver_8.out -o PFM_test_ver_14.out -s ../FlawFiles/BWRsurf5.dat -w ../FlawFiles/BWRweld50.dat -p ../FlawFiles/BWRplate50.dat
grep -v DATE PFM_test_ver_14.out.orig > PFM_test_ver_14.without_date.out.orig
grep -v DATE PFM_test_ver_14.out > PFM_test_ver_14.without_date.out
numdiff -r 0.05 PFM_test_ver_14.without_date.out.orig PFM_test_ver_14.without_date.out
mv INITIATE.DAT PFM_test_ver_14_INITIATE.DAT
mv FAILURE.DAT PFM_test_ver_14_FAILURE.DAT
