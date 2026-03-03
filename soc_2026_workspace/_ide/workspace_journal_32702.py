# 2026-01-27T10:26:42.394001
import vitis

client = vitis.create_client()
client.set_workspace(path="soc_2026_workspace")

platform = client.get_component(name="platform_cooktimer_fnd")
status = platform.build()

comp = client.get_component(name="app_cooktimer_fnd")
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

platform = client.create_platform_component(name = "platform_stopwatch_fnd",hw_design = "$COMPONENT_LOCATION/../../SOC_exam_2026/soc_stopwatch_fnd_wrapper.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0")

comp = client.create_app_component(name="app_stopwatch_fnd",platform = "$COMPONENT_LOCATION/../platform_stopwatch_fnd/export/platform_stopwatch_fnd/platform_stopwatch_fnd.xpfm",domain = "standalone_microblaze_riscv_0",template = "hello_world")

platform = client.get_component(name="platform_stopwatch_fnd")
status = platform.build()

comp = client.get_component(name="app_stopwatch_fnd")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

