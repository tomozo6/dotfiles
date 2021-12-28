# dotfiles

## vim関連

pluginは[vim-plug](https://github.com/junegunn/vim-plug)を使用して管理しています。

vim-plugのインストール方法

```bash
mkdir -p ~/.vim/autoload/
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

あとは当repoで管理している`.vimrc`をホームディレクトリに配置し(シンボリックリンク設定でも可)をし、vimを起動します。
`PlugInstall`を入力しセットアップ完了となります。

## direnv関連

主にAWSのスイッチロール用に使用しています。
まずは当repoで管理している`.direnvrc`をホームディレクトリに配置します(シンボリックリンク設定でも可)。

また各プロジェクトディレクトリ(AWSアカウント別)配下に`.envrc`ファイルを作成します。
例えばAWSのプロファイル名がdevの場合は以下のようになります。

```bash
 use aws_profile dev
```

 これでディレクトリにcdしただけで、aws-vault 経由で環境変数が
 exportされた状態になります。

 [参考URL](https://qiita.com/minamijoyo/items/89cdb1db803c5d7a656f)