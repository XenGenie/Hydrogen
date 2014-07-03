#!/bin/bash
git submodule add https://github.com/xopherdeep/x4deep x4deep
git submodule add https://github.com/xopherdeep/phpThumb phpThumb

git submodule add https://github.com/xopherdeep/smarty smarty
cd ./smarty/
git filter-branch --subdirectory-filter distribution -f
cd ..

git submodule add https://github.com/xopherdeep/Zend-Framework-v1 Zend
cd ./Zend/
git filter-branch --subdirectory-filter library/Zend -f
cd ..