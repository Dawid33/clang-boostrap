Reverse = {
    "addrspace", "align", "allowzero", "and", "anyframe", "anytype", "asm", "async",
    "await", "break", "callconv", "catch", "comptime", "const", "continue", "defer",
    "else", "enum", "errdefer", "error", "export", "extern", "fn", "for", "if",
    "inline", "noalias", "noinline", "IDENTIFIER", "nosuspend", "opaque", "or",
    "orelse", "packed", "pub", "resume", "return", "linksection", "struct", "suspend",
    "switch", "test", "threadlocal", "try", "union", "unreachable", "usingnamespace",
    "var", "volatile", "while", "INVALID", ".**", "!", "|", "||", "|=", "=", "==",
    "=>", "!=", "(", ")", ";", "%", "%=", "{", "}", "[", "]", ".", ".*", "..", "...",
    "^", "^=", "+", "++", "+=", "+%", "+%=", "+|", "+|=", "-", "-=", "-%", "-%=", "-|",
    "-|=", "*", "*=", "**", "*%", "*%=", "*|", "*|=", "->", ":", "/", "/=", ",", "&",
    "&=", "?", "<", "<=", "<<", "<<=", "<<|", "<<|=", ">", ">=", ">>", ">>=", "~",
    "STRING_LITERAL", "CHAR_LITERAL", "EOF", "BUILTIN", "NUMBER_LITERAL", "DOC_COMMENT",
    "CONTAINER_DOC_COMMENT",
}

Tokens = {
    ADDRSPACE                                          = 1, ALIGN                                               = 2,
    ALLOWZERO                                          = 3, AND                                                 = 4,
    ANYFRAME                                           = 5, ANYTYPE                                             = 6,
    ASM                                                = 7, ASYNC                                               = 8,
    AWAIT                                              = 9, BREAK                                               = 10,
    CALLCONV                                           = 11, CATCH                                              = 12,
    COMPTIME                                           = 13, CONST                                              = 14,
    CONTINUE                                           = 15, DEFER                                              = 16,
    ELSE                                               = 17, ENUM                                               = 18,
    ERRDEFER                                           = 19, ERROR                                              = 20,
    EXPORT                                             = 21, EXTERN                                             = 22,
    FN                                                 = 23, FOR                                                = 24,
    IF                                                 = 25, INLINE                                             = 26,
    NOALIAS                                            = 27, NOINLINE                                           = 28,
    IDENTIFIER                                         = 29, NOSUSPEND                                          = 30,
    OPAQUE                                             = 31, OR                                                 = 32,
    ORELSE                                             = 33, PACKED                                             = 34,
    PUB                                                = 35, RESUME                                             = 36,
    RETURN                                             = 37, LINKSECTION                                        = 38,
    STRUCT                                             = 39, SUSPEND                                            = 40,
    SWITCH                                             = 41, TEST                                               = 42,
    THREADLOCAL                                        = 43, TRY                                                = 44,
    UNION                                              = 45, UNREACHABLE                                        = 46,
    USINGNAMESPACE                                     = 47, VAR                                                = 48,
    VOLATILE                                           = 49, WHILE                                              = 50,
    INVALID                                            = 51, INVALID_PERIODASTERISKS                            = 52,
    BANG                                               = 53, PIPE                                               = 54,
    PIPE_PIPE                                          = 55, PIPE_EQUAL                                         = 56,
    EQUAL                                              = 57, EQUAL_EQUAL                                        = 58,
    EQUAL_ANGLE_BRACKET_RIGHT                          = 59, BANG_EQUAL                                         = 60,
    L_PAREN                                            = 61, R_PAREN                                            = 62,
    SEMICOLON                                          = 63, PERCENT                                            = 64,
    PERCENT_EQUAL                                      = 65, L_BRACE                                            = 66,
    R_BRACE                                            = 67, L_BRACKET                                          = 68,
    R_BRACKET                                          = 69, PERIOD                                             = 70,
    PERIOD_ASTERISK                                    = 71, ELLIPSIS2                                          = 72,
    ELLIPSIS3                                          = 73, CARET                                              = 74,
    CARET_EQUAL                                        = 75, PLUS                                               = 76,
    PLUS_PLUS                                          = 77, PLUS_EQUAL                                         = 78,
    PLUS_PERCENT                                       = 79, PLUS_PERCENT_EQUAL                                 = 80,
    PLUS_PIPE                                          = 81, PLUS_PIPE_EQUAL                                    = 82,
    MINUS                                              = 83, MINUS_EQUAL                                        = 84,
    MINUS_PERCENT                                      = 85, MINUS_PERCENT_EQUAL                                = 86,
    MINUS_PIPE                                         = 87, MINUS_PIPE_EQUAL                                   = 88,
    ASTERISK                                           = 89, ASTERISK_EQUAL                                     = 90,
    ASTERISK_ASTERISK                                  = 91, ASTERISK_PERCENT                                   = 92,
    ASTERISK_PERCENT_EQUAL                             = 93, ASTERISK_PIPE                                      = 94,
    ASTERISK_PIPE_EQUAL                                = 95, ARROW                                              = 96,
    COLON                                              = 97, SLASH                                              = 98,
    SLASH_EQUAL                                        = 99, COMMA                                              = 100,
    AMPERSAND                                          = 101, AMPERSAND_EQUAL                                   = 102,
    QUESTION_MARK                                      = 103, ANGLE_BRACKET_LEFT                                = 104,
    ANGLE_BRACKET_LEFT_EQUAL                           = 105, ANGLE_BRACKET_ANGLE_BRACKET_LEFT                  = 106,
    ANGLE_BRACKET_ANGLE_BRACKET_LEFT_EQUAL             = 107, ANGLE_BRACKET_ANGLE_BRACKET_LEFT_PIPE             = 108,
    ANGLE_BRACKET_ANGLE_BRACKET_LEFT_PIPE_EQUAL        = 109, ANGLE_BRACKET_RIGHT                               = 110,
    ANGLE_BRACKET_RIGHT_EQUAL                          = 111, ANGLE_BRACKET_ANGLE_BRACKET_RIGHT                 = 112,
    ANGLE_BRACKET_ANGLE_BRACKET_RIGHT_EQUAL            = 113, TILDE                                             = 114,
    STRING_LITERAL                                     = 115, CHAR_LITERAL                                      = 116,
    EOF                                                = 117, BUILTIN                                           = 118,
    NUMBER_LITERAL                                     = 119, DOC_COMMENT                                       = 120,
    CONTAINER_DOC_COMMENT = 121,
}


