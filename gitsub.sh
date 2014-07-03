#!/bin/bash
git rm x4deep -r
git submodule add https://github.com/xopherdeep/x4deep x4deep

git rm phpThumb -r
git submodule add https://github.com/xopherdeep/phpThumb phpThumb

git rm smarty -r
git submodule add -b master https://github.com/xopherdeep/smarty3.1.19 smarty --depth 1
# cd ./smarty/
# git filter-branch --subdirectory-filter distribution -f
# cd ..
 
git rm Zend -r
git submodule add -b master https://github.com/xopherdeep/ZF1 Zend --depth 1
# cd ./Zend/
# git filter-branch --subdirectory-filter library/Zend -f
# cd ..




#  Use this if prefer subtree..
# git subtree add --prefix smarty https://github.com/xopherdeep/smarty distribution --squash
# git subtree add --prefix Zend https://github.com/xopherdeep/Zend-Framework-v1 library-Zend --squash

# git rm x4deep -r
# git submodule add https://github.com/xopherdeep/x4deep x4deep

# git rm phpThumb -r
# git submodule add https://github.com/xopherdeep/phpThumb phpThumb
