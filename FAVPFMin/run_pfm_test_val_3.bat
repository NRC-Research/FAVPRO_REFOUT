%1 -i PFM_test_val_3.in -l ../../../../../tests/verification/outputs/load/val_3.out -o PFM_test_val_3.out
if %errorlevel% neq 0 exit /b %errorlevel%
move INITIATE.DAT PFM_test_val_3_INITIATE.DAT
move FAILURE.DAT PFM_test_val_3_FAILURE.DAT
