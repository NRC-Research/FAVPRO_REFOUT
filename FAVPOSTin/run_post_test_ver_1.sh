#!/bin/sh

set -ex

$1 -i POST_test_ver_1.in -o POST_test_ver_1.out -cpi POST_test_ver_1_INITIATE.DAT -cpf POST_test_ver_1_FAILURE.DAT -inc 5000
grep -v DATE POST_test_ver_@case_num@.out.orig | grep -v "echo of FAV" > POST_test_ver_@case_num@.without_date.out.orig
grep -v DATE POST_test_ver_@case_num@.out | grep -v "echo of FAV" > POST_test_ver_@case_num@.without_date.out
numdiff -r 0.05 POST_test_ver_@case_num@.without_date.out.orig POST_test_ver_@case_num@.without_date.out
