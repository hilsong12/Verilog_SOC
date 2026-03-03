# 2026-01-28T14:13:28.108909
import vitis

client = vitis.create_client()
client.set_workspace(path="soc_2026_workspace")

platform = client.get_component(name="platform_stopwatch_fnd")
status = platform.build()

comp = client.get_component(name="app_stopwatch_fnd")
comp.build()

