export PATH="${ANTIGEN_THIS_PLUGIN_DIR}:${PATH}"

if type emacs >/dev/null 2>/dev/null; then
    # We use the absolute path so sudoedit can use it, too
    export EDITOR="$(which emacs-daemon-blocking)"
fi
