# 2026-01-28T19:43:49.046270
import vitis

client = vitis.create_client()
client.set_workspace(path="soc_2026_workspace")

platform = client.create_platform_component(name = "platform_multiwatch_lcd",hw_design = "$COMPONENT_LOCATION/../../SOC_exam_2026/soc_multiwatch_lcd_wrapper.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0")

comp = client.create_app_component(name="app_multiwatch_lcd",platform = "$COMPONENT_LOCATION/../platform_multiwatch_lcd/export/platform_multiwatch_lcd/platform_multiwatch_lcd.xpfm",domain = "standalone_microblaze_riscv_0",template = "hello_world")

platform = client.get_component(name="platform_multiwatch_lcd")
status = platform.build()

comp = client.get_component(name="app_multiwatch_lcd")
comp.build()

status = platform.build()

comp.build()

platform = client.get_component(name="platform_dht_lcd")
status = platform.build()

comp = client.get_component(name="app_dht_lcd")
comp.build()

platform = client.get_component(name="platform_multiwatch_lcd")
status = platform.build()

comp = client.get_component(name="app_multiwatch_lcd")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

