# 命运远征

命运远征是面向 Minecraft Java 1.21.11 的 1–4 人高压通关数据包。它将从出生到击杀末影龙的流程划分为荒野求生、炼狱夺火、要塞追猎和终末决战四个阶段，并加入灾厄、命运碎片、世界命运、阶段任务、16 个事件、4 个大灾变和末影龙三阶段战斗。

> 警告：流星、火焰和虫蚀事件会永久破坏地形。请先备份世界，建议在专用世界中游玩。

## 安装

1. 将 `FateExpedition` 复制到世界的 `datapacks` 目录。
2. 进入 Minecraft Java 1.21.11。
3. 执行 `/reload`。
4. 执行 `/trigger fe_ping` 检查数据包。
5. 执行 `/trigger fe_start` 开始。

## 玩家命令

```mcfunction
/trigger fe_start
/trigger fe_stop
/trigger use
/trigger fe_ping
/trigger fe_uninstall
```

`/trigger use` 打开共享命运碎片菜单：随机附魔、下界结构定位、降低灾厄或主动挑衅。所有菜单选项都可直接点击。

## 核心规则

- 每 5 分钟灾厄 +1。
- 进入下界、取得烈焰棒、返回主世界和进入末地时分别 +3。
- 灾厄达到 10 会按当前阶段触发大灾变。
- 普通事件结束后才开始下一段 20–60 秒冷却。
- 世界命运会改变补给、敌人、事件节奏或通关时限。
- 七个原版进度会解锁全队四选一里程碑奖励；属性奖励在死亡、停止和通关后保留，只有卸载才移除。

完整规则和事件数值见 [docs/GAMEPLAY.md](docs/GAMEPLAY.md) 与 [docs/EVENT_BALANCE.md](docs/EVENT_BALANCE.md)。

## 开发

```powershell
powershell -ExecutionPolicy Bypass -File .\tools\validate.ps1
powershell -ExecutionPolicy Bypass -File .\tools\build-release.ps1
```

构建产物写入 `dist/FateExpedition-v0.1.0.zip`，ZIP 根目录直接包含 `pack.mcmeta` 和 `data`。

## 许可

MIT License。随机附魔与里程碑实现迁移自同一作者维护的 Random Event 数据包。
