%1 -i POST_test_ver_2.in -o POST_test_ver_2.out -cpi ../FAVPFMin/PFM_test_ver_13_INITIATE.DAT -cpf ../FAVPFMin/PFM_test_ver_13_FAILURE.DAT -inc 10
if %errorlevel% neq 0 exit /b %errorlevel%
