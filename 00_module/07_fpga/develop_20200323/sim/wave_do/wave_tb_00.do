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

add wave -noupdate -divider (U_BIST_REG)
add wave -noupdate -color green    -format Logic -radix hexadecimal -group {BIST_REG}     /tb_top/U_BIST_REG/*

add wave -noupdate -divider (U_RAM_BIST)
add wave -noupdate -color green    -format Logic -radix hexadecimal -group {RAM_BIST}     /tb_top/U_RAM_BIST/*

add wave -noupdate -divider (U_SRIO_TOP)
add wave -noupdate -color green    -format Logic -radix hexadecimal -group {SRIO_TOP}     /tb_top/U_SRIO_TOP/*

add wave -noupdate -divider (U_INI_REG_TX)
add wave -noupdate -color green    -format Logic -radix hexadecimal -group {INI_REG_TX}     /tb_top/U_SRIO_TOP/U_INI_REG_TX/*

add wave -noupdate -divider (U_INI_DMA_WR)
add wave -noupdate -color green    -format Logic -radix hexadecimal -group {INI_DMA_WR}     /tb_top/U_SRIO_TOP/U_INI_DMA_WR/*

add wave -noupdate -divider (U_INI_DMA_RD)
add wave -noupdate -color green    -format Logic -radix hexadecimal -group {INI_DMA_RD}     /tb_top/U_SRIO_TOP/U_INI_DMA_RD/*

add wave -noupdate -divider (U_ARBITA_TX0)
add wave -noupdate -color green    -format Logic -radix hexadecimal -group {ARBITA_TX0}     /tb_top/U_SRIO_TOP/U_ARBITA_TX0/*

add wave -noupdate -divider (U_INI_TX)
add wave -noupdate -color green    -format Logic -radix hexadecimal -group {INI_TX}     /tb_top/U_SRIO_TOP/U_INI_TX/*

add wave -noupdate -divider (U_INI_RX)
add wave -noupdate -color green    -format Logic -radix hexadecimal -group {INI_RX}     /tb_top/U_SRIO_TOP/U_INI_RX/*

add wave -noupdate -divider (U_INI_RX_DEC)
add wave -noupdate -color green    -format Logic -radix hexadecimal -group {INI_RX_DEC}     /tb_top/U_SRIO_TOP/U_INI_RX_DEC/*

add wave -noupdate -divider (U_TAG_RX)
add wave -noupdate -color green    -format Logic -radix hexadecimal -group {TAG_RX}     /tb_top/U_SRIO_TOP/U_TAG_RX/*

add wave -noupdate -divider (U_TAG_RX_DEC)
add wave -noupdate -color green    -format Logic -radix hexadecimal -group {TAG_RX_DEC}     /tb_top/U_SRIO_TOP/U_TAG_RX_DEC/*

add wave -noupdate -divider (U_TAG_REG_TX)
add wave -noupdate -color green    -format Logic -radix hexadecimal -group {TAG_REG_TX}     /tb_top/U_SRIO_TOP/U_TAG_REG_TX/*

add wave -noupdate -divider (U_TAG_DMA_TX)
add wave -noupdate -color green    -format Logic -radix hexadecimal -group {TAG_DMA_TX}     /tb_top/U_SRIO_TOP/U_TAG_DMA_TX/*

add wave -noupdate -divider (U_ARBITA_TX1)
add wave -noupdate -color green    -format Logic -radix hexadecimal -group {ARBITA_TX1}     /tb_top/U_SRIO_TOP/U_ARBITA_TX1/*

add wave -noupdate -divider (U_TAG_TX)
add wave -noupdate -color green    -format Logic -radix hexadecimal -group {TAG_TX}     /tb_top/U_SRIO_TOP/U_TAG_TX/*


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