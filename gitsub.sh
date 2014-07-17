#!/bin/bash
git rm -rf --cached x4deep
rm x4deep -r
git submodule add https://github.com/xopherdeep/x4deep2 x4deep

git rm -rf --cached mesh
rm mesh -r
git submodule add https://github.com/xopherdeep/mesh-code-editor mesh


git rm -rf --cached phpThumb 
rm phpThumb -r
git submodule add https://github.com/xopherdeep/phpThumb1.7.11 phpThumb

git rm -rf --cached smarty 
rm smarty -r
git submodule add https://github.com/xopherdeep/smarty3.1.19 smarty --depth 1
# cd ./smarty/
# git filter-branch --subdirectory-filter distribution -f
# cd ..

git rm -rf --cached github 
rm github -r
git submodule add https://github.com/xopherdeep/php-github-api-lib github

read -p "Download Local Copy of Zend? " answer
# (2) handle the input we were given
case $answer in
	[yY]* ) 
		echo "Okay, this may take a second..."
		git rm Zend -r
		git submodule add https://github.com/xopherdeep/ZF1 Zend --depth 1/usr/bin/wget -O - -q -t 1 http://www.example.com/cron.php           
		# cd ./Zend/
		# git filter-branch --subdirectory-filter library/Zend -f
		# cd ..
   	 
	# [nN]* ) exit;;
	# * )     echo "Dude, just enter Y or N, please.";;
esac

#  Use this if prefer subtree..
# git subtree add --prefix smarty https://github.com/xopherdeep/smarty distribution --squash
# git subtree add --prefix Zend https://github.com/xopherdeep/Zend-Framework-v1 library-Zend --squash

# git rm x4deep -r
# git submodule add https://github.com/xopherdeep/x4deep x4deep

# git rm phpThumb -r
# git submodule add https://github.com/xopherdeep/phpThumb phpThumb
