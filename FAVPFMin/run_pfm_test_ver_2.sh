#!/bin/sh

set -ex

$1 -i PFM_test_ver_2.in -l ../../../../../tests/verification/outputs/load/ver_2.out -o PFM_test_ver_2.out
grep -v DATE PFM_test_ver_2.out.orig > PFM_test_ver_2.without_date.out.orig
grep -v DATE PFM_test_ver_2.out > PFM_test_ver_2.without_date.out
numdiff -r 0.05 PFM_test_ver_2.without_date.out.orig PFM_test_ver_2.without_date.out
mv INITIATE.DAT PFM_test_ver_2_INITIATE.DAT
mv FAILURE.DAT PFM_test_ver_2_FAILURE.DAT
