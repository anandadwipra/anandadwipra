# My Neovim Configuration

## Use my configuration

```bash
# Copy my nvim configuration
curl -fLo ~/.config/nvim/init.vim --create-dirs \
    https://raw.githubusercontent.com/anandadwipra/anandadwipra/main/config/Neovim/init.vim
# Install vim plugin
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# Install Plugin
vim +PlugInstall +qall > /dev/null
```
