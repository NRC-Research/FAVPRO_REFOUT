%1 -i PFM_test_ver_20.in -ij PFM_test_ver_20.json -l ../../../../../tests/verification/outputs/load/ver_5.out -o PFM_test_ver_20.out
if %errorlevel% neq 0 exit /b %errorlevel%
move INITIATE.DAT PFM_test_ver_20_INITIATE.DAT
move FAILURE.DAT PFM_test_ver_20_FAILURE.DAT
