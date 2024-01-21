---
title: Intro
---

polars_dart is a port of [Polars](https://pola.rs), a data-wrangling library akin to
numpy and pandas, written in Rust and uses the language-agnostic [Apache Arrow](https://arrow.apache.org) data format.

polars_dart directly wraps the [Rust library](https://docs.rs/polars), providing many of the same APIs as
its source.

:::note
polars_dart is not ready for public usage yet and serves mainly as a benchmark of [flutter_rust_bridge](https://pub.dev/packages/flutter_rust_bridge)'s
capabilities. If you wish to use polars_dart, please consider contacting the maintainer or [contributing](/guides/contributing) to the library.
:::

### Install

```bash
# Not published to pub.dev yet, activate with local project instead
dart pub global activate . -s path
# Generate documentation
dartdoc_astro ./lib
```
