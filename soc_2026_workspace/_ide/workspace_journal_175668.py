# 2026-02-06T09:14:49.315850
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

