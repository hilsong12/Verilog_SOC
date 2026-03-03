# 2026-02-09T11:17:43.752487
import vitis

client = vitis.create_client()
client.set_workspace(path="soc_2026_workspace")

client.delete_component(name="app_can_2")

client.delete_component(name="platform_can_2")

platform = client.get_component(name="platform_can_controller")
status = platform.build()

comp = client.get_component(name="app_can_controller")
comp.build()

status = platform.build()

comp.build()

