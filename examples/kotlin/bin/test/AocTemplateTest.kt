import org.junit.jupiter.api.Test
import kotlin.test.assertEquals

internal class AocTemplateTest {

    @Test
    internal fun `solutionPart1 should return sum of input`() {
        assertEquals(solutionPart1(listOf(1337,42)), 1379)
    }

    @Test
    internal fun `solutionPart2 should return product of input`() {
        assertEquals(solutionPart2(listOf(1337,42)), 56154)
    }
}