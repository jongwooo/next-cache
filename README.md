# next-cache

This action allows [caching Next.js](https://nextjs.org/docs/advanced-features/ci-build-caching) for faster application rebuilds.

[![LICENSE](https://img.shields.io/github/license/jongwooo/next-cache?color=blue)](LICENSE)
[![CodeFactor](https://www.codefactor.io/repository/github/jongwooo/next-cache/badge)](https://www.codefactor.io/repository/github/jongwooo/next-cache)
[![GitHub stars](https://img.shields.io/github/stars/jongwooo/next-cache?style=social)](https://github.com/jongwooo/next-cache)

## Usage

### Pre-requisites

Create a workflow `.yml` file in your repositories `.github/workflows` directory. For more information, reference the GitHub Help Documentation for [Creating a workflow file](https://help.github.com/en/articles/configuring-a-workflow#creating-a-workflow-file).

### Cache Details

This action currently caches the following directories:

- `.next/cache` (cache of data and rendered assets)

### Example workflow

```yaml
- uses: actions/checkout@v3

- name: Set up Node.js
  uses: actions/setup-node@v3
  with:
   node-version: 18

- uses: jongwooo/next-cache@v1

- name: Install dependencies
  run: npm ci

- name: Build
  run: npm run build
```

## Contributing

Check out [Contributing guide](.github/CONTRIBUTING.md) for ideas on contributing and setup steps for getting our repositories up.

## License

Licensed under the [MIT License](LICENSE).
