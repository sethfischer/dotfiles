.PHONY: install-git-hooks
install-git-hooks: .git/hooks/pre-commit

.git/hooks/%: git-hooks/%.sh
	install --mode=700 $< $@

.PHONY: lint
lint: lint-shell

.PHONY: lint-shell
lint-shell:
	./$@.sh
