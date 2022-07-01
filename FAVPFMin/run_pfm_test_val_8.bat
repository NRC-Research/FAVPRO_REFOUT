%1 -i PFM_test_val_8.in -l ../../../../../tests/verification/outputs/load/val_8.out -o PFM_test_val_8.out
if %errorlevel% neq 0 exit /b %errorlevel%
move INITIATE.DAT PFM_test_val_8_INITIATE.DAT
move FAILURE.DAT PFM_test_val_8_FAILURE.DAT
