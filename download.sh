#!/bin/bash

for foo in \
	http://downloads.sourceforge.net/project/aoo-extensions/1078/0/dict-cs-2.0.oxt \
	http://downloads.sourceforge.net/project/aoo-extensions/1143/11/dict-sk.oxt \
	http://downloads.sourceforge.net/project/aoo-extensions/1470/1/en_us.oxt \
	http://downloads.sourceforge.net/project/aoo-extensions/1317/0/dict-en-us-names-2008-10-12.oxt
do
	wget --no-clobber $foo
done
