%1 -i PFM_test_ver_16.in -l ../../../../../tests/verification/outputs/load/ver_7.out -o PFM_test_ver_16.out -s ../FlawFiles/Szero.dat -w ../FlawFiles/Wzero.dat -p ../FlawFiles/PWRplate50.dat
if %errorlevel% neq 0 exit /b %errorlevel%
move INITIATE.DAT PFM_test_ver_16_INITIATE.DAT
move FAILURE.DAT PFM_test_ver_16_FAILURE.DAT
