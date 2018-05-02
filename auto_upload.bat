@ECHO OFF

SET curr_path="C:\Users\Rohan\eclipse-workspace\maven-demo"
SET repo_url="https://github.com/rohannadkarni/buildrepo.git"

ECHO We're working with "%curr_path%"
ECHO We're working with "%repo_url%"

pause;

call "C:\Program Files\Git\bin\git.exe" init
call "C:\Program Files\Git\bin\git.exe" add %curr_path%
call "C:\Program Files\Git\bin\git.exe" commit -m "uploading at %TIME%"

pause;

call "C:\Program Files\Git\bin\git.exe" remote add buildrepo %repo_url%

call "C:\Program Files\Git\bin\git.exe" push buildrepo master

pause;