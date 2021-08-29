# https://qiita.com/b4b4r07/items/b70178e021bef12cd4a2
DOTFILES_EXCLUDES := .DS_Store .git .gitmodules .travis.yml
DOTFILES_TARGET   := $(wildcard .??*) bin
DOTFILES_DIR      := $(PWD)
DOTFILES_FILES    := $(filter-out $(DOTFILES_EXCLUDES), $(DOTFILES_TARGET))

deploy:
	@$(foreach val, $(DOTFILES_FILES), ln -sfnv $(abspath $(val)) $(HOME)/$(val);)

initialize-archlinux:
	@$(foreach val, $(wildcard ./etc/initialize-archlinux/*.sh), bash $(val);)
