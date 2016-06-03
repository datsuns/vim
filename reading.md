# コードリーディングなりした結果を記載する

# next.
* mainでも

# 重要そうなデータ
* IObuff
    * sprintf()の結果が格納される
* NameBuff
    * ファイル名の展開場所
    * どんな操作中に登場するファイル名か？は分かってないけど
* mparm_T
    * イロイロあるパラメータ

# コンパイルスイッチの意味
* __EMX__

# ソースコード

## src/main.c
* NO_VIM_MAIN
    * たぶんテスト用「テストにmain.cを取り込みたいけどmain()要らん」
* VimMain()
    * gvim用のmain

## src/if_lua.c
* do_luaeval()だけよくわからんが、結局のところEXコマンドを登録するだけっぽい
* たぶん他のif_xxx系もやろうとしていることは同じ(だろう)

## misc
# exコマンドの登録
* src/ex_cmds.hに登録するみたい
