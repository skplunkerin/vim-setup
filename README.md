# Steps

1. clone project to home directory
2. rename `~/vim-setup` to `~/.vim`
3. Create symbolic links:
   - run `sudo ln -s .vim/.vimrc` in your home directory
   - run `sudo ln -s ~/.vim/nvim` in your home `~/.config/` directory
4. create the following files from the examples in this repo and
   edit their contents to match your needs:
   - `cp .vim/.gitconfig ~/.gitconfig` (or just copy out relevant entries)
   - `cp .vim/.gitignore_global ~/.gitignore_global`
   - Install [Mert](https://github.com/eggplanetio/mert) via `npm install -g mert`,
     then: `cp .vim/.mertrc-example ~/.mertrc`
   - `cp .vim/.profile-example ~/.profile`
   - `cp .vim/.zshrc-example ~/.zshrc`
   - `cp .vim/.zsh_profile-example ~/.zsh_profile`

**NOTE:** if you already have `~/.vim/` and `~/.vimrc`, then just rename them (or delete?) first

- `mv .vim .vim-old && mv .vimrc .vimrc-old`
