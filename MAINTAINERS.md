# Guide for maintainers

This is meant to be mostly a scratchpad for myself, as well as a guide for anyone who is maintaining this repository in the future.

## Testing a package locally.

Run

```
HOMEBREW_NO_INSTALL_FROM_API=1 brew install --build-from-source ./Formula/<package>.rb
```
