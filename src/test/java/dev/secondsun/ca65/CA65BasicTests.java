package dev.secondsun.ca65;


import org.antlr.v4.runtime.*;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.atomic.AtomicInteger;

import static org.junit.jupiter.api.Assertions.assertEquals;

/**
 * This class tests my first attempts at a java language tool for ca65.
 * 
 * This was my starting point.
 * 
 */
public class CA65BasicTests {
    @Test
    @DisplayName("Read an integer from a file")
    public void readInt() throws IOException {
        var source = CharStreams.fromStream(resource("65.s"));
        AtomicInteger errors = new AtomicInteger(0);

        ca65Lexer lexer = new ca65Lexer(source);
        lexer.addErrorListener(new BaseErrorListener() {
            @Override
            public void syntaxError(Recognizer<?, ?> recognizer, Object offendingSymbol, int line, int charPositionInLine, String msg, RecognitionException e) {
                errors.incrementAndGet();
            }
        });
        var token = lexer.nextToken();

        assertEquals(ca65Lexer.INT, token.getType());
        assertEquals("65", token.getText());
        assertEquals(0, errors.get());
    }

    @Test
    @DisplayName("Test Include directive")
    public void testIncludeDirective() throws IOException {
        var source = CharStreams.fromStream(resource("include.s"));
        AtomicInteger errors = new AtomicInteger(0);

        ca65Lexer lexer = new ca65Lexer(source);
        lexer.addErrorListener(new BaseErrorListener() {
            @Override
            public void syntaxError(Recognizer<?, ?> recognizer, Object offendingSymbol, int line, int charPositionInLine, String msg, RecognitionException e) {
                errors.incrementAndGet();
            }
        });

        assertEquals(0, errors.get());

        var token = lexer.nextToken();

        assertEquals(ca65Lexer.SINGLE_LINE_DIRECTIVE, token.getType());
        assertEquals(".include", token.getText());
        
        token = lexer.nextToken();

        assertEquals(ca65Lexer.STRING, token.getType());
        assertEquals("\"libSFX.i\"", token.getText());

    }

    public static InputStream resource(String filename) {

        var stream = CA65BasicTests.class.getClassLoader().getResourceAsStream(filename);
        return stream;

    }
}
