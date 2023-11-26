OUT:=$(HOME)/Web/site/slides/2023/math4bio
LOG:=$(HOME)/Web/blog/_data/auto/slides2023.yml
IMG:=images
TGT_HTML:=$(patsubst %.md, $(OUT)/%.html, $(wildcard *.md))
TGT_IMG:=$(patsubst $(IMG)/%, $(OUT)/$(IMG)/%, $(wildcard $(IMG)/*))
TGT_SVG:=$(patsubst gv/%.gv, $(IMG)/%.svg, $(wildcard gv/*.gv))

all: $(TGT_HTML) $(TGT_IMG) $(TGT_SVG) log

log: $(LOG)

$(OUT)/%.html: %.md defaults.yaml template.html
	pandoc --defaults=defaults.yaml $< -o $@

$(IMG)/%.svg: gv/%.gv
	dot -Tsvg $^ > $@

$(OUT)/$(IMG)/%: $(IMG)/%
	if [ -f $^ ]; then cp $^ $@; fi

$(LOG): $(wildcard class*.md)
	cd ../.. ; awk -f meta2yaml.awk math4bio/slides/class*.md > $(LOG)

%.md: %.Rmd
	Rscript -e 'library(knitr); opts_chunk$$set(fig.path="images/"); opts_knit$$set(unnamed.chunk.label="$*"); knit("$^","$@", quiet=TRUE)'
