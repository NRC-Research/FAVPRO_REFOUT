%1 -i PFM_test_ver_2.in -ij PFM_test_ver_2.json -l ../../../../../tests/verification/outputs/load/ver_2.out -o PFM_test_ver_2.out
if %errorlevel% neq 0 exit /b %errorlevel%
move INITIATE.DAT PFM_test_ver_2_INITIATE.DAT
move FAILURE.DAT PFM_test_ver_2_FAILURE.DAT
