#!/bin/env bash
#

spec_git_url=$1
spec_filename=$2

cd ${GITHUB_WORKSPACE}

mkdir publication
git clone ${spec_git_url} wd
cd wd

kramdown-rfc2629 ${spec_filename}.md > ../publication/${spec_filename}.xml
xml2rfc ../publication/${spec_filename}.xml > ../publication/${spec_filename}.txt
xml2rfc --html ../publication/${spec_filename}.xml > ../publication/${spec_filename}.html
enscript -B -o ../publication/${spec_filename}.ps ../publication/${spec_filename}.txt
ps2pdf ../publication/${spec_filename}.ps ../publication/${spec_filename}.pdf

cd ${GITHUB_WORKSPACE}
