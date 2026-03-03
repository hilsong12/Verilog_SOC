# 2026-02-05T19:50:10.743672
import vitis

client = vitis.create_client()
client.set_workspace(path="soc_2026_workspace")

platform = client.create_platform_component(name = "platform_can_controller",hw_design = "$COMPONENT_LOCATION/../../SOC_exam_2026/soc_can_controller_wrapper.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0")

comp = client.create_app_component(name="app_can_controller",platform = "$COMPONENT_LOCATION/../platform_can_controller/export/platform_can_controller/platform_can_controller.xpfm",domain = "standalone_microblaze_riscv_0",template = "hello_world")

platform = client.get_component(name="platform_can_controller")
status = platform.build()

comp = client.get_component(name="app_can_controller")
comp.build()

platform = client.get_component(name="platform_multiwatch_lcd")
status = platform.build()

comp = client.get_component(name="app_multiwatch_lcd")
comp.build()

platform = client.get_component(name="platform_can_controller")
status = platform.build()

comp = client.get_component(name="app_can_controller")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

