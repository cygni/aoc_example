import { solutionOne, solutionTwo } from "./index";

describe("typescript example test", () => {
  it("solution one", () => {
    expect(solutionOne()).toBe(1379);
  });
  it("solution two", () => {
    expect(solutionTwo()).toBe(56154);
  });
});
