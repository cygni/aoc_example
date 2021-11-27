# XSLT 1.0
XSLT is the successor to DSSSL as XML is the simplified successor of SGML. Since XSLT is proven to be Turing complete, you can use it for general programming.

The choice here is to use [XSLT 1.0](https://www.w3.org/TR/xslt-10/) which works with [XPath 1.0](https://www.w3.org/TR/1999/REC-xpath-19991116/) because it has the right feel and simplicity. XSLT 2.0 is boring and vastly more complicated, with a confusion of datatypes, and lots more functions which ends up being more xpath-processing than xslt-processing.

The preferable way to process the input is to `apply-templates` rather than `call-templates`, which is why this example chooses to first do a parse-transform into more structured xml (which might be better done with an AWK-script, perhaps) and then work out the solution. Sometimes it might be worth doing even more transforms in sequence.

Included here is the jar for the [Saxon-B transformer](http://saxon.sourceforge.net/) which needs a jvm to run.

## How to build and run
"Simply" type `java -jar saxon9.jar -versionmsg:off input.xml parse.xsl | java -jar saxon9.jar -versionmsg:off -s:- aoc.xsl part=part2` (or part1 at the end) in the terminal

## Docker
According to the [Cygni AoC procedure](https://github.com/cygni/aoc_example)
