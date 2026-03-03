# 2026-02-06T14:24:50.641841
import vitis

client = vitis.create_client()
client.set_workspace(path="soc_2026_workspace")

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

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

