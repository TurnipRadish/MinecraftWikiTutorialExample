import shutil
import os

source_dir = r"E:\MC\.minecraft\saves\主要测试\datapacks\tutorial_text_component"
destination_dir = r"E:\Work\_Development\Minecraft\Vanilla\MinecraftWikiTutorialExample\datapacks\tutorial_text_component"

if os.path.exists(destination_dir):
  shutil.rmtree(destination_dir)

try:
    shutil.copytree(source_dir, destination_dir)
    print("文件夹复制成功！")
except FileExistsError:
    print("目标文件夹已存在！")
except Exception as e:
    print(f"复制失败：{e}")