PREFIX=/usr/local
GAMEDIR=/srv/games/minecraft
BASH_COMPLETION_DIR=/etc/bash_completion.d

install-gamedir:
	if ! test -d $(GAMEDIR); then \
		install -d $(GAMEDIR); \
		if test `id -u` -eq 0 && test -n "$$SUDO_UID"; then \
			chown $$SUDO_UID:$$SUDO_GID $(GAMEDIR); \
		fi \
	fi

install: install-gamedir
	install -d $(PREFIX)/bin $(BASH_COMPLETION_DIR)
	install -m 0755 minecraft $(PREFIX)/bin
	install -m 0644 bash-completion/minecraft $(BASH_COMPLETION_DIR)/

uninstall:
	rm -f $(PREFIX)/bin/minecraft $(BASH_COMPLETION_DIR)/minecraft
