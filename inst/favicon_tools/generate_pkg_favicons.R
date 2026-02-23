# Script to generate Apple Touch Icons and Favicon
#
# To use this script:
# During development:
#   source("inst/favicon_tools/generate_pkg_favicons.R")
# After package installation:
#   source(system.file("favicon_tools", "generate_pkg_favicons.R", package = "admiraltemplate"))
#
# Usage:
#   generate_pkg_favicons(
#     logo_path = "man/figures/logo.png",
#     output_dir = "pkgdown/favicon"
#   )
#
# Examples:
# Method 1: Using default parameters
# Uses default logo path (man/figures/logo.png)
# and default output directory (pkgdown/favicon)
# generate_pkg_favicons()
#
# Method 2: Specifying custom logo path
# Uses a specific logo from the project
# generate_pkg_favicons(logo_path = "path/to/custom_logo.png")
#
# Method 3: Specifying custom output directory
# Uses a specific output location
# generate_pkg_favicons(output_dir = "path/to/output_dir")

library(magick)
library(purrr)

generate_pkg_favicons <- function(
    logo_path = "man/figures/logo.png",
    output_dir = "pkgdown/favicon") {
  # Configuration
  apple_sizes <- c(60, 76, 120, 152, 180)
  favicon_sizes <- c(16, 32)

  # Create output directory if it doesn't exist
  dir.create(output_dir, recursive = TRUE, showWarnings = FALSE)

  # Internal function to create and save icons
  create_icon <- function(img, size, filename) {
    tryCatch(
      {
        # Resize image
        img_resized <- image_resize(img, sprintf("%dx%d", size, size))

        # Create full output path
        output_path <- file.path(output_dir, filename)

        # Write resized image
        image_write(img_resized, output_path)

        # Print creation message
        cat(sprintf("Created %s (%dx%d)\n", filename, size, size))
      },
      error = function(e) {
        warning(sprintf("Failed to create %s: %s", filename, e$message))
      }
    )
  }

  # Read the source logo
  logo <- tryCatch(
    {
      image_read(logo_path)
    },
    error = function(e) {
      stop("Could not read logo image: ", e$message)
    }
  )

  # Generate Apple touch icons
  walk(apple_sizes, function(size) {
    create_icon(logo, size, sprintf("apple-touch-icon-%dx%d.png", size, size))
  })

  # Create generic Apple touch icon
  create_icon(logo, 180, "apple-touch-icon.png")

  # Generate favicon sizes
  walk(favicon_sizes, function(size) {
    create_icon(logo, size, sprintf("favicon-%dx%d.png", size, size))
  })

  # Create .ico file
  tryCatch(
    {
      # Check if ImageMagick's convert is available
      if (Sys.which("convert") == "") {
        stop("ImageMagick 'convert' command not found")
      }

      system2("convert",
        args = c(
          logo_path,
          "-resize", "16x16",
          "-resize", "32x32",
          file.path(output_dir, "favicon.ico")
        ),
        stdout = TRUE,
        stderr = TRUE
      )

      cat("Successfully created favicon.ico\n")
    },
    error = function(e) {
      warning("Failed to create favicon.ico: ", e$message)
    }
  )

  # Invisible return
  invisible(NULL)
}
