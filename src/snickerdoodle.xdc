 ## HDMI_OUT:0.DATA0_P
set_property PACKAGE_PIN W18 [get_ports HDMI_OUT_DATA0_P]
set_property IOSTANDARD TMDS_33 [get_ports HDMI_OUT_DATA0_P]
 ## HDMI_OUT:0.DATA0_N
set_property PACKAGE_PIN W19 [get_ports HDMI_OUT_DATA0_N]
set_property IOSTANDARD TMDS_33 [get_ports HDMI_OUT_DATA0_N]
 ## HDMI_OUT:0.DATA1_P
set_property PACKAGE_PIN R16 [get_ports HDMI_OUT_DATA1_P]
set_property IOSTANDARD TMDS_33 [get_ports HDMI_OUT_DATA1_P]
 ## HDMI_OUT:0.DATA1_N
set_property PACKAGE_PIN R17 [get_ports HDMI_OUT_DATA1_N]
set_property IOSTANDARD TMDS_33 [get_ports HDMI_OUT_DATA1_N]
 ## HDMI_OUT:0.DATA2_P
set_property PACKAGE_PIN P15 [get_ports HDMI_OUT_DATA2_P]
set_property IOSTANDARD TMDS_33 [get_ports HDMI_OUT_DATA2_P]
 ## HDMI_OUT:0.DATA2_N
set_property PACKAGE_PIN P16 [get_ports HDMI_OUT_DATA2_N]
set_property IOSTANDARD TMDS_33 [get_ports HDMI_OUT_DATA2_N]
 ## HDMI_OUT:0.clk_p
set_property PACKAGE_PIN V17 [get_ports HDMI_OUT_CLK_P]
set_property IOSTANDARD TMDS_33 [get_ports HDMI_OUT_CLK_P]
 ## HDMI_OUT:0.clk_N
set_property PACKAGE_PIN V18 [get_ports HDMI_OUT_CLK_N]
set_property IOSTANDARD TMDS_33 [get_ports HDMI_OUT_CLK_N]

set_property PACKAGE_PIN N17 [get_ports LED0]
set_property IOSTANDARD LVCMOS33 [get_ports LED0]
set_property PACKAGE_PIN P18 [get_ports LED1]
set_property IOSTANDARD LVCMOS33 [get_ports LED1]

set_false_path -through [get_pins design_1_i/axi_dispctrl_0/U0/Inst_vdma_to_vga/*_REG]

set_max_delay -datapath_only -from [get_pins design_1_i/cdc_flag_0/U0/A_reg_reg/C] -to [get_pins {design_1_i/cdc_flag_0/U0/B_reg_reg[0]/D}] 5.000
set_max_delay -datapath_only -from [get_pins design_1_i/axi_dispctrl_0/U0/Inst_vdma_to_vga/running_reg_reg/C] -to [get_pins {design_1_i/axi_dispctrl_0/U0/vga_running_sync_reg[0]/D}] 5.000
set_max_delay -datapath_only -from [get_pins design_1_i/axi_dispctrl_0/U0/enable_reg_reg/C] -to [get_pins {design_1_i/axi_dispctrl_0/U0/Inst_vdma_to_vga/vga_en_sync_reg[0]/D}] 5.000
