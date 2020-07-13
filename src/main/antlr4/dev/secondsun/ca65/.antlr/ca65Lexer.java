// Generated from c:\Users\secon\Projects\ca65-for-java\src\main\antlr4\dev\secondsun\ca65\ca65.g4 by ANTLR 4.8
import org.antlr.v4.runtime.Lexer;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.TokenStream;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.misc.*;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class ca65Lexer extends Lexer {
	static { RuntimeMetaData.checkVersion("4.8", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		T__0=1, STRING=2, INT=3, DIRECTIVE=4, ID=5, NL=6, WS=7;
	public static String[] channelNames = {
		"DEFAULT_TOKEN_CHANNEL", "HIDDEN"
	};

	public static String[] modeNames = {
		"DEFAULT_MODE"
	};

	private static String[] makeRuleNames() {
		return new String[] {
			"T__0", "STRING", "INT", "DIRECTIVE", "ID", "COMMENT", "NL", "WS"
		};
	}
	public static final String[] ruleNames = makeRuleNames();

	private static String[] makeLiteralNames() {
		return new String[] {
			null, "':'", null, null, "'.include'"
		};
	}
	private static final String[] _LITERAL_NAMES = makeLiteralNames();
	private static String[] makeSymbolicNames() {
		return new String[] {
			null, null, "STRING", "INT", "DIRECTIVE", "ID", "NL", "WS"
		};
	}
	private static final String[] _SYMBOLIC_NAMES = makeSymbolicNames();
	public static final Vocabulary VOCABULARY = new VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

	/**
	 * @deprecated Use {@link #VOCABULARY} instead.
	 */
	@Deprecated
	public static final String[] tokenNames;
	static {
		tokenNames = new String[_SYMBOLIC_NAMES.length];
		for (int i = 0; i < tokenNames.length; i++) {
			tokenNames[i] = VOCABULARY.getLiteralName(i);
			if (tokenNames[i] == null) {
				tokenNames[i] = VOCABULARY.getSymbolicName(i);
			}

			if (tokenNames[i] == null) {
				tokenNames[i] = "<INVALID>";
			}
		}
	}

	@Override
	@Deprecated
	public String[] getTokenNames() {
		return tokenNames;
	}

	@Override

	public Vocabulary getVocabulary() {
		return VOCABULARY;
	}


	public ca65Lexer(CharStream input) {
		super(input);
		_interp = new LexerATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	@Override
	public String getGrammarFileName() { return "ca65.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public String[] getChannelNames() { return channelNames; }

	@Override
	public String[] getModeNames() { return modeNames; }

	@Override
	public ATN getATN() { return _ATN; }

	public static final String _serializedATN =
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\2\tN\b\1\4\2\t\2\4"+
		"\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\3\2\3\2\3\3\3\3"+
		"\3\3\3\3\7\3\32\n\3\f\3\16\3\35\13\3\3\3\3\3\3\4\6\4\"\n\4\r\4\16\4#\3"+
		"\5\3\5\3\5\3\5\3\5\3\5\3\5\3\5\3\5\3\6\3\6\6\6\61\n\6\r\6\16\6\62\3\7"+
		"\3\7\7\7\67\n\7\f\7\16\7:\13\7\3\7\5\7=\n\7\3\7\3\7\3\7\3\7\3\b\5\bD\n"+
		"\b\3\b\3\b\3\t\6\tI\n\t\r\t\16\tJ\3\t\3\t\4\338\2\n\3\3\5\4\7\5\t\6\13"+
		"\7\r\2\17\b\21\t\3\2\6\3\2\62;\4\2C\\c|\5\2\62;C\\c|\5\2\13\f\17\17\""+
		"\"\2U\2\3\3\2\2\2\2\5\3\2\2\2\2\7\3\2\2\2\2\t\3\2\2\2\2\13\3\2\2\2\2\r"+
		"\3\2\2\2\2\17\3\2\2\2\2\21\3\2\2\2\3\23\3\2\2\2\5\25\3\2\2\2\7!\3\2\2"+
		"\2\t%\3\2\2\2\13.\3\2\2\2\r\64\3\2\2\2\17C\3\2\2\2\21H\3\2\2\2\23\24\7"+
		"<\2\2\24\4\3\2\2\2\25\33\7$\2\2\26\27\7^\2\2\27\32\7$\2\2\30\32\13\2\2"+
		"\2\31\26\3\2\2\2\31\30\3\2\2\2\32\35\3\2\2\2\33\34\3\2\2\2\33\31\3\2\2"+
		"\2\34\36\3\2\2\2\35\33\3\2\2\2\36\37\7$\2\2\37\6\3\2\2\2 \"\t\2\2\2! "+
		"\3\2\2\2\"#\3\2\2\2#!\3\2\2\2#$\3\2\2\2$\b\3\2\2\2%&\7\60\2\2&\'\7k\2"+
		"\2\'(\7p\2\2()\7e\2\2)*\7n\2\2*+\7w\2\2+,\7f\2\2,-\7g\2\2-\n\3\2\2\2."+
		"\60\t\3\2\2/\61\t\4\2\2\60/\3\2\2\2\61\62\3\2\2\2\62\60\3\2\2\2\62\63"+
		"\3\2\2\2\63\f\3\2\2\2\648\7=\2\2\65\67\13\2\2\2\66\65\3\2\2\2\67:\3\2"+
		"\2\289\3\2\2\28\66\3\2\2\29<\3\2\2\2:8\3\2\2\2;=\7\17\2\2<;\3\2\2\2<="+
		"\3\2\2\2=>\3\2\2\2>?\7\f\2\2?@\3\2\2\2@A\b\7\2\2A\16\3\2\2\2BD\7\17\2"+
		"\2CB\3\2\2\2CD\3\2\2\2DE\3\2\2\2EF\7\f\2\2F\20\3\2\2\2GI\t\5\2\2HG\3\2"+
		"\2\2IJ\3\2\2\2JH\3\2\2\2JK\3\2\2\2KL\3\2\2\2LM\b\t\3\2M\22\3\2\2\2\13"+
		"\2\31\33#\628<CJ\4\t\b\2\b\2\2";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}