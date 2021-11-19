import ballerina/test;

@test:Config {}
function testPart1() {
  test:assertEquals(solutionPart1(), 1379);
}

@test:Config {}
function testPart2() {
  test:assertEquals(solutionPart2(), 56154);
}