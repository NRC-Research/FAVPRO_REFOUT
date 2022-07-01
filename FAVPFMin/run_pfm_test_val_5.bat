%1 -i PFM_test_val_5.in -l ../../../../../tests/verification/outputs/load/val_5.out -o PFM_test_val_5.out
if %errorlevel% neq 0 exit /b %errorlevel%
move INITIATE.DAT PFM_test_val_5_INITIATE.DAT
move FAILURE.DAT PFM_test_val_5_FAILURE.DAT
