# Mute Switch

## Table of Contents

- [Install](#install)
- [Testing](#testing)
- [Testnets](#testnets)
- [Contribute](#contribute)
- [License](#license)


## Install

Install Git
Install Docker
Install Node v12.18.3

```bash
# Pull project
git pull https://github.com/muteio/mute-switch-core
# cd into folder
cd mute-switch-core
# Install project dependencies
npm install
# Compile using hardhat
npx hardhat compile
```

## Issues

There are issues with running tests on a zkSync localnode. Primarily, there is no ability to run any time based tests which our bonds/amplifier/dao contracts require. For now, documentation runs tests off default eth evm testing parameters.

## Testing

``` bash
# Run all unit tests
npm run test
```

## Testing with zkSync local node (broken, do not run)

https://v2-docs.zksync.io/api/hardhat/testing.html#prerequisites

Update the local node if needed
``` bash
cd localEnv
git pull
docker-compose pull
```

IF you were running an older version, make sure to clear the db

``` bash
cd localEnv
./clear.sh
```

On a separate screen, run the local node.
``` bash
cd localEnv
git pull
npx docker-compose pull
./start.sh
```
Let the local environment run for a few minutes until blocks get populated (~1000 blocks)
When running tests, if no network is detected, restart the local node.

On a separate screen, run unit tests

``` bash
# Run all unit tests
npm run test
```

## Contribute

To report bugs within this package, create an issue in this repository.
For security issues, please contact dev@mute.io.
When submitting code, ensure that it is free of errors and has 100% test coverage.

## License

[GNU General Public License v3.0 (c) 2022 mute.io](./LICENSE)
