# 2026-01-23T11:49:46.683028
import vitis

client = vitis.create_client()
client.set_workspace(path="soc_2026_workspace")

platform = client.get_component(name="platform__iic_lcd_cntr")
status = platform.build()

status = platform.build()

comp = client.get_component(name="app_iic_lcd_cntr")
comp.build()

component = client.get_component(name="app_iic_lcd_cntr")

lscript = component.get_ld_script(path="/media/user12/data/work/soc_2026_workspace/app_iic_lcd_cntr/src/lscript.ld")

lscript.regenerate()

status = platform.build()

comp.build()

status = platform.build()

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

platform = client.create_platform_component(name = "platform_i2c_lcd_cntr",hw_design = "$COMPONENT_LOCATION/../../SOC_exam_2026/soc_iic_cntr_wrapper.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0")

comp = client.create_app_component(name="app_i2c_lcd_cntr",platform = "$COMPONENT_LOCATION/../platform_i2c_lcd_cntr/export/platform_i2c_lcd_cntr/platform_i2c_lcd_cntr.xpfm",domain = "standalone_microblaze_riscv_0",template = "hello_world")

platform = client.get_component(name="platform_i2c_lcd_cntr")
status = platform.build()

comp = client.get_component(name="app_i2c_lcd_cntr")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

platform = client.create_platform_component(name = "platform_dht_lcd",hw_design = "$COMPONENT_LOCATION/../../SOC_exam_2026/soc_dht_lcd_wrapper.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0")

comp = client.create_app_component(name="app_dht_lcd",platform = "$COMPONENT_LOCATION/../platform_dht_lcd/export/platform_dht_lcd/platform_dht_lcd.xpfm",domain = "standalone_microblaze_riscv_0",template = "hello_world")

platform = client.get_component(name="platform_dht_lcd")
status = platform.build()

comp = client.get_component(name="app_dht_lcd")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

platform = client.create_platform_component(name = "platform_cooktimer",hw_design = "$COMPONENT_LOCATION/../../SOC_exam_2026/soc_cooktimer_wrapper.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0")

comp = client.create_app_component(name="app_cooktimer",platform = "$COMPONENT_LOCATION/../platform_cooktimer/export/platform_cooktimer/platform_cooktimer.xpfm",domain = "standalone_microblaze_riscv_0",template = "hello_world")

platform = client.get_component(name="platform_cooktimer")
status = platform.build()

comp = client.get_component(name="app_cooktimer")
comp.build()

status = platform.build()

comp.build()

vitis.dispose()

