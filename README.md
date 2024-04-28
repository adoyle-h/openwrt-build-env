# openwrt-build-env

Build openwrt in container.

## Usage

0. Clone [openwrt](https://github.com/openwrt/openwrt) project
1. Copy [`.dockerignore`](./.dockerignore) file to openwrt project root.
2. `docker run --rm -it --platform linux/amd64 -v ./:/workspace adoyle/openwrt-build-env bash`
3. For Chinese users, it's recommended to export `HTTP_PROXY` `HTTPS_PROXY` `ALL_PROXY` environment variables in shell.
4. `./scripts/feeds update -a`
5. `./scripts/feeds install -a`
6. `make menuconfig`
7. `make` or `make -j$(nproc) V=sc`

## Notice

1. If you are using tmux, DO NOT resize pane while `make`. Otherwise, fakeroot will get connection reset failed.

## Suggestion, Bug Reporting, Contributing

**Before opening new Issue/Discussion/PR and posting any comments**, please read [Contributing Guidelines](https://gcg.adoyle.me/CONTRIBUTING).

## Copyright and License

Copyright 2024 ADoyle (adoyle.h@gmail.com). Some Rights Reserved.
The project is licensed under the **Apache License Version 2.0**.

Read the [LICENSE][] file for the specific language governing permissions and limitations under the License.

Read the [NOTICE][] file distributed with this work for additional information regarding copyright ownership.


<!-- links -->

[LICENSE]: ./LICENSE
[NOTICE]: ./NOTICE
