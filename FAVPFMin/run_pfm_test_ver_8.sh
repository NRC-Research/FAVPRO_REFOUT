#!/bin/sh

set -ex

$1 -i PFM_test_ver_8.in -l ../../../../../tests/verification/outputs/load/ver_1.out -o PFM_test_ver_8.out -a ../FlawFiles/AFF54.dat
grep -v DATE PFM_test_ver_8.out.orig > PFM_test_ver_8.without_date.out.orig
grep -v DATE PFM_test_ver_8.out > PFM_test_ver_8.without_date.out
numdiff -r 0.05 PFM_test_ver_8.without_date.out.orig PFM_test_ver_8.without_date.out
mv INITIATE.DAT PFM_test_ver_8_INITIATE.DAT
mv FAILURE.DAT PFM_test_ver_8_FAILURE.DAT
