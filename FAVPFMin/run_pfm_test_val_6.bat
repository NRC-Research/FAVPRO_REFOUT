%1 -i PFM_test_val_6.in -ij PFM_test_val_6.json -l ../../../../../tests/verification/outputs/load/val_6.out -o PFM_test_val_6.out
if %errorlevel% neq 0 exit /b %errorlevel%
move INITIATE.DAT PFM_test_val_6_INITIATE.DAT
move FAILURE.DAT PFM_test_val_6_FAILURE.DAT
