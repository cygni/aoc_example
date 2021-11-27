FROM openjdk:17-alpine
COPY . .
CMD java -jar saxon9.jar -versionmsg:off input.xml parse.xsl | java -jar saxon9.jar -versionmsg:off -s:- aoc.xsl part=$part