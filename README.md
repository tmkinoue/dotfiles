# dotfiles

Mac環境で初期設定しておきたい各種設定ファイル

## install
1. Homebrewをinstall
    - https://brew.sh/index_ja を参照

1. zsh-completionsインストール

    ```
    brew install zsh-completions
    ```

1. ssh key発行

    ```
    ssh-keygen -t ed25519 -f ~/.ssh/id_personal_ed25519
    ```
    ※ keyの名前は[gitconfig](/.gitconfig_private)の設定に合わせる

1. ssh keyをgithubに登録
    - https://github.com/settings/keys から追加


1. ssh keyを指定してgithubからclone

    ```
    git -c core.sshCommand="ssh -i ~/.ssh/id_personal_ed25519" clone git@github.com:tmkinoue/dotfiles.git
    ```

1. [setting.sh](/setting.sh)を実行
    ```
    zsh setting.sh
    ```
