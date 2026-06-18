# Mario Party Advance

This is a disassembly of Mario Party Advance (USA)

It builds the following ROM:
* MPAdvance.gba `md5: 9d0d27345bf88de8b025aa24d54d6bad`

### Setting up the repository

* You must have a copy of the Mario Party Advance ROM named `baserom.gba` in the repository directory.

* Install [**devkitARM**](http://devkitpro.org/wiki/Getting_Started/devkitARM).

* Clone [agbcc](https://github.com/pret/agbcc) outside of this repository, run `./build.sh`, and then `./install.sh [MPAdvance path]`, where `[MPAdvance path]` is the directory where you cloned the MPAdvance repository.

* Once thats done, run `make -f make_tools.mk` to build gbafix (TODO: make it build tools when you run `make`)
