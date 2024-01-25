sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sudo chsh -s $(which zsh) gitpod

echo alias gitpod=/usr/bin/gp > $HOME/.oh-my-zsh/custom/gitpod.zsh

echo alias cdq=\"cd /workspace/quizlet-web\" > $HOME/.oh-my-zsh/custom/quizlet.zsh
echo cdq >> $HOME/.oh-my-zsh/custom/quizlet.zsh

echo export PROMPT='%{$fg[white]%}%M %{$fg_bold[red]%}➜ %{$fg_bold[green]%}%p %{$fg[cyan]%}%c %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}' >> $HOME/.oh-my-zsh/custom/prompt.zsh
