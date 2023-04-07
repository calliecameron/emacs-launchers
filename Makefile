.PHONY: all
all: lint

.PHONY: lint
lint:
	shellcheck aliases.sh emacs-daemon emacs-daemon-blocking emacs-daemon-core \
		emacs-daemon-dired emacs-daemon-kill emacs-daemon-new-frame \
		emacs-daemon-path-open emacs-daemon-terminal env.sh
	shfmt -l -d -i 4 emacs-daemon emacs-daemon-blocking emacs-daemon-core \
		emacs-daemon-dired emacs-daemon-kill emacs-daemon-new-frame \
		emacs-daemon-path-open emacs-daemon-terminal env.sh
