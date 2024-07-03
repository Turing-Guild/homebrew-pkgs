# Guide for maintainers

This is meant to be mostly a scratchpad for myself, as well as a guide for anyone who is maintaining this repository in the future.

## Testing a package locally.

Run

```
HOMEBREW_NO_INSTALL_FROM_API=1 brew install --build-from-source --debug --verbose ./Formula/<package>.rb
```

## Updating a package

To update a package version, follow these steps:

### 1. Update the upstream URL

Firstly, update the URL the package pulls from (ideally you won't need to update the `install` or `test` section of the package itself). Get the new (updated version!) package URL.

> [!NOTE]
> If the package is in question an NPM package, the URL is (should be!) of the form `https://registry.npmjs.org/@turingguild/<package name>/-/<package name>-<version>.tgz`. Note that the package version is _without_ a `v` prefix.

The new URL should replace the `url` field in the formula file.

### 2. Update the upstream URL hash

The upstream URL hash used by Homebrew is a SHA256 hash of the package file. To get the hash, download the file from the new url you found in the previous step, and run:

```sh
sha256sum /path/to/downloaded/file
```

The output hash should replace the `sha256` field in the formula file.

### 3. Update the version in the formula

Edit the corresponding `.rb` file in the `Formula` directory and update the `version` field. For example, if the current `version` is `1.2.3` but the new URL/binary/package has `version` `1.2.4`, update it to `1.2.4`.

Ideally, the version in the formula should be the same as the version of the package. If the package version is `v1.2.4`, the version in the formula should be `1.2.4`. As of writing, the version for `tg-vasm` is `1.8f`, so the version in the formula is `1.8f`.

### 4. Test the package locally

Test the package locally as described in [Testing a package locally](#testing-a-package-locally).

### 5. Commit and push the changes

Commit the changes and push them to the repository.

### 6. Tag the new version of the package.

Create a new tag for the package. The tag should be of the form `<updated package name>-v<version>`. If there are multiple updated packages, there should be a tag for each updated package.

For example, if `tg-vasm` and `alanone` were updated to `1.9f` and `1.2.4` respectively, the tags would be `tg-vasm-v1.8f` and `alanone-v1.2.4`.
