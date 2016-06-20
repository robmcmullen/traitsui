mkdir testrun
copy .coveragerc testrun/
cd testrun
if %errorlevel% neq 0 exit /b %errorlevel%
coverage run -m nose.core -v traitsui.tests
coverage run -a -m nose.core -v traitsui.qt4.tests
if %errorlevel% neq 0 exit /b %errorlevel%
