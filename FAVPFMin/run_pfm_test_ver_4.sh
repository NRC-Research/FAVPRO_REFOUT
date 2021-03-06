#!/bin/sh

set -ex

$1 -i PFM_test_ver_4.in -ij PFM_test_ver_4.json -l ../../../../../tests/verification/outputs/load/ver_3.out -o PFM_test_ver_4.out
grep -v DATE PFM_test_ver_4.out.orig > PFM_test_ver_4.without_date.out.orig
grep -v DATE PFM_test_ver_4.out > PFM_test_ver_4.without_date.out
numdiff -r 0.05 PFM_test_ver_4.without_date.out.orig PFM_test_ver_4.without_date.out
mv INITIATE.DAT PFM_test_ver_4_INITIATE.DAT
mv FAILURE.DAT PFM_test_ver_4_FAILURE.DAT
