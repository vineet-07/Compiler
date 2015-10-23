// Generated by Cadence Encounter(R) RTL Compiler RC11.22 - v11.20-s017_1
tclmode
set env(RC_VERSION) "RC11.22 - v11.20-s017_1"
vpxmode
set dofile abort exit
usage -auto
set log file fv/SARTimer7Verilog/rtl_to_g1_withoutovf.log -replace
// tclmode
// set env(CDN_SYNTH_ROOT) /Cad/Cadence/RCS111/tools.lnx86
// vpxmode
tclmode
set ver [lindex [split [lindex [get_version_info] 0] "-"] 0]
if {$ver >= 08.10} {
  vpx set naming style rc
}
vpxmode
set naming rule "%s[%d]" -instance_array
set naming rule "%s_reg" -register -golden
set naming rule "%L.%s" "%L[%d].%s" "%s" -instance
set naming rule "%L.%s" "%L[%d].%s" "%s" -variable
set undefined cell black_box -noascend -both
set undriven signal Z -golden

add search path -library /Cad/DesignK/FaradayUMC180/DigitalCore/FrontEnd/synopsys/
read library -statetable -liberty  -both  \
	fsa0a_c_generic_core_ss1p62v125c.lib

add search path -design .
read design  -verilog2k -define SYNTHESIS  -golden -lastmod -noelab \
	-root SARTimer7Verilog \
	-parameter -int DATA "8" \
	-parameter -int TIMER "7" \
	../SourceFiles/SARTimerXVerilog.v

elaborate design -golden -root SARTimer7Verilog

read design -verilog -revised -lastmod -noelab \
	-unzip fv/SARTimer7Verilog/g1.v.gz

elaborate design -revised -root SARTimer7Verilog_DATA8_TIMER7

substitute blackbox model -golden
report design data
report black box

uniquify -all -nolib
set flatten model -seq_constant -seq_constant_x_to 0
set flatten model -nodff_to_dlat_zero -nodff_to_dlat_feedback
// set parallel option -threads 4 -license xl
set analyze option -auto

set system mode lec
analyze datapath -module -verbose
usage
analyze datapath -verbose
// report mapped points
report unmapped points -summary
report unmapped points -extra -unreachable -notmapped
add compared points -all
// report compared points
compare
usage
// report compare data
report compare data -class nonequivalent -class abort -class notcompared
report verification -verbose
report statistics
tclmode
puts "No of compare points = [get_compare_points -count]"
puts "No of diff points    = [get_compare_points -diff -count]"
puts "No of abort points   = [get_compare_points -abort -count]"
puts "No of unknown points = [get_compare_points -unknown -count]"
if {[get_compare_points -count] == 0} {
    puts "---------------------------------"
    puts "ERROR: No compare points detected"
    puts "---------------------------------"
}
if {[get_compare_points -diff -count] > 0} {
    puts "------------------------------------"
    puts "ERROR: Different Key Points detected"
    puts "------------------------------------"
#     foreach i [get_compare_points -diff] {
#         vpx report test vector [get_keypoint $i]
#         puts "     ----------------------------"
#     }
}
if {[get_compare_points -abort -count] > 0} {
    puts "-----------------------------"
    puts "ERROR: Abort Points detected "
    puts "-----------------------------"
}
if {[get_compare_points -unknown -count] > 0} {
    puts "----------------------------------"
    puts "ERROR: Unknown Key Points detected"
    puts "----------------------------------"
}
vpxmode
exit -force
