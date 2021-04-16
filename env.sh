# Set EMACS_LAUNCHERS_DIR to this directory, then source this file to set everything up

if [ -z "${EMACS_LAUNCHERS_DIR}" ]; then
    echo 'EMACS_LAUNCHERS_DIR not set'
else
    export EMACS_LAUNCHERS_DIR
    export PATH="${EMACS_LAUNCHERS_DIR}:${PATH}"

    if type emacs >/dev/null 2>/dev/null; then
        # We use the absolute path so sudoedit can use it, too
        export EDITOR="$(which emacs-daemon-blocking)"
    fi
fi
