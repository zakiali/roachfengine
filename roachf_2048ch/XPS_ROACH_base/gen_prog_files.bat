copy implementation\system.bit ..\bit_files\roachf_2048ch_2011_Dec_19_1402.bit
mkbof.exe -o implementation\system.bof -s core_info.tab -t 3 implementation\system.bin
copy implementation\system.bof ..\bit_files\roachf_2048ch_2011_Dec_19_1402.bof
