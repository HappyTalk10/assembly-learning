# assembly-learning

PC-LABO「やさしいアセンブラ入門」のサンプルコードです。

## 動作環境

- WSL2のUbuntu（20.04 LTS以降）
- x86-64のパソコン
- `nasm`、`gcc`、`gdb`、`binutils`（`ld` など）

## ツールのインストール

Ubuntuのターミナルで、次のコマンドを実行します。

```bash
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y nasm gcc gdb binutils
```

## 構成
```
assembly-learning/
├── README.md
├── .gitignore
├── 01/exit42.asm
├── 02/calc.asm
├── 02/hello.asm
├── 03/memory.asm
├── 03/array.asm
└── 03/rewrite.asm
```

| フォルダ | ファイル | 内容 |
| --- | --- | --- |
| `01` | `exit42.asm` | 終了コード42を返す（第1回） |
| `02` | `calc.asm` | 計算して終了コードを返す（第2回） |
| `02` | `hello.asm` | Hello, World! を表示する（第2回） |
| `03` | `memory.asm` | メモリの値を使って計算する（第3回） |
| `03` | `array.asm` | 配列の要素を足し合わせる（第3回） |
| `03` | `rewrite.asm` | 文字列を書き換えて表示する（第3回） |

## ビルドと実行

例として、`01/exit42.asm` の場合です。

```bash
cd 01
nasm -f elf64 exit42.asm -o exit42.o
ld exit42.o -o exit42
./exit42
echo $?
```

他のファイルも、ファイル名を置き換えて同じ手順で実行できます。
