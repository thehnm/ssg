# fork of ssg5 - static site generator

make a static site with find(1), grep(1), and lowdown or markdown.pl.
`ssg` is a static site generator written in shell. optionally it converts markdown files to html with lowdown(1) or markdown.pl.
Unless a page has `<html>` tag ssg5 extracts its title from `<h1>` tag, wraps the page with `_header.html`, `_footer.html`.
Then it copies everything (excluding .* or paths listed in src/.ssgignore) from src to dst directory.

## Installation

```sh
sudo make install
```

## Usage

The following example requires either lowdown or markdown.pl

```sh
ssg-initsite test
cd test
echo "# First Website" > src/index.md
ssg src dst 'test' 'http://www'
```

The rendered site is available at dst/index.html

## Uninstallation

```sh
sudo make uninstall
```

# Credits

Based on Roman Zolotarev <hi at romanzolotarev dot com> source code
https://www.romanzolotarev.com/ssg.html
