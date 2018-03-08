#!/bin/bash
# Emirsah KURSATOGLU
# www.emirsah.com
# Imapcopy mail transfer script

echo Looping on account credentials found in file.txt
echo

{ while IFS=';' read  h1 u1 p1 h2 u2 p2 fake
    do
        { echo "$h1" | egrep "^#" ; } > /dev/null && continue # this skip commented lines in file.txt
        echo "==== Starting imapsync from host1 $h1 user1 $u1 to host2 $h2 user2 $u2 ===="
        imapsync --host1 "$h1" --user1 "$u1" --password1 "$p1" \
                 --host2 "$h2" --user2 "$u2" --password2 "$p2" \
                 --regextrans2 "s/(.*)/INBOX.OLDMAILS/" --addheader
        echo "==== Ended imapsync from host1 $h1 user1 $u1 to host2 $h2 user2 $u2 ===="
        echo
    done
} < files.txt
