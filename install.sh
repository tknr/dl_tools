#!/bin/bash
export IFS=$'\n'
cd `dirname $0`

INSTALL_LIST=(
"dl_abema"
"dl_aria2c"
"dl_bc"
"dl_curl"
"dl_freyr"
"dl_github_release"
"dl_mega"
"dl_sc"
"dl_streamlink"
"dl_uptobox"
"dl_youtube"
"dl_ytmdl"
)

for INSTALL in ${INSTALL_LIST[@]}
do
	rm /usr/local/bin/${INSTALL}
	ln -s `pwd`/${INSTALL} /usr/local/bin/ || continue
	ls -lh `which ${INSTALL}`
done
