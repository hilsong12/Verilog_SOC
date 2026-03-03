# 2026-02-06T12:16:42.832607
import vitis

client = vitis.create_client()
client.set_workspace(path="soc_2026_workspace")

platform = client.create_platform_component(name = "platform_can_modified",hw_design = "$COMPONENT_LOCATION/../../SOC_exam_2026/soc_can_controller_1_wrapper.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0")

comp = client.create_app_component(name="app_can_modified",platform = "$COMPONENT_LOCATION/../platform_can_modified/export/platform_can_modified/platform_can_modified.xpfm",domain = "standalone_microblaze_riscv_0",template = "hello_world")

platform = client.get_component(name="platform_can_modified")
status = platform.build()

comp = client.get_component(name="app_can_modified")
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

platform = client.get_component(name="platform_can_controller")
status = platform.build()

comp = client.get_component(name="app_can_controller")
comp.build()

status = platform.build()

comp.build()

platform = client.get_component(name="platform_can_modified")
status = platform.build()

comp = client.get_component(name="app_can_modified")
comp.build()

platform = client.create_platform_component(name = "platform_can_1",hw_design = "$COMPONENT_LOCATION/../../SOC_exam_2026/soc_can_controller_1_wrapper.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0")

comp = client.create_app_component(name="app_can_1",platform = "$COMPONENT_LOCATION/../platform_can_1/export/platform_can_1/platform_can_1.xpfm",domain = "standalone_microblaze_riscv_0",template = "hello_world")

platform = client.get_component(name="platform_can_1")
status = platform.build()

comp = client.get_component(name="app_can_1")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

client.delete_component(name="app_can_modified")

client.delete_component(name="platform_can_modified")

platform = client.create_platform_component(name = "platform_can_2",hw_design = "$COMPONENT_LOCATION/../../SOC_exam_2026/soc_can_controller_1_wrapper.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0")

comp = client.create_app_component(name="app_can_2",platform = "$COMPONENT_LOCATION/../platform_can_2/export/platform_can_2/platform_can_2.xpfm",domain = "standalone_microblaze_riscv_0",template = "hello_world")

platform = client.get_component(name="platform_can_2")
status = platform.build()

comp = client.get_component(name="app_can_2")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

client.delete_component(name="app_can_1")

client.delete_component(name="platform_can_1")

platform = client.get_component(name="platform_can_controller")
status = platform.build()

comp = client.get_component(name="app_can_controller")
comp.build()

status = platform.build()

comp.build()

