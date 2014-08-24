a=open('sim.ini', 'r')
text=a.readlines()

modelsim=''
iselib=''
for line in text:
	print(line)
	if(line.startswith('modelsim=')):
		modelsim=line[len('modelsim='):len(line)]
		if(modelsim[-1]=='\n'):
			modelsim = modelsim[:-1]
	
	if(line.startswith('iselib=')):
		iselib=line[len('iselib='):len(line)]
		if(iselib[-1]=='\n'):
			iselib = iselib[-1]


outfile = open('sim.bat', 'w')
str = 'verilog_file_list.py\n'
str += modelsim + ' -do sim.do'
outfile.write(str+'\n')
outfile.close()


outfile = open('sim.do', 'w')
str = """quit -sim

vlib work
vmap work work
vlog -f  verilog_file_list.f -incr

vsim -L xilinxcorelib_ver -novopt work.test_top
view wave

do wave_gen.do

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

run 30us"""
str = str.replace('xilinxcorelib_ver',iselib )
outfile.write(str+'\n')
outfile.close()