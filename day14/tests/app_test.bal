import ballerina/test;

@test:Config {}
function testPart1() {
  test:assertEquals(solutionPart1(), "1337");
}

@test:Config {}
function testPart2() {
  test:assertEquals(solutionPart2(), "42");
}