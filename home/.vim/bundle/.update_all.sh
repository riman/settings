#/bin/bash
for d in */ ; do
    pushd $d
    git pull origin master
    popd
done
