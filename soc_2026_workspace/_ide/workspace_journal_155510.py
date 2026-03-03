# 2026-01-23T09:07:02.137164
import vitis

client = vitis.create_client()
client.set_workspace(path="soc_2026_workspace")

platform = client.get_component(name="platform_iic")
status = platform.build()

comp = client.get_component(name="app_iic")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

platform = client.create_platform_component(name = "platform__iic_lcd_cntr",hw_design = "$COMPONENT_LOCATION/../../SOC_exam_2026/soc_iic_cntr_wrapper.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0")

comp = client.create_app_component(name="app_iic_lcd_cntr",platform = "$COMPONENT_LOCATION/../platform__iic_lcd_cntr/export/platform__iic_lcd_cntr/platform__iic_lcd_cntr.xpfm",domain = "standalone_microblaze_riscv_0",template = "hello_world")

platform = client.get_component(name="platform__iic_lcd_cntr")
status = platform.build()

comp = client.get_component(name="app_iic_lcd_cntr")
comp.build()

platform = client.get_component(name="platform_iic")
status = platform.build()

comp = client.get_component(name="app_iic")
comp.build()

platform = client.get_component(name="platform__iic_lcd_cntr")
status = platform.build()

comp = client.get_component(name="app_iic_lcd_cntr")
comp.build()

status = platform.build()

comp.build()

platform = client.get_component(name="platform_fnd_cntr")
status = platform.build()

comp = client.get_component(name="app_fnd_cntr")
comp.build()

platform = client.get_component(name="platform__iic_lcd_cntr")
status = platform.build()

comp = client.get_component(name="app_iic_lcd_cntr")
comp.build()

status = platform.build()

comp.build()

platform = client.get_component(name="platform_iic")
status = platform.build()

comp = client.get_component(name="app_iic")
comp.build()

platform = client.get_component(name="platform__iic_lcd_cntr")
status = platform.build()

comp = client.get_component(name="app_iic_lcd_cntr")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../SOC_exam_2026/soc_iic_cntr_wrapper.xsa")

status = platform.build()

comp.build()

status = platform.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

