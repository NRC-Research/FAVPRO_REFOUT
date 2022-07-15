%1 -i PFM_test_val_4.in -ij PFM_test_val_4.json -l ../../../../../tests/verification/outputs/load/val_4.out -o PFM_test_val_4.out
if %errorlevel% neq 0 exit /b %errorlevel%
move INITIATE.DAT PFM_test_val_4_INITIATE.DAT
move FAILURE.DAT PFM_test_val_4_FAILURE.DAT
