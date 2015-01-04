$Header: /home/cvsroot/abntex/LEIAME.make,v 1.6 2002/12/04 12:39:24 gweber Exp $

O arquivo Makefile cont�m todas as fun��es relativas ao pacote
abnTeX bem como da homepage http://abntex.codigolivre.org.br


1) Documenta��o
  a) Gerar toda a documenta��o e coloca em compiled.docs:
	make doc

  b) Gerar partes da documenta��o (autoexplicativo):
	make doc-dvi
	make doc-ps
	make doc-pdf
	make doc-html

2) Homepage http://abntex.codigolivre.org.br
	make homepage

3) Limpeza
  a) de arquivos intermedi�rios
	make doc-clean

  b) Remo��o completa de compiled.doc
	make clean

4) Pacotes de distribui��o
  a) arquivo *.tgz para Linux (tetex)
  	make linux-tgz
	make linux-doc
  b) arquivo *.zip para windows (�rvore de diret�rios igual ao do tetex
  	make windows-zip
	make windows-doc-zip

5) instala��o linux/tetex
  prov�velmente voc� ter� de fazer isso como usu�rio root
  a) instalar
  	make install
  b) desinstalar
  	make uninstall
  c) instala��o m�nima a partir do cvs/abntex, isto permite instalar
     r�pidamente os principais arquivos baixados via um cvs update
     Essa op��o s� � interessante para os desenvolvedores e quem quer
     testar a �ltima vers�o ainda n�o dispon�vel.
  	make install-from-cvs

6) gera��o de pacote RPM para distribui��es linux com $TEXMFMAIN=/usr/share/texmf
  a) torne-se root
  b)
  	make conectiva-rpm
  c) os pacotes estar�o em /usr/src/rpm/SPRMS e RPMS/noarch.
     obs: voc� deve fazer isso como root e tenha certeza de ter removido
     pacotes instalados de abntex e abntex-doc (rpm -e abntex abntex-doc)

7) nova vers�o/release:
  a) edite abntex_version, abntex_release, abntex.spec
  b) como root:
  	make new-release

8) enviar novos pacotes para upload.codigolivre.org.br
	make upload
   obs: n�o esque�a de gerar os pacotes primeiro

A SER FEITO:
make para instala��o windows, se � que isso faz sentido.