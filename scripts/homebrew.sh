if ! command -v brew &>/dev/null; then
  echo "Installing Homebrew..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" &>/dev/null
  echo "Homebrew installed."
fi

if ! brew info cask &>/dev/null; then
  echo "Installing Homebrew cask..."
  brew tap caskroom/cask &>/dev/null
  echo "Homebrew cask installed."
fi

if ! mas version &>/dev/null; then
  echo "Installing mas-cli (Mac Appstore CLI).."
  brew install mas &>/dev/null
  echo "Mas-cli installed."
fi

echo "Installing brews, casks and apps.."
brew bundle

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo "All is good. Ready to go!"
