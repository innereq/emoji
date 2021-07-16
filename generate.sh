#!/bin/sh

FILENAMES=`ls -1 */*`
NAMES=`ls -1 */* | cut -d "/" -f 2 | cut -d "." -f 1`
URL='https://raw.githubusercontent.com/innereq/emoji/master/'

set -- $FILENAMES
jo -a `for i in $NAMES; do jo name=$i image=$URL$1; shift; done`
