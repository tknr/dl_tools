#!/bin/bash
export IFS=$'\n'
cd `dirname $0`

INSTALL_LIST=(
"dl_aria2c"
"dl_atv"
"dl_bc"
"dl_curl"
"dl_freyr"
"dl_mega"
"dl_sc"
"dl_streamlink"
"dl_uptobox"
"dl_youtube"
"dl_tver"
"dl_github_release"
"dl_ytmdl"
)

for INSTALL in ${INSTALL_LIST[@]}
do
	rm /usr/local/bin/${INSTALL}
	ln -s `pwd`/${INSTALL} /usr/local/bin/ || continue
	ls -lh `which ${INSTALL}`
done
