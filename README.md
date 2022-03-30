BitcoinReload Core
=============

Setup
---------------------
BitcoinReload Core is the original BitcoinReload client and it builds the backbone of the network. It downloads and, by default, stores the entire history of BitcoinReload transactions, which requires a few hundred gigabytes of disk space. Depending on the speed of your computer and network connection, the synchronization process can take anywhere from a few hours to a day or more.

To download BitcoinReload Core, visit [bitcoinreloadcore.org](https://bitcoinreload.org).

Running
---------------------
The following are some helpful notes on how to run BitcoinReload Core on your native platform.

### Unix

Unpack the files into a directory and run:

- `bin/bitcoinreload-qt` (GUI) or
- `bin/bitcoinreloadd` (headless)

### Windows

Unpack the files into a directory, and then run bitcoinreload-qt.exe.

### macOS

Drag BitcoinReload Core to your applications folder, and then run BitcoinReload Core.

### Need Help?

* See the documentation at the [BitcoinReload Web Site](https://bitcoinreload.org)
for help and more information.


Building
---------------------
The following are developer notes on how to build BitcoinReload Core on your native platform. They are not complete guides, but include notes on the necessary libraries, compile flags, etc.

- [Dependencies](dependencies.md)
- [macOS Build Notes](build-osx.md)
- [Unix Build Notes](build-unix.md)
- [Windows Build Notes](build-windows.md)
- [FreeBSD Build Notes](build-freebsd.md)
- [OpenBSD Build Notes](build-openbsd.md)
- [NetBSD Build Notes](build-netbsd.md)


Development
---------------------
The BitcoinReload repo's [root README](/README.md) contains relevant information on the development process and automated testing.

- [Developer Notes](developer-notes.md)
- [Productivity Notes](productivity.md)
- [Release Notes](release-notes.md)
- [Release Process](release-process.md)
- [Translation Process](translation_process.md)
- [Translation Strings Policy](translation_strings_policy.md)
- [JSON-RPC Interface](JSON-RPC-interface.md)
- [Unauthenticated REST Interface](REST-interface.md)
- [Shared Libraries](shared-libraries.md)
- [BIPS](bips.md)
- [Dnsseed Policy](dnsseed-policy.md)
- [Benchmarking](benchmarking.md)

### Resources
* Discuss on the [BitcoinReload](https://bitcoinreload.org/) forums, in the [Development & Technical Discussion](https://bitcoinreload.org/).

### Miscellaneous
- [Assets Attribution](assets-attribution.md)
- [bitcoinreload.conf Configuration File](bitcoinreload-conf.md)
- [Files](files.md)
- [Fuzz-testing](fuzzing.md)
- [Reduce Memory](reduce-memory.md)
- [Reduce Traffic](reduce-traffic.md)
- [Tor Support](tor.md)
- [Init Scripts (systemd/upstart/openrc)](init.md)
- [ZMQ](zmq.md)
- [PSBT support](psbt.md)

License
---------------------
Distributed under the [MIT software license](/COPYING).
