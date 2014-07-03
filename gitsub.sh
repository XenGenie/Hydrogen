#!/bin/bash
git submodule add https://github.com/xopherdeep/Zend-Framework-v1 Zend
git submodule add https://github.com/xopherdeep/phpThumb phpThumb
git submodule add https://github.com/xopherdeep/smarty smarty
git submodule add https://github.com/xopherdeep/x4deep x4deep

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