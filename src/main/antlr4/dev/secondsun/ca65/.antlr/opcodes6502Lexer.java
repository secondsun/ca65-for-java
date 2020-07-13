// Generated from c:\Users\secon\Projects\ca65-for-java\src\main\antlr4\dev\secondsun\ca65\opcodes6502.g4 by ANTLR 4.8
import org.antlr.v4.runtime.Lexer;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.TokenStream;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.misc.*;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class opcodes6502Lexer extends Lexer {
	static { RuntimeMetaData.checkVersion("4.8", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		MNEMONIC=1;
	public static String[] channelNames = {
		"DEFAULT_TOKEN_CHANNEL", "HIDDEN"
	};

	public static String[] modeNames = {
		"DEFAULT_MODE"
	};

	private static String[] makeRuleNames() {
		return new String[] {
			"MNEMONIC"
		};
	}
	public static final String[] ruleNames = makeRuleNames();

	private static String[] makeLiteralNames() {
		return new String[] {
			null, "'\\b(?i:ADC|AND|ASL|BCC|BCS|BEQ|BIT|BMI|BNE|BPL|BRK|BVC|BVS|CLC|CLD|CLI|CLV|CMP|CPX|CPY|DEC|DEX|DEY|EOR|INC|INX|INY|JMP|JSR|LDA|LDX|LDY|LSR|NOP|ORA|PHA|PHP|PLA|PLP|ROL|ROR|RTI|RTS|SBC|SEC|SED|SEI|STA|STX|STY|TAX|TAY|TSX|TXA|TXS|TYA)\\b'"
		};
	}
	private static final String[] _LITERAL_NAMES = makeLiteralNames();
	private static String[] makeSymbolicNames() {
		return new String[] {
			null, "MNEMONIC"
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


	public opcodes6502Lexer(CharStream input) {
		super(input);
		_interp = new LexerATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	@Override
	public String getGrammarFileName() { return "opcodes6502.g4"; }

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
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\2\3\u00ee\b\1\4\2\t"+
		"\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2"+
		"\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3"+
		"\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2"+
		"\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3"+
		"\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2"+
		"\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3"+
		"\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2"+
		"\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3"+
		"\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2"+
		"\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3"+
		"\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2"+
		"\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3"+
		"\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2"+
		"\3\2\3\2\3\2\3\2\3\2\3\2\2\2\3\3\3\3\2\2\2\u00ed\2\3\3\2\2\2\3\5\3\2\2"+
		"\2\5\6\7^\2\2\6\7\7d\2\2\7\b\7*\2\2\b\t\7A\2\2\t\n\7k\2\2\n\13\7<\2\2"+
		"\13\f\7C\2\2\f\r\7F\2\2\r\16\7E\2\2\16\17\7~\2\2\17\20\7C\2\2\20\21\7"+
		"P\2\2\21\22\7F\2\2\22\23\7~\2\2\23\24\7C\2\2\24\25\7U\2\2\25\26\7N\2\2"+
		"\26\27\7~\2\2\27\30\7D\2\2\30\31\7E\2\2\31\32\7E\2\2\32\33\7~\2\2\33\34"+
		"\7D\2\2\34\35\7E\2\2\35\36\7U\2\2\36\37\7~\2\2\37 \7D\2\2 !\7G\2\2!\""+
		"\7S\2\2\"#\7~\2\2#$\7D\2\2$%\7K\2\2%&\7V\2\2&\'\7~\2\2\'(\7D\2\2()\7O"+
		"\2\2)*\7K\2\2*+\7~\2\2+,\7D\2\2,-\7P\2\2-.\7G\2\2./\7~\2\2/\60\7D\2\2"+
		"\60\61\7R\2\2\61\62\7N\2\2\62\63\7~\2\2\63\64\7D\2\2\64\65\7T\2\2\65\66"+
		"\7M\2\2\66\67\7~\2\2\678\7D\2\289\7X\2\29:\7E\2\2:;\7~\2\2;<\7D\2\2<="+
		"\7X\2\2=>\7U\2\2>?\7~\2\2?@\7E\2\2@A\7N\2\2AB\7E\2\2BC\7~\2\2CD\7E\2\2"+
		"DE\7N\2\2EF\7F\2\2FG\7~\2\2GH\7E\2\2HI\7N\2\2IJ\7K\2\2JK\7~\2\2KL\7E\2"+
		"\2LM\7N\2\2MN\7X\2\2NO\7~\2\2OP\7E\2\2PQ\7O\2\2QR\7R\2\2RS\7~\2\2ST\7"+
		"E\2\2TU\7R\2\2UV\7Z\2\2VW\7~\2\2WX\7E\2\2XY\7R\2\2YZ\7[\2\2Z[\7~\2\2["+
		"\\\7F\2\2\\]\7G\2\2]^\7E\2\2^_\7~\2\2_`\7F\2\2`a\7G\2\2ab\7Z\2\2bc\7~"+
		"\2\2cd\7F\2\2de\7G\2\2ef\7[\2\2fg\7~\2\2gh\7G\2\2hi\7Q\2\2ij\7T\2\2jk"+
		"\7~\2\2kl\7K\2\2lm\7P\2\2mn\7E\2\2no\7~\2\2op\7K\2\2pq\7P\2\2qr\7Z\2\2"+
		"rs\7~\2\2st\7K\2\2tu\7P\2\2uv\7[\2\2vw\7~\2\2wx\7L\2\2xy\7O\2\2yz\7R\2"+
		"\2z{\7~\2\2{|\7L\2\2|}\7U\2\2}~\7T\2\2~\177\7~\2\2\177\u0080\7N\2\2\u0080"+
		"\u0081\7F\2\2\u0081\u0082\7C\2\2\u0082\u0083\7~\2\2\u0083\u0084\7N\2\2"+
		"\u0084\u0085\7F\2\2\u0085\u0086\7Z\2\2\u0086\u0087\7~\2\2\u0087\u0088"+
		"\7N\2\2\u0088\u0089\7F\2\2\u0089\u008a\7[\2\2\u008a\u008b\7~\2\2\u008b"+
		"\u008c\7N\2\2\u008c\u008d\7U\2\2\u008d\u008e\7T\2\2\u008e\u008f\7~\2\2"+
		"\u008f\u0090\7P\2\2\u0090\u0091\7Q\2\2\u0091\u0092\7R\2\2\u0092\u0093"+
		"\7~\2\2\u0093\u0094\7Q\2\2\u0094\u0095\7T\2\2\u0095\u0096\7C\2\2\u0096"+
		"\u0097\7~\2\2\u0097\u0098\7R\2\2\u0098\u0099\7J\2\2\u0099\u009a\7C\2\2"+
		"\u009a\u009b\7~\2\2\u009b\u009c\7R\2\2\u009c\u009d\7J\2\2\u009d\u009e"+
		"\7R\2\2\u009e\u009f\7~\2\2\u009f\u00a0\7R\2\2\u00a0\u00a1\7N\2\2\u00a1"+
		"\u00a2\7C\2\2\u00a2\u00a3\7~\2\2\u00a3\u00a4\7R\2\2\u00a4\u00a5\7N\2\2"+
		"\u00a5\u00a6\7R\2\2\u00a6\u00a7\7~\2\2\u00a7\u00a8\7T\2\2\u00a8\u00a9"+
		"\7Q\2\2\u00a9\u00aa\7N\2\2\u00aa\u00ab\7~\2\2\u00ab\u00ac\7T\2\2\u00ac"+
		"\u00ad\7Q\2\2\u00ad\u00ae\7T\2\2\u00ae\u00af\7~\2\2\u00af\u00b0\7T\2\2"+
		"\u00b0\u00b1\7V\2\2\u00b1\u00b2\7K\2\2\u00b2\u00b3\7~\2\2\u00b3\u00b4"+
		"\7T\2\2\u00b4\u00b5\7V\2\2\u00b5\u00b6\7U\2\2\u00b6\u00b7\7~\2\2\u00b7"+
		"\u00b8\7U\2\2\u00b8\u00b9\7D\2\2\u00b9\u00ba\7E\2\2\u00ba\u00bb\7~\2\2"+
		"\u00bb\u00bc\7U\2\2\u00bc\u00bd\7G\2\2\u00bd\u00be\7E\2\2\u00be\u00bf"+
		"\7~\2\2\u00bf\u00c0\7U\2\2\u00c0\u00c1\7G\2\2\u00c1\u00c2\7F\2\2\u00c2"+
		"\u00c3\7~\2\2\u00c3\u00c4\7U\2\2\u00c4\u00c5\7G\2\2\u00c5\u00c6\7K\2\2"+
		"\u00c6\u00c7\7~\2\2\u00c7\u00c8\7U\2\2\u00c8\u00c9\7V\2\2\u00c9\u00ca"+
		"\7C\2\2\u00ca\u00cb\7~\2\2\u00cb\u00cc\7U\2\2\u00cc\u00cd\7V\2\2\u00cd"+
		"\u00ce\7Z\2\2\u00ce\u00cf\7~\2\2\u00cf\u00d0\7U\2\2\u00d0\u00d1\7V\2\2"+
		"\u00d1\u00d2\7[\2\2\u00d2\u00d3\7~\2\2\u00d3\u00d4\7V\2\2\u00d4\u00d5"+
		"\7C\2\2\u00d5\u00d6\7Z\2\2\u00d6\u00d7\7~\2\2\u00d7\u00d8\7V\2\2\u00d8"+
		"\u00d9\7C\2\2\u00d9\u00da\7[\2\2\u00da\u00db\7~\2\2\u00db\u00dc\7V\2\2"+
		"\u00dc\u00dd\7U\2\2\u00dd\u00de\7Z\2\2\u00de\u00df\7~\2\2\u00df\u00e0"+
		"\7V\2\2\u00e0\u00e1\7Z\2\2\u00e1\u00e2\7C\2\2\u00e2\u00e3\7~\2\2\u00e3"+
		"\u00e4\7V\2\2\u00e4\u00e5\7Z\2\2\u00e5\u00e6\7U\2\2\u00e6\u00e7\7~\2\2"+
		"\u00e7\u00e8\7V\2\2\u00e8\u00e9\7[\2\2\u00e9\u00ea\7C\2\2\u00ea\u00eb"+
		"\7+\2\2\u00eb\u00ec\7^\2\2\u00ec\u00ed\7d\2\2\u00ed\4\3\2\2\2\3\2\2";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}