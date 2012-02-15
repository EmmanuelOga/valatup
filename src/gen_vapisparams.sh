#! /bin/sh

if [ $# -lt 1 ]; then
	echo "Usage: $0 vapilist.txt" 1>&2
	exit 1
fi

dir=`dirname $1`

# Just go through the filenames in vapilist.txt, and print it out in the argument format that we want.
# We prefix the directory that we're in (eg: windows) so the files are relative to the directory that
# is using our .vapi files
for i in `cat $1`; do
	echo "--use-fast-vapi=$dir/$i"
done
