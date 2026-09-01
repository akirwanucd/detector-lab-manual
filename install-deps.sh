#!/bin/bash

# a simple script to install TeX dependencies for the course manual
# this assumes the user has `tlmgr`; it will exit if you don't
#
# if you don't have tlmgr and you don't want to install a full version of
# texlive (it's big and unweildy) then you can try to install TinyTeX with
#
# $ wget -qO- "https://yihui.org/tinytex/install-bin-unix.sh" | sh
#
# which installs to ~/.TinyTeX and provides the minimal working tools required

if ! command -v tlmgr &>/dev/null; then
  echo "tlmgr not found; please install TinyTeX or TeXLive"
  echo "See e.g. https://yihui.org/tinyex/"
  exit 1
fi

echo "Installing required LaTeX packages..."
tlmgr install \
  ifmtarg \
  hardwrap \
  sauerj \
  tcolorbox \
  caption \
  listings \
  pdfpages \
  units \
  changepage \
  fancyhdr \
  geometry \
  hyperref \
  natbib \
  paralist \
  placeins \
  ragged2e \
  setspace \
  textcase \
  titlesec \
  titletoc \
  xcolor \
  xifthen \
  bera \
  helvetic \
  mathpazo \
  microtype \
  soul \
  makeindex \
  2>/dev/null

echo "Testing compilation..."
if latexmk -pdf -interaction=nonstopmode main.tex; then
  echo "Setup complete! Document compiled successfully."
  echo "Make sure to check in-text references: you may need to compile again!"
else
  echo "There might still be missing packages. Check the output above."
fi
