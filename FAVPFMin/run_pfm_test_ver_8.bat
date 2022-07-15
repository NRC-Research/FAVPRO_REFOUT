%1 -i PFM_test_ver_8.in -ij PFM_test_ver_8.json -l ../../../../../tests/verification/outputs/load/ver_1.out -o PFM_test_ver_8.out -a ../FlawFiles/AFF54.dat
if %errorlevel% neq 0 exit /b %errorlevel%
move INITIATE.DAT PFM_test_ver_8_INITIATE.DAT
move FAILURE.DAT PFM_test_ver_8_FAILURE.DAT
