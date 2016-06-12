#!/bin/bash

for foo in *.oxt
do
	dtrx --overwrite $foo
done
