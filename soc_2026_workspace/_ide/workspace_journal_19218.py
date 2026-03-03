# 2026-01-27T09:18:54.435514
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

vitis.dispose()

