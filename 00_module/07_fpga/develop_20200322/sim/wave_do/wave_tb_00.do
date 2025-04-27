#======================================================
onerror {resume}
quietly WaveActivateNextPane {} 0
#======================================================
add wave -noupdate -divider (TB_TOP)
add wave -noupdate -format Logic -radix hexadecimal /tb_top/*

add wave -noupdate -divider (SIM_MODEL)
add wave -noupdate -format Logic -radix hexadecimal /tb_top/U_SIM_MODEL/*

#=======================================================
TreeUpdate [SetDefaultTree]
quietly WaveActivateNextPane
#======================================================

add wave -noupdate -divider (U_USB_SIM)
add wave -noupdate -color green    -format Logic -radix hexadecimal -group {USB_SIM}     /tb_top/U_USB_SIM/*

add wave -noupdate -divider (U_USB_TOP)
add wave -noupdate -color green    -format Logic -radix hexadecimal -group {USB_TOP}     /tb_top/U_USB_TOP/*

add wave -noupdate -divider (U_USB_IF)
add wave -noupdate -color green    -format Logic -radix hexadecimal -group {USB_IF}     /tb_top/U_USB_TOP/U_USB_IF/*

add wave -noupdate -divider (U_REG_IF)
add wave -noupdate -color green    -format Logic -radix hexadecimal -group {REG_IF}     /tb_top/U_USB_TOP/U_REG_IF/*

add wave -noupdate -divider (U_REG_ACK)
add wave -noupdate -color green    -format Logic -radix hexadecimal -group {REG_ACK}     /tb_top/U_USB_TOP/U_REG_ACK/*

add wave -noupdate -divider (U_USB_DN_IF)
add wave -noupdate -color green    -format Logic -radix hexadecimal -group {USB_DN_IF}     /tb_top/U_USB_TOP/U_USB_DN_IF/*

add wave -noupdate -divider (U_USB_UP_IF)
add wave -noupdate -color green    -format Logic -radix hexadecimal -group {USB_UP_IF}     /tb_top/U_USB_TOP/U_USB_UP_IF/*

add wave -noupdate -divider (U_USB_UP_ARBIT)
add wave -noupdate -color green    -format Logic -radix hexadecimal -group {USB_UP_ARBIT}     /tb_top/U_USB_TOP/U_USB_UP_ARBIT/*

add wave -noupdate -divider (U_BIST_REG)
add wave -noupdate -color green    -format Logic -radix hexadecimal -group {BIST_REG}     /tb_top/U_BIST_REG/*


configure wave -namecolwidth 227
configure wave -valuecolwidth 56
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
update