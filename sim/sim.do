quit -sim

vlib work
vmap work work
vlog -f  verilog_file_list.f -incr

vsim -L D:/Xilinx/13.2_verilog_simulator/xilinxcorelib_ver -novopt work.test_top
view wave

do ../src/wave_gen.do

TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ns} 0}
configure wave -namecolwidth 150
configure wave -valuecolwidth 79
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {3050 ns}

run 30us
