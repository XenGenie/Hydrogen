#!/bin/bash
git rm x4deep -r
git submodule add https://github.com/xopherdeep/x4deep x4deep

git rm phpThumb -r
git submodule add https://github.com/xopherdeep/phpThumb phpThumb

git rm smarty -r
git submodule add -b distribution https://github.com/xopherdeep/smarty smarty --depth 1
# cd ./smarty/
# git filter-branch --subdirectory-filter distribution -f
# cd ..
 
git rm Zend -r
git submodule add -b library-Zend https://github.com/xopherdeep/Zend-Framework-v1 Zend --depth 1
# cd ./Zend/
# git filter-branch --subdirectory-filter library/Zend -f
# cd ..