Emacs Launcher Scripts
======================

The Emacs daemon is fantastic, but awkward to use. These scripts make it more pleasant.

In each case:
 - if the daemon is already running, use it; otherwise, launch a new daemon
 - if the script has arguments, open each of those files
 - if the script has no arguments:
   - check if data is being piped/redirected to stdin; if so, read the data and open it (so you can do things like `ls | emacs-daemon`, for example)
   - else, open a new frame or switch to an existing one (script-specific)

When opening a new frame, the scripts will detect whether you are in X, and open the appropriate kind of frame. All the scripts also work in term.el buffers from inside Emacs.

The difference between the scripts is how/if they open a new frame:
 - `emacs-daemon` opens files in an existing frame, if possible
 - `emacs-daemon-new-frame` always opens files in a new frame
 - `emacs-daemon-terminal` always opens a new ncurses frame, even in X
 - `emacs-daemon-blocking` always opens a blocking frame, even in X (useful as `EDITOR`)
 - `emacs-daemon-path-open` searches for its arguments on `PATH`, rather than treating them as a normal path
 - `emacs-daemon-dired` is like `emacs-daemon`, but only for directories

One additional script:
- `emacs-daemon-kill` prompts to shutdown any existing daemon


Installation
------------

Add this directory to your `PATH`.


Configuration
-------------

My shell configuration:

    export EDITOR='emacs-daemon-blocking'

    alias e='emacs-daemon'
    alias en='emacs-daemon-new-frame'
    alias et='emacs-daemon-terminal'
    alias d='emacs-daemon-dired'
    alias ep='emacs-daemon-path-open'
    alias ek='emacs-daemon-kill'

And make emacs-daemon the default program for text files in X:

    xdg-desktop-menu install --novendor emacs-daemon.desktop

    xdg-mime default emacs-daemon.desktop text/english text/plain text/x-makefile text/x-c++hdr text/x-c++src text/x-chdr text/x-csrc text/x-java text/x-moc text/x-pascal text/x-tcl text/x-tex application/x-shellscript text/x-c text/x-c++
