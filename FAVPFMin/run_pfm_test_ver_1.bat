%1 -i PFM_test_ver_1.in -ij PFM_test_ver_1.json -l ../../../../../tests/verification/outputs/load/ver_1.out -o PFM_test_ver_1.out
if %errorlevel% neq 0 exit /b %errorlevel%
move INITIATE.DAT PFM_test_ver_1_INITIATE.DAT
move FAILURE.DAT PFM_test_ver_1_FAILURE.DAT
