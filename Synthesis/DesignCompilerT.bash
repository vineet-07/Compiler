#!/bin/bash 

\rm -rf ../WorkLibrary/Synthesis

\design_vision -f ../ScriptFiles/DesignCompilerT.tcl | tee ../LoggerFiles/DesignCompilerT.log

\rm -rf ~/synopsys_cache_G-2012.06

