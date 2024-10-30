## Installation

My dotfiles are managed using the [bombadil](https://github.com/oknozor/toml-bombadil) tool. To install the dotfiles you will need to install bombadil using either your distros package manager or cargo.

```bash
sudo pacman -S toml-bombadil
```

```bash
cargo install toml-bombadil
```

After installing bombadil you can choose a profile to install (either desktop or laptop)
** This command moves your currents configs to the hypr_dotfiles/.dots directory **

```bash
git clone https://github.com/HenrySteinmetz/hypr_dotfiles.git
cd hypr_dotfiles
bombadil install ./bombadil.toml
bombadil link -p <Profile>
```

## Expanding on this rice

I am currently mostly satisfied with these dotfiles if you have update suggestions you can create pull requests or issues (just don't assume that I will look at them), but if you would for instance like to change the accent color bombadil provides the ability to use template variables and the like and you could just change the variable in colors.toml and it would apply to all places the variable is used.
