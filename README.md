# PHYC40870 Course Manual

This is the course manual for the Space Detector Lab at UCD. It utilizes the `tufte-book` class in LaTeX, and is a work in progress...

### Dependencies

This repo is agnostic, so I'm assuming that none of the LaTeX packages are installed. At a minimum you need to be able to run `tlmgr` and `latexmk`. To install the dependencies, make the `install-deps.sh` file executable and run it:

```bash 
chmod +x install-deps.sh 
./install-deps.sh 
```

If you don't have a LaTeX environment at all, you can install `texlive` through your favorite package manager, or if you don't want a million packages you can install [TinyTeX](https://yihui.org/tinyex/):

```bash
wget -qO- "https://tinytex.yihui.org/install-bin-unix.sh" | sh
```

and then run `install-deps.sh`.
