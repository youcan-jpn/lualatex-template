#!/usr/bin/env perl

use v5.10;
use experimental qw(smartmatch);

# tex options
$lualatex     = 'lualatex -shell-escape -synctex=1 -interaction=nonstopmode -file-line-error';
$pdflualatex  = $lualatex;
$biber        = 'biber %O --bblencoding=utf8 -u -U --output_safechars %B';
$bibtex       = 'bibtex %O %B';
$makeindex    = 'mendex %O -o %D %S';
$max_repeat   = 5;
$pdf_mode     = 4;
$out_dir       = 'out';
$cleanup_mode = 2;

$pvc_view_file_via_temporary = 0;

# local config
$local_latexmkrc_path = './.latexmkrc.local';
require $local_latexmkrc_path if -e $local_latexmkrc_path;