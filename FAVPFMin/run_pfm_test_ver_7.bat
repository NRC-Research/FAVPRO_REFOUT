%1 -i PFM_test_ver_7.in -ij PFM_test_ver_7.json -l ../../../../../tests/verification/outputs/load/ver_3.out -o PFM_test_ver_7.out -s ../FlawFiles/PWRsurf5.dat -w ../FlawFiles/PWRweld50.dat -p ../FlawFiles/PWRplate50.dat
if %errorlevel% neq 0 exit /b %errorlevel%
move INITIATE.DAT PFM_test_ver_7_INITIATE.DAT
move FAILURE.DAT PFM_test_ver_7_FAILURE.DAT
