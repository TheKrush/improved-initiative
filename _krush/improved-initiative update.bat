call "improved-initiative stop.bat"

cd improved-initiative
git fetch upstream
git checkout master
git reset --hard HEAD
git rebase upstream/master
git push -f
cd ..

call "improved-initiative build.bat"
