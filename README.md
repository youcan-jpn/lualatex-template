# LuaLaTeX Template

## How to build latex
```bash
$ docker compose up -d
$ docker exec -it tex-ubuntu bash
$ latexindent -w src/main.tex
$ latexmk src/main.tex
$ latexmk -c src/main.tex
```

## Notes
- documentclassにltjsarticleを指定した場合はluatexjaが自動的に読み込まれるので，\usepackage{luatexja}は不要
- documentclass[japanese]{ltjsarticle}とすると，biblatexの出力が変になるためjapaneseは指定していない
  - inやpagesなどに対応する日本語が定義されていないためだと思われる
- vscodeのdevcontainerとlatex workshopを使わずに直接latexmkを使ってビルドしている
- 補完・プレビューでlatex workshopを利用したい場合は，
  - `"latex-workshop.latex.autoBuild.run": "never"`
  - `"latex-workshop.latex.autoClean.run": "never"`
  - `"latex-workshop.latex.outDir": "../out"`
  - `"latex-workshop.latex.recipes": []`
  を設定しておくと良さそう

## Issues
- latex workshopのclean up auxiliary filesは使えない
  - `latexmk -c src/main.tex`を使う
- latex workshopのpreviewで，クリックした箇所のソースコードを参照することができない

## References
- [upLaTeX から LuaTeX に移行する](https://mizunashi-mana.github.io/blog/posts/2021/12/migrate-to-luatexja/)
  - luatex-jaはtexliveにもとから含まれている
- [p/upLaTeX から LuaLaTeX へ移行すべき理由と方法](https://www.metaphysica.info/uplatex-to-lualatex/)
