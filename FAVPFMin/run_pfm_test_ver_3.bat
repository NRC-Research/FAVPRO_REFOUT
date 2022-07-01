%1 -i PFM_test_ver_3.in -l ../../../../../tests/verification/outputs/load/ver_3.out -o PFM_test_ver_3.out
if %errorlevel% neq 0 exit /b %errorlevel%
move INITIATE.DAT PFM_test_ver_3_INITIATE.DAT
move FAILURE.DAT PFM_test_ver_3_FAILURE.DAT
