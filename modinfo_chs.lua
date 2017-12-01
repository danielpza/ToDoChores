--- To Do Chores Modinfo Simplified Chinese Version
-- @module modinfoChs

name = "家务小助手"
author = "phate09, taichunmin"
version = "2.0.2"
forumthread = "https://github.com/phate09/ToDoChores"
description = "版本: "..version.."\n\n自动采集、砍树、挖掘、种树、施肥、放陷阱、晒肉干！\n\n[预设使用方法]\n* 预设使用 V 来开启工作面板\n* 预设使用 Alt + V 来开启游戏内设定\n\n如果模组有任何 bug 请回报到："..forumthread

api_version = 10

dont_starve_compatible = false
reign_of_giants_compatible = true
dst_compatible = true

all_clients_require_mod = false
client_only_mod = true

server_filter_tags = {"chores", "geometry", "mine", "wood","chop", "AI", "auto"}

icon_atlas = "modicon.xml"
icon = "to-do-chores.tex"

local KEY_A = 65
local keyslist = {}
local string = ""
for i = 1, 26 do
  local ch = string.char(KEY_A + i - 1)
  keyslist[i] = {description = ch, data = ch}
end

local numeric_list={}
for i = 1,9 do
  numeric_list[i] = {description = i, data = i}
end

configuration_options =
{
  {
    name = "togglekey",
    label = "开关工作面板",
    hover = "想要使用什么按键来开关家务小助手的工作面板？(同时按下 Alt 可开启游戏内设定选单)",
    options = keyslist,
    default = "V",
  },
  {
    name = "use_gold_tools",
    label = "制作黄金工具",
    hover = "是否自动尝试制作黄金工具？",
    options={
      {description="否", data=false},
      {description="是", data=true}
    },
    default=false,
  },
  {
    name = "cut_adult_tree_only",
    label = "只砍大树",
    hover = "是否只自动砍大树来最大化种子的掉落？",
    options={
      {description="否", data=false},
      {description="是", data=true}
    },
    default=true,
  },
  {
    name = "planting_x",
    label = "X 轴种植数量",
    hover = "在 X 轴方向自动种植的数量？",
    options = numeric_list,
    default = 5
  },
  {
    name = "planting_y",
    label = "Y 轴种植数量",
    hover = "在 Y 轴方向自动种植的数量？",
    options = numeric_list,
    default = 4
  }
}
