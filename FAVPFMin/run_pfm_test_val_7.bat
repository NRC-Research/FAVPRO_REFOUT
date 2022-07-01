%1 -i PFM_test_val_7.in -l ../../../../../tests/verification/outputs/load/val_7.out -o PFM_test_val_7.out
if %errorlevel% neq 0 exit /b %errorlevel%
move INITIATE.DAT PFM_test_val_7_INITIATE.DAT
move FAILURE.DAT PFM_test_val_7_FAILURE.DAT
