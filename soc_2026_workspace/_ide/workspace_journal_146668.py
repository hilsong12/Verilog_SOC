# 2026-01-22T10:25:54.136296
import vitis

client = vitis.create_client()
client.set_workspace(path="soc_2026_workspace")

platform = client.create_platform_component(name = "platform_dht11_fnd",hw_design = "$COMPONENT_LOCATION/../../SOC_exam_2026/soc_dht11_wrapper.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0")

comp = client.create_app_component(name="app_dht11_fnd",platform = "$COMPONENT_LOCATION/../platform_dht11_fnd/export/platform_dht11_fnd/platform_dht11_fnd.xpfm",domain = "standalone_microblaze_riscv_0",template = "hello_world")

platform = client.get_component(name="platform_dht11_fnd")
status = platform.build()

comp = client.get_component(name="app_dht11_fnd")
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

platform = client.get_component(name="platform_fnd_cntr")
status = platform.build()

comp = client.get_component(name="app_fnd_cntr")
comp.build()

