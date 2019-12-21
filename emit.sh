#!/bin/bash
# SPDX-License-Identifier: Apache-2.0

set -ex

if [ "$1" = "" ]; then
  echo You need to pass a file name.
else
  echo Creating $1.svg
  cat > $1.svg <<- SVG
	<svg xmlns="http://www.w3.org/2000/svg" width="148" height="20"><linearGradient id="b" x2="0" y2="100%"><stop offset="0" stop-color="#bbb" stop-opacity=".1"/><stop offset="1" stop-opacity=".1"/></linearGradient><mask id="a"><rect width="148" height="20" rx="3" fill="#fff"/></mask><g mask="url(#a)"><path fill="#555" d="M0 0h77v20H0z"/><path fill="#4c1" d="M77 0h71v20H77z"/><path fill="url(#b)" d="M0 0h148v20H0z"/></g><g fill="#fff" text-anchor="middle" font-family="DejaVu Sans,Verdana,Geneva,sans-serif" font-size="11"><text x="38.5" y="15" fill="#010101" fill-opacity=".3">Join</text><text x="38.5" y="14">Join</text><text x="111.5" y="15" fill="#010101" fill-opacity=".3">#$1</text><text x="111.5" y="14">#$1</text></g></svg>
	SVG
fi
