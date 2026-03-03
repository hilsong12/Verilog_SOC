# 2026-01-21T09:22:39.566918
import vitis

client = vitis.create_client()
client.set_workspace(path="soc_2026_workspace")

platform = client.get_component(name="platform_fnd")
status = platform.build()

comp = client.get_component(name="app_fnd")
comp.build()

