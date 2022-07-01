%1 -i PFM_test_ver_4.in -l ../../../../../tests/verification/outputs/load/ver_3.out -o PFM_test_ver_4.out
if %errorlevel% neq 0 exit /b %errorlevel%
move INITIATE.DAT PFM_test_ver_4_INITIATE.DAT
move FAILURE.DAT PFM_test_ver_4_FAILURE.DAT
