# admiraltemplate 0.0.3.9001

- Removed renv and related files (#70)

## Updates to site

 - Package Extension guidance on the front page was updated and moved to [this location](https://pharmaverse.github.io/admiraldev/articles/package_extensions.html) in `{admiraldev}`, and a link was added to point to the new location (#61).

## CI workflows

- [`admiralci` workflows](https://github.com/pharmaverse/admiralci) has been updated. Indeed, workflows are not anymore based on `renv` framework to manage dependencies (`devtools` is used instead). Moreover, we now use latest version of `R` for all workflows, and run `R CMD CHECKS` for following R release version (R latest stable version), R devel version (in development version), and R previous release. More details are available in [admiralci doc](https://pharmaverse.github.io/admiralci/index.html).
As a result, `.github/workflows/common.yml` file has been updated, and all `renv` configurations has been removed.

## admiral.test removed

- `admiral.test` package has been replaced by [`pharmaversesdtm`](https://github.com/pharmaverse/pharmaversesdtm)

# admiraltemplate 0.0.2

## New Features

 - New `renv` lock files were setup (#48)

## Updates of Existing Functions

## Breaking Changes

## Documentation

 - Many updates across documentation made to match v0.10.0 of `admiral` [PR #51](https://github.com/pharmaverse/admiraltemplate/pull/51), including: 
 - Links were fixed on the website 
 - Templates were aligned to current `admiral` standards
 - Package dependencies were updated
 - Explanation on how to use family/keywords have been provided

## Various

 - Renamed from `admiralext` to `admiraltemplate`
 
# admiraltemplate 0.0.1

## New Features

 - You can link the GitHub Issue to Changelog by using (#ISSUE-NUMBER)

## Updates of Existing Functions

 - Updates that you have made for this version (#ISSUE-NUMBER)

## Breaking Changes

 - Deprecated functions. (#ISSUE-NUMBER)
 - Bug Fixes (#ISSUE-NUMBER)

## Documentation

 - Stuff that you did (#ISSUE-NUMBER)

## Various

 - Stuff that you did (#ISSUE-NUMBER)

