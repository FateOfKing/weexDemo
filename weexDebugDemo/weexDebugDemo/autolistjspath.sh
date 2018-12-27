rm ~/Documents/weexpath.txt
cd ../diibeeapp_weex
function getdir(){
for element in `ls $1`
do
dir_or_file=$1"/"$element
if [ -d $dir_or_file ]
then
getdir $dir_or_file
else
echo $dir_or_file >> ~/Documents/weexpath.txt
fi
done
}
root_dir="./dist"
getdir $root_dir
