package dev.secondsun.ca65;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

import java.io.IOException;

import static dev.secondsun.ca65.CA65BasicTests.lexer;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.fail;

/**
 * These tests will ensure that the lexer follows the ca65 tokens by
 * borrowing heavily from https://github.com/cc65/cc65
 */
public class TokenizationTests {
    @Test
    @DisplayName("$ddd is a hex number")
    public void testParseHexNumber() throws IOException {
        var lexer = lexer("numbers.s");
        var token = lexer.nextToken();

        assertEquals("$64", token.getText());
        assertEquals(ca65Lexer.INT, token.getType());
    }

    @Test
    @DisplayName("$ddd is a PC if DollarIsPC")
    public void testParsePCNumber() {
        fail("Not implemented");
    }

    @Test
    @DisplayName("S is a token in 65816 but not in default mode")
    public void testParseLabelMode() {
        fail("Not implemented: See ca65 scanner.c 1151");
    }

    @Test
    @DisplayName("Test scoped symbols")
    public void testScopedSymbols() {
        fail("see symbol.c #64");
    }

}

