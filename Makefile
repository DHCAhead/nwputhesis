# Makefile for NWPUThesis

SAMPLE  = graduate
LATEXMK = latexmk

.PHONY: all thesis clean view viewthesis wordcount

# 默认目标：构建示例论文
all: thesis

# 构建示例论文（编译配置见 .latexmkrc）
thesis: build/$(SAMPLE).pdf

build/$(SAMPLE).pdf:
	$(LATEXMK) $(SAMPLE)

# 查看生成的 PDF
view: viewthesis

viewthesis: thesis
	$(LATEXMK) -pv $(SAMPLE)

# 清理辅助文件
clean:
	$(LATEXMK) -C $(SAMPLE)
	-rm -rf build

# 字数统计
wordcount: thesis
	texcount -inc -chinese -utf8 $(SAMPLE).tex
