import org.junit.jupiter.api.Test
import kotlin.test.assertEquals

internal class AocTemplateTest {

    @Test
    internal fun `solutionPart1 should return first value in input`() {
        assertEquals(solutionPart1(listOf("1","2")), "1")
    }

    @Test
    internal fun `solutionPart2 should return second value in input`() {
        assertEquals(solutionPart2(listOf("1","2")), "2")
    }
}