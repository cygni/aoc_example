# XSLT 1.0
XSLT is the successor to DSSSL as XML is the simplified successor of SGML. Since XSLT is proven to be Turing complete, you can use it for general programming.

That said, you probably shouldn't. XSLTs strength and purpose is to select and restructure all or parts of the input document, and extracting structural relationships between the input elements, not to calculate aggregate results. In a real-world scenario, you would probably use XSLT to extract and prepare all the relevant data, then hand off to another language to aggregate the result from the simpler result document. An example of good use of XSLT, that takes an annotated xhtml file with fake demo-data, transforms it into another XSLT that can then be used to transform real xml data into the original xhtml, but with real data, can be found [here](https://github.com/tobega/weffo/blob/main/weffo.xsl).

For more aggregation-oriented calculations, consider using [XQuery 1.0](https://www.w3.org/TR/2010/REC-xquery-20101214/), which takes inspiration from SQL and is aimed at aggregating results from XML documents or document databases. XQuery 1.0 is also supported by the included Saxon-B processor.

The choice in this example is to use [XSLT 1.0](https://www.w3.org/TR/xslt-10/) which works with [XPath 1.0](https://www.w3.org/TR/1999/REC-xpath-19991116/) because it has the right feel and simplicity. XSLT 2.0 is vastly more complicated, with a confusion of datatypes that don't seem to integrate well into the language, and lots more XPath functions, which is not bad per se, but ends up being more xpath-processing (XPath 2.0) than xslt-processing. Xpath 2.0 is really more aimed at serving XQuery 1.0.

The preferable way to process the input in XSLT is to `apply-templates`, with match-attributes for nodes, rather than `call-templates`, with parameters, which is why this example chooses to first do a parse-transform into more structured xml (which might be better done with an AWK-script, perhaps) and then work out the solution. Sometimes it might be worth doing even more transforms in sequence.

Included here is the jar for the [Saxon-B transformer](http://saxon.sourceforge.net/) which needs a jvm to run.

## How to build and run
"Simply" type `java -jar saxon9.jar -versionmsg:off input.xml parse.xsl | java -jar saxon9.jar -versionmsg:off -s:- aoc.xsl part=part2` (or part1 at the end) in the terminal

## Docker
According to the [Cygni AoC procedure](https://github.com/cygni/aoc_example)

## Other
For a similar feel, doing repeated transformations on data, but much less verbose and more suitable to aggregation and looping, consider looking at [Tailspin](https://github.com/cygni/aoc_example/tree/main/examples/tailspin)
