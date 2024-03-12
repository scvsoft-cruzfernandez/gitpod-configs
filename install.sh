sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sudo chsh -s $(which zsh) gitpod

echo alias gitpod=/usr/bin/gp > $HOME/.oh-my-zsh/custom/gitpod.zsh
env

if [ $GITPOD_REPO_ROOT -eq "/workspace/quizlet-web" ]; then
  echo alias cdq=\"cd /workspace/quizlet-web\" > $HOME/.oh-my-zsh/custom/quizlet.zsh
  echo cdq >> $HOME/.oh-my-zsh/custom/quizlet.zsh
  echo yarn dev:links >> $HOME/.oh-my-zsh/custom/quizlet.zsh
fi

echo export PROMPT=\''%{$fg[white]%}%M %{$fg_bold[red]%}➜ %{$fg_bold[green]%}%p %{$fg[cyan]%}%c %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'\' >> $HOME/.zshrc

# this one is not working
git config --global core.editor "vim"
# this one YES!
git config --global submodule.recurse true

# we should avoid this one, it takes forever to start gitpods, until someone fixed the docker image git version
brew upgrade git
