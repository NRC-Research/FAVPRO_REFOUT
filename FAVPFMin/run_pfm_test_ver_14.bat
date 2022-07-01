%1 -i PFM_test_ver_14.in -l ../../../../../tests/verification/outputs/load/ver_8.out -o PFM_test_ver_14.out -s ../FlawFiles/BWRsurf5.dat -w ../FlawFiles/BWRweld50.dat -p ../FlawFiles/BWRplate50.dat
if %errorlevel% neq 0 exit /b %errorlevel%
move INITIATE.DAT PFM_test_ver_14_INITIATE.DAT
move FAILURE.DAT PFM_test_ver_14_FAILURE.DAT
