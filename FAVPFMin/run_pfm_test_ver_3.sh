#!/bin/sh

set -ex

$1 -i PFM_test_ver_3.in -ij PFM_test_ver_3.json -l ../../../../../tests/verification/outputs/load/ver_3.out -o PFM_test_ver_3.out
grep -v DATE PFM_test_ver_3.out.orig > PFM_test_ver_3.without_date.out.orig
grep -v DATE PFM_test_ver_3.out > PFM_test_ver_3.without_date.out
numdiff -r 0.05 PFM_test_ver_3.without_date.out.orig PFM_test_ver_3.without_date.out
mv INITIATE.DAT PFM_test_ver_3_INITIATE.DAT
mv FAILURE.DAT PFM_test_ver_3_FAILURE.DAT
