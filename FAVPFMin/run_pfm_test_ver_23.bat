%1 -i PFM_test_ver_23.in -l ../../../../../tests/verification/outputs/load/val_7.out -o PFM_test_ver_23.out -a ../FlawFiles/AFF54.dat
if %errorlevel% neq 0 exit /b %errorlevel%
move INITIATE.DAT PFM_test_ver_23_INITIATE.DAT
move FAILURE.DAT PFM_test_ver_23_FAILURE.DAT
