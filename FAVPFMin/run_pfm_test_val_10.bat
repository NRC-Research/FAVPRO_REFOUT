%1 -i PFM_test_val_10.in -l ../../../../../tests/verification/outputs/load/val_10.out -o PFM_test_val_10.out
if %errorlevel% neq 0 exit /b %errorlevel%
move INITIATE.DAT PFM_test_val_10_INITIATE.DAT
move FAILURE.DAT PFM_test_val_10_FAILURE.DAT