State = {
    START                                 = 1, IDENTIFIER                             = 2,
    BUILTIN                               = 3, STRING_LITERAL                         = 5,
    STRING_LITERAL_BACKSLASH              = 6, MULTILINE_STRING_LITERAL_LINE          = 7,
    CHAR_LITERAL                          = 8, CHAR_LITERAL_BACKSLASH                 = 9,
    CHAR_LITERAL_HEX_ESCAPE               = 10, CHAR_LITERAL_UNICODE_ESCAPE_SAW_U     = 11,
    CHAR_LITERAL_UNICODE_ESCAPE           = 12, CHAR_LITERAL_UNICODE_INVALID          = 13,
    CHAR_LITERAL_UNICODE                  = 14, CHAR_LITERAL_END                      = 15,
    BACKSLASH                             = 16, EQUAL                                 = 17,
    BANG                                  = 18, PIPE                                  = 19,
    MINUS                                 = 20, MINUS_PERCENT                         = 21,
    MINUS_PIPE                            = 22, ASTERISK                              = 23,
    ASTERISK_PERCENT                      = 24, ASTERISK_PIPE                         = 25,
    SLASH                                 = 26, LINE_COMMENT_START                    = 27,
    LINE_COMMENT                          = 28, DOC_COMMENT_START                     = 29,
    DOC_COMMENT                           = 30, INT                                   = 31,
    INT_EXPONENT                          = 32, INT_PERIOD                            = 33,
    FLOAT                                 = 34, FLOAT_EXPONENT                        = 35,
    AMPERSAND                             = 36, CARET                                 = 37,
    PERCENT                               = 38, PLUS                                  = 39,
    PLUS_PERCENT                          = 40, PLUS_PIPE                             = 41,
    ANGLE_BRACKET_LEFT                    = 42, ANGLE_BRACKET_ANGLE_BRACKET_LEFT      = 43,
    ANGLE_BRACKET_ANGLE_BRACKET_LEFT_PIPE = 44, ANGLE_BRACKET_RIGHT                   = 45,
    ANGLE_BRACKET_ANGLE_BRACKET_RIGHT     = 46, PERIOD                                = 47,
    PERIOD_2                              = 48, PERIOD_ASTERISK                       = 49,
    SAW_AT_SIGN                           = 50,
}

Lexer = {
    Reverse,
    Tokens,
    State,
    x = 0,
}

function Lexer:new()
    local l = {}
    setmetatable(l, self)
    self.__index = self
    return l
end

function Lexer:lex(char)

end

return Lexer