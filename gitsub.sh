#!/bin/bash

git subtree add --prefix smarty https://github.com/xopherdeep/smarty distribution --squash
# git submodule add -b distribution https://github.com/xopherdeep/smarty smarty
# cd ./smarty/
# git filter-branch --subdirectory-filter distribution -f
# cd ..

git rm Zend -r
git subtree add --prefix Zend https://github.com/xopherdeep/Zend-Framework-v1 library-Zend --squash
# git submodule add --squash -b library-Zend https://github.com/xopherdeep/Zend-Framework-v1 Zend
# cd ./Zend/
# git filter-branch --subdirectory-filter library/Zend -f
# cd ..


git rm x4deep -r
git submodule add https://github.com/xopherdeep/x4deep x4deep

git rm phpThumb -r
git submodule add https://github.com/xopherdeep/phpThumb phpThumb

git rm smarty -r

