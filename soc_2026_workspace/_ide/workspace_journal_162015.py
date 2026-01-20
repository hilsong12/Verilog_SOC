# 2026-01-20T10:23:30.405771
import vitis

client = vitis.create_client()
client.set_workspace(path="soc_2026_workspace")

platform = client.create_platform_component(name = "microblazev_hello",hw_design = "$COMPONENT_LOCATION/../../SOC_exam_2026/soc_hello_wrapper.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0")

comp = client.create_app_component(name="app_hello_world",platform = "$COMPONENT_LOCATION/../microblazev_hello/export/microblazev_hello/microblazev_hello.xpfm",domain = "standalone_microblaze_riscv_0",template = "hello_world")

platform = client.get_component(name="microblazev_hello")
status = platform.build()

comp = client.get_component(name="app_hello_world")
comp.build()

status = platform.build()

comp.build()

platform = client.create_platform_component(name = "platform_gpio",hw_design = "$COMPONENT_LOCATION/../../SOC_exam_2026/soc_gpio_wrapper.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0")

comp = client.create_app_component(name="app_gpio",platform = "$COMPONENT_LOCATION/../platform_gpio/export/platform_gpio/platform_gpio.xpfm",domain = "standalone_microblaze_riscv_0",template = "hello_world")

platform = client.get_component(name="platform_gpio")
status = platform.build()

comp = client.get_component(name="app_gpio")
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

