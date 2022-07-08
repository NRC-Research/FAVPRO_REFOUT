#!/bin/sh

set -ex

$1 -i POST_test_ver_2.in -o POST_test_ver_2.out -cpi ../FAVPFMin/PFM_test_ver_13_INITIATE.DAT -cpf ../FAVPFMin/PFM_test_ver_13_FAILURE.DAT -inc 10
grep -v DATE POST_test_ver_@case_num@.out.orig | grep -v "echo of FAV" > POST_test_ver_@case_num@.without_date.out.orig
grep -v DATE POST_test_ver_@case_num@.out | grep -v "echo of FAV" > POST_test_ver_@case_num@.without_date.out
numdiff -r 0.05 POST_test_ver_@case_num@.without_date.out.orig POST_test_ver_@case_num@.without_date.out
