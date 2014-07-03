#!/bin/bash
git submodule init
git submodule update
git log -1
cd ./smarty/
git log -1
git filter-branch --subdirectory-filter distribution -f
cd ..


cd ./Zend/
git submodule add https://github.com/zendframework/zf1 Zend
cd ..
cd ./Zend/
git log -1
git filter-branch --subdirectory-filter library/Zend -f
cd ..