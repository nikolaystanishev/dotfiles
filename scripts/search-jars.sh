#!/bin/sh

LOOK_FOR="string to be searched"

for i in `find path/containing/jars -name "*.jar"`
do
#  echo "Looking in $i ..."
  jar tvf $i | grep -i $LOOK_FOR > /dev/null
  if [ $? == 0 ]
  then
    echo "==> Found \"$LOOK_FOR\" in $i"
  fi
done
