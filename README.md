<!-- Please do not edit the README.md file as it is auto-generated after PR merges. Only edit the README.Rmd file -->
<!-- The purpose of this is to enable dynamic links using dyn_link function above to access devel/main admiral homepage respectively -->
<!-- To test this in your feature branch use code: rmarkdown::render("README.Rmd", output_format ="md_document") -->

# admiral package extension Template <img src="man/figures/logo.png" align="right" width="200" style="margin-left:50px;"/>

<!-- badges: start -->

[<img src="http://pharmaverse.org/shields/admiral.svg">](https://pharmaverse.org)
[![CRAN
status](https://www.r-pkg.org/badges/version/admiral)](https://CRAN.R-project.org/package=admiral)
[![Test
Coverage](https://raw.githubusercontent.com/pharmaverse/admiraltemplate/badges/main/test-coverage.svg)](https://github.com/pharmaverse/admiraltemplate/actions/workflows/code-coverage.yml)
<!-- badges: end -->

## Table of Contents

-   [Extension Expectations](#extension-expectations)
-   [What is included in the
    template](#what-is-included-in-the-template)
-   [Package Extension Guidance](#package-extension-guidance)
-   [Quick Start Guide for Template](#quick-start-guide-for-template)

## Extension Expectations

To be included as an `{admiral}` package extension we expect developers
to adhere to the following standards:

-   [Code of
    Conduct](https://pharmaverse.github.io/admiral/main/CODE_OF_CONDUCT.html)
-   [Manifesto](https://pharmaverse.github.io/admiral/main/index.html?q=manifest#admiral-manifesto)
-   [Programming
    Strategy](https://pharmaverse.github.io/admiraldev/main/articles/programming_strategy.html)
-   [Development
    Process](https://pharmaverse.github.io/admiraldev/main/articles/development_process.html)
-   Follow consistent workflow checks
-   A CRAN Release means 90% or greater test coverage

We have developed this repository template in order to reduce the burden
on developers to follow these standards. This template will also help to
harmonize the `{admiral}` family of R packages, to ensure a consistent
user experience and ease of installing and adopting all the packages.
With this in mind, we expect the same core package dependencies and
versions as used for `{admiral}`.

## What is included in the template

The repository template includes the following:

-   License file (Apache 2.0 - but company co-developers need to be
    added to copyright section)
-   Required folders (R; test; templates; vignettes; renv; etc)
-   Set-up files (DESCRIPTION; NAMESPACE; renv.lock; etc)
-   Issue Templates (Bug Template; Feature Request; Documentation
    Request/Update; Onboarding)
-   Pull Request Template
-   Workflow actions (a selection of generic and specific CI/CD
    auto-checks)
-   Package badges (Test coverage; etc)
-   Branch protection rules

## Package Extension Guidance

For detailed information regarding the ethos of `{admiral}` package
extensions and how to decide if you should set your own one up, please
see our [Package Extension
Guidance](https://pharmaverse.github.io/admiraldev/main/articles/package_extensions.html).
You will also find details about team setup, suggested workflow and
lessons learned from past package extensions.

## Quick Start Guide for Template

Please thoroughly read the Package Extension Guidance above. The
intention of the Quick Start is to just get the template code into a new
repo and check that the package works in your environment. Please
contact us via slack if any issues arise.

1.  Click the Green `Use this Template` Button.
2.  Change owner to `pharmaverse` and enter your repository name
3.  Create `devel` and `patch` branches. These will be important later
    for workflows!
4.  Once repo has been created click Green Code button and download the
    repo using `https` or `ssh`
5.  Run `renv::restore()` - you will see a prompt and this will take a
    few minutes
    -   This will ensure that your development environment for your
        extension package is synced with other admiral packages
6.  Update/Remove the following files to use your extension name:
    -   `DESCRIPTION` File - Name, Authors
    -   `admiraltemplate.Rproj`
    -   `testthat.R`
    -   `News.md`
7.  Run `devtools::load_all()` and resolve issues
8.  Run `devtools::document()` and resolve issues
9.  Run `pkgdown::build_site()`
    -   Reach out to slack for help with creating a hex sticker/logo to
        replace pharmaverse logo
10. *Recommended*: Review the [documentation on the CI/CD
    workflows](https://pharmaverse.github.io/admiralci/main/#what-these-workflows-do)
    for information about how to reuse the workflows from this template.
    Pay special attention to the section on creating the `badges` orphan
    branch in [this
    section](https://pharmaverse.github.io/admiralci/main/#code-coverage).
11. Test out a dummy branch and do a Pull Request to ensure CI/CD works.
12. Any clearly dummy files like `R/my_first_fcn.R` or
    `inst/templates/ad_adxx.R` can be updated or removed.
13. Set up [branch protections
    rules](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/defining-the-mergeability-of-pull-requests/managing-a-branch-protection-rule)
    for `main`, `devel`, and optionally for `pre-release` and `test`
    depending on your branching strategy.
14. Set up and assign admin and write rights in Settings/Collaborators
    for members of the repository - using a GitHub team for all
    developers.
15. Change badges and hex image in `README.Rmd` to your package.
