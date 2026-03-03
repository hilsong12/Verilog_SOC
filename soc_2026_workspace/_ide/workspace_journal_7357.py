# 2026-01-21T12:17:24.328528
import vitis

client = vitis.create_client()
client.set_workspace(path="soc_2026_workspace")

platform = client.get_component(name="platform_fnd")
status = platform.build()

comp = client.get_component(name="app_fnd")
comp.build()

platform = client.create_platform_component(name = "platform_fnd_cntr",hw_design = "$COMPONENT_LOCATION/../../SOC_exam_2026/soc_fnd_cntr_wrapper.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0")

comp = client.create_app_component(name="app_fnd_cntr",platform = "$COMPONENT_LOCATION/../platform_fnd_cntr/export/platform_fnd_cntr/platform_fnd_cntr.xpfm",domain = "standalone_microblaze_riscv_0",template = "hello_world")

platform = client.get_component(name="platform_fnd_cntr")
status = platform.build()

comp = client.get_component(name="app_fnd_cntr")
comp.build()

platform = client.get_component(name="platform_fnd")
status = platform.build()

comp = client.get_component(name="app_fnd")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

platform = client.get_component(name="platform_fnd_cntr")
status = platform.build()

comp = client.get_component(name="app_fnd_cntr")
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

