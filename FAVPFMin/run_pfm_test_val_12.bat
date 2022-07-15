%1 -i PFM_test_val_12.in -ij PFM_test_val_12.json -l ../../../../../tests/verification/outputs/load/val_11.out -o PFM_test_val_12.out -s ../FlawFiles/PWRsurf5.dat -w ../FlawFiles/Wzero.dat -p ../FlawFiles/Pzero.dat
if %errorlevel% neq 0 exit /b %errorlevel%
move INITIATE.DAT PFM_test_val_12_INITIATE.DAT
move FAILURE.DAT PFM_test_val_12_FAILURE.DAT
