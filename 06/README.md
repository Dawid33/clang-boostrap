TODO: 

Fix 05 stage tcc compiler that causes some non-descript linker error whenever a
generated executable is executed. Causes this error message : "Inconsistency
detected by ld.so: dl-fini.c: 92: _dl_fini: Assertion `ns != LM_ID_BASE || i ==
nloaded' failed!"

Write rules into makefile to run tests
1. Create test runner if it doesn't exist for lpeglable and parser-gen 
2. Update tests to lua 5.4 
2. Fix diagnostics in tofix
3. Write a 'make test' rule

Implement backslashed escaped characters in grammar parser

Implement single line comments starting with # in grammar parser


