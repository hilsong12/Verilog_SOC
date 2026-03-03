# 2026-01-26T10:46:26.623442
import vitis

client = vitis.create_client()
client.set_workspace(path="soc_2026_workspace")

platform = client.get_component(name="platform_cooktimer")
status = platform.build()

comp = client.get_component(name="app_cooktimer")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

platform = client.create_platform_component(name = "platform_cooktimer_re",hw_design = "$COMPONENT_LOCATION/../../SOC_exam_2026/soc_cooktimer_wrapper.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0")

comp = client.create_app_component(name="app_cooktimer_re",platform = "$COMPONENT_LOCATION/../platform_cooktimer_re/export/platform_cooktimer_re/platform_cooktimer_re.xpfm",domain = "standalone_microblaze_riscv_0",template = "hello_world")

platform = client.get_component(name="platform_cooktimer_re")
status = platform.build()

comp = client.get_component(name="app_cooktimer_re")
comp.build()

status = platform.build()

comp.build()

