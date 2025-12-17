import shutil
import os

source_dir = r"E:\MC\.minecraft\resourcepacks\create_resource_pack"
destination_dir = r"E:\Work\_Development\Minecraft\Vanilla\MinecraftWikiTutorialExample\resourcepacks\create_resource_pack"

if os.path.exists(destination_dir):
  shutil.rmtree(destination_dir)

try:
    shutil.copytree(source_dir, destination_dir)
    print("文件夹复制成功！")
except FileExistsError:
    print("目标文件夹已存在！")
except Exception as e:
    print(f"复制失败：{e}")