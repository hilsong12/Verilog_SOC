# 2026-02-02T10:03:33.234654
import vitis

client = vitis.create_client()
client.set_workspace(path="soc_2026_workspace")

platform = client.get_component(name="platform_multiwatch_lcd")
status = platform.build()

comp = client.get_component(name="app_multiwatch_lcd")
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

