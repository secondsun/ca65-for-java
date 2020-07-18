package dev.secondsun.ca65;

import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.ParseTree;
import org.antlr.v4.runtime.tree.ParseTreeListener;
import org.antlr.v4.runtime.tree.ParseTreeWalker;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

import java.io.IOException;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

import static dev.secondsun.ca65.CA65BasicTests.lexer;
import static dev.secondsun.ca65.CA65BasicTests.resource;
import static org.junit.jupiter.api.Assertions.*;
import static org.junit.jupiter.api.Assertions.assertEquals;

public class CA65DirectiveTests {

    @Test
    @DisplayName("Create a directive node as an object")
    public void makeDirectiveNode() throws IOException {
        final AtomicReference<ca65Parser.DirectiveContext> node = new AtomicReference<>();
        ca65Lexer lexer = lexer("include.s");
        CommonTokenStream tokens = new CommonTokenStream(lexer);
        ca65Parser parser = new ca65Parser(tokens);
        parser.setBuildParseTree(true);

        ParseTree tree = parser.file(); // parse
        // show tree in text form
        System.out.println(tree.toStringTree(parser));

        ParseTreeWalker walker = new ParseTreeWalker();
        ParseTreeListener evalProp = new ca65BaseListener(){
            @Override
            public void exitDirective(ca65Parser.DirectiveContext ctx) {
                super.exitDirective(ctx);
                node.set(ctx);
            }
        };
        walker.walk(evalProp, tree);

        assertEquals("\"libSFX.i\"", node.get().arguments().getChild(0).getText());

    }

    @Test
    @DisplayName("Test Enum")
    public void testEnum() throws IOException {


        ca65Lexer lexer = lexer("enum.s");

        CommonTokenStream tokens = new CommonTokenStream(lexer);
        ca65Parser parser = new ca65Parser(tokens);
        parser.setBuildParseTree(true);

        var tree = parser.file(); // parse
        // show tree in text form
        System.out.println(tree.toStringTree(parser));

        var firstEnumNode = tree.line(0).directive();
        var firstEnumDirective = firstEnumNode.multiline_directive().enum_directive();
        assertEquals("errorcodes", firstEnumDirective.ID().getText());

        var decList = firstEnumDirective.enum_body().symbol_declaration();
        assertEquals(3, decList.size());

        var secondEnumNode = tree.line(1).directive();
        var secondEnumDirective = secondEnumNode.multiline_directive().enum_directive();
        assertEquals(null, secondEnumDirective.ID());
        decList = secondEnumDirective.enum_body().symbol_declaration();
        assertEquals(6, decList.size());
        assertEquals("-1", decList.get(0).assignment().number().getText());
        assertEquals("EAGAIN", decList.get(5).assignment().label().getText());

    }

    @Test
    @DisplayName("Test enum with if in body")
    public void testEnumWithIf() {
        fail("not implemented");
    }

    @Test
    @DisplayName("Test enum with macro in body")
    public void testEnumWithMacro() {
        fail("not implemented");
    }

}