#!/usr/bin/env texlua
-- build.lua for nwputhesis
-- l3build testing framework configuration

module = "nwputhesis"

supportdir = "./testfiles/support"
checksuppfiles = {"*.tex", "*.bib", "*.cls", "*.bst", "figures/*", "*.ttf"}

installfiles = {"*.cls", "*.bst"}
sourcefiles = {"*.cls", "*.bst"}

checkengines = {"xetex"}
stdengine = "xetex"

-- 标题页测试在子目录中，需要单独配置
checkconfigs = {
  "build",
  "testfiles/config-title-page",
  "testfiles/config-toc",
  "testfiles/config-bibtex",
}

-- 排除标题页测试（它们在子目录中单独运行）
excludetests = {"01-*", "04-*", "07-*"}

typesetexe = "xelatex"
unpackexe = "xetex"
bibtexexe = "bibtex"

checkopts = "-file-line-error -halt-on-error -interaction=nonstopmode"
typesetopts = "-shell-escape -file-line-error -halt-on-error -interaction=nonstopmode"

lvtext = ".tex"
maxprintline = 79
