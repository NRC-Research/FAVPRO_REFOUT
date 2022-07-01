#!/bin/sh

set -ex

$1 -i PFM_test_ver_21.in -l ../../../../../tests/verification/outputs/load/ver_5.out -o PFM_test_ver_21.out
grep -v DATE PFM_test_ver_21.out.orig > PFM_test_ver_21.without_date.out.orig
grep -v DATE PFM_test_ver_21.out > PFM_test_ver_21.without_date.out
numdiff -r 0.05 PFM_test_ver_21.without_date.out.orig PFM_test_ver_21.without_date.out
mv INITIATE.DAT PFM_test_ver_21_INITIATE.DAT
mv FAILURE.DAT PFM_test_ver_21_FAILURE.DAT
