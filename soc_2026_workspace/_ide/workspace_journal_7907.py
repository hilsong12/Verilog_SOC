# 2026-01-22T12:26:28.528179
import vitis

client = vitis.create_client()
client.set_workspace(path="soc_2026_workspace")

platform = client.create_platform_component(name = "platform_iic",hw_design = "$COMPONENT_LOCATION/../../SOC_exam_2026/soc_iic_wrapper.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0")

comp = client.create_app_component(name="app_iic",platform = "$COMPONENT_LOCATION/../platform_iic/export/platform_iic/platform_iic.xpfm",domain = "standalone_microblaze_riscv_0",template = "hello_world")

platform = client.get_component(name="platform_iic")
status = platform.build()

comp = client.get_component(name="app_iic")
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

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

