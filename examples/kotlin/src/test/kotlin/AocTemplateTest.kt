import io.kotest.core.spec.style.StringSpec
import io.kotest.matchers.shouldBe

internal class AocTemplateTest : StringSpec({

    "solutionPart1 should return sum of input" {
        solutionPart1(listOf(1337, 42)) shouldBe 1379
    }

    "solutionPart2 should return product of input" {
        solutionPart2(listOf(1337, 42)) shouldBe 56154
    }
})