%1 -i POST_test_ver_1.in -o POST_test_ver_1.out -cpi POST_test_ver_1_INITIATE.DAT -cpf POST_test_ver_1_FAILURE.DAT -inc 5000
if %errorlevel% neq 0 exit /b %errorlevel%
