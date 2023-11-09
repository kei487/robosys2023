#!/bin/bash
# SPDX-FileCopyrightText: 2023 Keitaro Nakamura
# SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo NG at Line $1
	res=1
}

res=0

### 1/0 TEST ###
out=$(seq 5 | ./plus)
[ "${out}" = '1+2+3+4+5 = 15'] || ng ${LINENO}

[ "$res" = 0 ] && echo OK
exit $res
