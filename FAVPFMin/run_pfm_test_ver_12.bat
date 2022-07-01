%1 -i PFM_test_ver_12.in -l ../../../../../tests/verification/outputs/load/ver_1.out -o PFM_test_ver_12.out -s ../FlawFiles/PWRsurf5.dat -w ../FlawFiles/PWRweld50.dat -p ../FlawFiles/PWRplate50.dat
if %errorlevel% neq 0 exit /b %errorlevel%
move INITIATE.DAT PFM_test_ver_12_INITIATE.DAT
move FAILURE.DAT PFM_test_ver_12_FAILURE.DAT
