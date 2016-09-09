#!/bin/sh
#
# Simple shell script for building one of the model languages from the
# textbook, as translated into Haskell. The default language is DBD.
#
# Authored By Professor Johnson, modified by Team-Closure for DBD
#
# Usage: ./build.sh NAME_OF_LANG_TO_BUILD
###

MODEL_LANG=${1:-DBD}
MODEL_LANG=${MODEL_LANG%*/}

alex  ${MODEL_LANG}/LexSpec.x -o ${MODEL_LANG}/Scanner.hs
happy ${MODEL_LANG}/Grammar.y -o ${MODEL_LANG}/Parser.hs

if (grep run_interp "${MODEL_LANG}/Interp.hs" >/dev/null)
then
    ghc -main-is ${MODEL_LANG}.Interp.run_interp ${MODEL_LANG}/Interp.hs
fi

ghc ${MODEL_LANG}/Repl.hs

if [ -e "${MODEL_LANG}/Tester.hs" ]
then
    ghc ${MODEL_LANG}/Tester.hs
fi


if [ -e "${MODEL_LANG}/Checker.hs" ]
then
    ghc ${MODEL_LANG}/Checker.hs
fi

