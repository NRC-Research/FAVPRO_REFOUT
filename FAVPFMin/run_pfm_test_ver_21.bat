%1 -i PFM_test_ver_21.in -l ../../../../../tests/verification/outputs/load/ver_5.out -o PFM_test_ver_21.out
if %errorlevel% neq 0 exit /b %errorlevel%
move INITIATE.DAT PFM_test_ver_21_INITIATE.DAT
move FAILURE.DAT PFM_test_ver_21_FAILURE.DAT
