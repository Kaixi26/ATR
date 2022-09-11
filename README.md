# TAR

Temporal Alloy Repair is a tool that extends Alloy6 to allow mutation-based automatic repair of specifications.

# Requirements and Building

You can check the [Alloy README](https://github.com/AlloyTools/org.alloytools.alloy) for these instructions.

# Building the docker image

Simply run
```sh
$ docker build .
```
in the root project folder.

An already built image can also be found at [Docker Hub](https://hub.docker.com/r/kaixi26/atr).

# Modification

No changes have been made to the original source code in the core, all core additions have been made in the `pt.haslab` package, if you want to add new mutators you can do so by first creating a class extending `pt.haslab.mutation.mutator.Mutator` and then adding this class to the generation process in `pt.haslab.mutation.mutator.Generator`.
