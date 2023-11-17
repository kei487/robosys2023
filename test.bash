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
[ "${out}" = "1+2+3+4+5 = 15" ] || ng ${LINENO}

out=$(seq 10 | ./plus)
[ "${out}" = "1+2+3+4+5+6+7+8+9+10 = 55" ] || ng ${LINENO}

out=$(echo -e "1.0\n2.0\n3.0\n4.0" | ./plus)
[ "${out}" = "1.0+2.0+3.0+4.0 = 10.0" ] || ng ${LINENO}

out=$(echo -e "2.5252\n3.7456\n3.141592563776\n2.714" | ./plus)
[ "${out}" = "2.5252+3.7456+3.141592563776+2.714 = 12.126392563776" ] || ng ${LINENO}

out=$(echo -e "-1.0\n-2.0\n-3.0\n-4.0" | ./plus)
[ "${out}" = "(-1.0)+(-2.0)+(-3.0)+(-4.0) = -10.0" ] || ng ${LINENO}

out=$(echo -e "-1.0\n2.0\n3.0\n-4.0" | ./plus)
[ "${out}" = "(-1.0)+2.0+3.0+(-4.0) = 0.0" ] || ng ${LINENO}

### STRANGE INPUT ###
out=$(echo あ | ./plus)
[ "$?" = 1 ] || ng ${LINEMO}
[ "${out}" = "" ] || ng ${LINEMO}

out=$(echo | ./plus)
[ "$?" = 1 ] || ng ${LINEMO}
[ "${out}" = "" ] || ng ${LINEMO}

[ "$res" = 0 ] && echo OK
exit $res
