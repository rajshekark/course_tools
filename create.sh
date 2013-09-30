from=$1
assign=$2
groups=$3

svnadmin create $assign
svn mkdir file:///`pwd`/$assign/trunk -m "created directory trunk"
svn mkdir file:///`pwd`/$assign/tags -m "created directory tags"
svn mkdir file:///`pwd`/$assign/branches -m "created directory branch"
svn import $from file:///`pwd`/$assign/trunk -m "import"
cat $groups | xargs -l  ./addgroup.sh $assign



