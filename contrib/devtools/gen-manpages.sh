#!/usr/bin/env bash
# Copyright (c) 2016-2019 The Bitcoin Core developers
# Distributed under the MIT software license, see the accompanying
# file COPYING or http://www.opensource.org/licenses/mit-license.php.

export LC_ALL=C
TOPDIR=${TOPDIR:-$(git rev-parse --show-toplevel)}
BUILDDIR=${BUILDDIR:-$TOPDIR}

BINDIR=${BINDIR:-$BUILDDIR/src}
MANDIR=${MANDIR:-$TOPDIR/doc/man}

BITCOINRELOADD=${BITCOINRELOADD:-$BINDIR/bitcoinreloadd}
BITCOINRELOADCLI=${BITCOINRELOADCLI:-$BINDIR/bitcoinreload-cli}
BITCOINRELOADTX=${BITCOINRELOADTX:-$BINDIR/bitcoinreload-tx}
WALLET_TOOL=${WALLET_TOOL:-$BINDIR/bitcoinreload-wallet}
BITCOINRELOADQT=${BITCOINRELOADQT:-$BINDIR/qt/bitcoinreload-qt}

[ ! -x $BITCOINRELOADD ] && echo "$BITCOINRELOADD not found or not executable." && exit 1

# The autodetected version git tag can screw up manpage output a little bit
read -r -a BTCREVER <<< "$($BITCOINRELOADCLI --version | head -n1 | awk -F'[ -]' '{ print $6, $7 }')"

# Create a footer file with copyright content.
# This gets autodetected fine for bitcoinreloadd if --version-string is not set,
# but has different outcomes for bitcoinreload-qt and bitcoinreload-cli.
echo "[COPYRIGHT]" > footer.h2m
$BITCOINRELOADD --version | sed -n '1!p' >> footer.h2m

for cmd in $BITCOINRELOADD $BITCOINRELOADCLI $BITCOINRELOADTX $WALLET_TOOL $BITCOINRELOADQT; do
  cmdname="${cmd##*/}"
  help2man -N --version-string=${BTCREVER[0]} --include=footer.h2m -o ${MANDIR}/${cmdname}.1 ${cmd}
  sed -i "s/\\\-${BTCREVER[1]}//g" ${MANDIR}/${cmdname}.1
done

rm -f footer.h2m
