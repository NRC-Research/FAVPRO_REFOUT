%1 -i PFM_test_val_9.in -l ../../../../../tests/verification/outputs/load/val_9.out -o PFM_test_val_9.out
if %errorlevel% neq 0 exit /b %errorlevel%
move INITIATE.DAT PFM_test_val_9_INITIATE.DAT
move FAILURE.DAT PFM_test_val_9_FAILURE.DAT
