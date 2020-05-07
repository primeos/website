+++
title = "OpenPGP key signature (certification) policy"
date = "2020-05-07"
+++

# Status

This is only a draft (WIP).

# Keys

TODO:
- Old primary key: `0xAD098E6B008A7CB009ED25F11E8B02C29318BA46`
- Smart card key: `0xAF85991CC95049A242051933BCA9943DD1DF4C04`
- New primary key: Not yet public

# Certification levels

I usually only use the level 3. This means that I did carefully verify the
identity of the owner and their access to the key. The identity of the owner was
verified in person by checking their official identity document (which must
contain a photo). I also verified the access to the key and email address(es) by
encrypting my certification with their key and sending the result by email (in
case of multiple UIDs the certification for each UID is sent separately). I
currently do this by using `caff` (CA - Fire and Forget) from the
[signing-party package](https://salsa.debian.org/signing-party-team/signing-party).
