package dev.secondsun.ca65;


import org.antlr.v4.runtime.*;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.atomic.AtomicInteger;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class CA65BasicTests {
    @Test
    @DisplayName("Read an integer from a file")
    public void reatInt() throws IOException {
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
        assertEquals(ca65Parser.INT, token.getType());
        assertEquals("65", token.getText());
        assertEquals(0, errors.get());
    }

    private InputStream resource(String filename) {

        var stream = CA65BasicTests.class.getClassLoader().getResourceAsStream("65.s");
        return stream;

    }
}
