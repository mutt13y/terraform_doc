# Terraform docgen

Reads variable and output definitions. Then builds documentation in mark down.

## usage

```docgen <filelist> [--out=output file] [--verbose]```

## Inline docs

Lines start with ```#=```


```#= some text``` "some text" is added to the current block or the final block if no block is active

```#==``` - end of block

```#=DIRECTIVE= argument``` start of block

```#=``` on its own adds a blank line to the current block

### variables and outputs

terraform variable or output statement automatically start a block.

within or just after a variable or output definition the text is added to the Argument or attribute definition

### Outline

Outline section defines the page main title and first block of text. The attributes follow

```
#=OUTLINE= Title
#= text to go at the
#= top of the page
#==
```

### Sections

sections go in between the argument and attribute blocks

```
#=SECTION= section name
#= text for section
#==
```

### Footers

Footer blocks are added after the attributes

```
#=FOOTER= footer name
#= footer text
#==
```

### Unclassified text

any other lines starting ```#=``` outside of a block are added after all the footers

## Multiline doc strings

start line with ```/*=``` rest of line is ignored all lines upto but not including a line containing ```*/``` are added acording to the same rules as above. You can include section directives within the multiline comments

```
/*=
#=OUTLINE= title
this text
is all included 
in the markdown

but not this */
```