
SET curr_path="C:\Users\Rohan\eclipse-workspace\maven-demo"
SET repo_url="https://github.com/rohannadkarni/buildrepo.git"

ECHO We're working with "%curr_path%"
ECHO We're working with "%repo_url%"

pause;

call "C:\Program Files\Git\bin\git.exe" init
call "C:\Program Files\Git\bin\git.exe" add %curr_path%

for /F "tokens=2" %%i in ('date /t') do set dtime=%%i

call "C:\Program Files\Git\bin\git.exe" commit -m "uploading at %dtime% %TIME%"

pause;

call "C:\Program Files\Git\bin\git.exe" remote set-url buildrepo %repo_url%

echo "hello"

call "C:\Program Files\Git\bin\git.exe" push buildrepo master

start "" %repo_url%
