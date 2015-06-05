date display curent date
ls -ltr displays directory contet -l long -t sort by time -r reverse
cd .. back one directory
whoami/who current user/all users
pwd print current directory
man man manual for manual
env shows environment variables

mkdir cs3308
mv cs3308 csci3308
cd /
cp asdf.txt
rm asdf.txt
mkdir tmp
rmdir tmp
cat asdf.txt
more asdf.txt
head asdf.txt
tail asdf.txt
ls | grep the
sudo find / -name books.txt
zip -r dir.zip *.*
unzip dir.zip -d ./tmp/
tar -cvf dir.tar ./ 
mkdir ./tmp && tar -xvf dir.tar -C ./tmp
touch asdf.txt

sort -d passwd
sort -t':' -k3 -g passwd
sort -t':' -k4 -k3 -g passwd
grep Mark passwd
wc -l passwd
wc -l passwd > tmp

