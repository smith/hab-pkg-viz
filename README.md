# Habitat Package Dependency Visualizer

Given a Habitat package identifier, create a
[Graphviz](http://www.graphviz.org/) .dot representation of
packages' dependencies.

To view the output on a Mac, assuming the `dot` program is installed:

    hab-pkg-viz core/myapp | dot -Tpng | open -f -a Preview.app

The package in question must already be installed.

## Installation

You can install it with Habitat by running `hab install smith/hab-pkg-viz` then
run with `hab pkg exec smith/hab-pkg-viz hab-pkg-viz myorigin/mypackage`.

## Showing Build Dependencies

To make a graph of build dependencies instead of runtime dependencies, set
`HAB_PKG_VIZ_DEPS_FILE="BUILD_DEPS"` when running the program.

You will only get a complete graph when *all* of the packages build dependencies
are already installed.

## Notes

This is a simple script that traverses the packages' DEPS files and writes a
string that's a valid .dot representation.

Another way to do this might be by querying the depot API for the dependencies,
which wouldn't require any packages to be installed.

Any changes or suggestions are welcome.

## License

Copyright: Copyright (c) 2016 Nathan L Smith, Inc.
License: Apache License, Version 2.0

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
