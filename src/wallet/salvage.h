// Copyright (c) 2009-2010 Satoshi Nakamoto
// Copyright (c) 2009-2020 The Bitcoin Core developers
// Copyright (c) 2022 The BitcoinReload Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef BITCOINRELOAD_WALLET_SALVAGE_H
#define BITCOINRELOAD_WALLET_SALVAGE_H

#include <fs.h>
#include <streams.h>

struct bilingual_str;

bool RecoverDatabaseFile(const fs::path& file_path, bilingual_str& error, std::vector<bilingual_str>& warnings);

#endif // BITCOINRELOAD_WALLET_SALVAGE_H
