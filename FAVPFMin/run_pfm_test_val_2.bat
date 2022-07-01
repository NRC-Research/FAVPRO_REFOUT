%1 -i PFM_test_val_2.in -l ../../../../../tests/verification/outputs/load/val_2.out -o PFM_test_val_2.out
if %errorlevel% neq 0 exit /b %errorlevel%
move INITIATE.DAT PFM_test_val_2_INITIATE.DAT
move FAILURE.DAT PFM_test_val_2_FAILURE.DAT
