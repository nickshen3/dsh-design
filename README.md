# dsh-design

在 DeepSeek Harness（DSH）内做 HTML 设计的素材库与集成仓库。

## 目标

- 在 DSH 中复现 OpenDesign 的核心设计能力（不复制完整产品）
- 聚焦 HTML 设计工作台：模板、风格/设计系统、排版、文生图
- 不需要多 agent / 桌面 App / OpenDesign Cloud

## 仓库结构

| 目录 | 内容 | 来源 |
|---|---|---|
| `design-templates/` | 全量 HTML 设计模板（114 个） | OpenDesign `design-templates/` |
| `design-systems/` | 全量设计系统（152 套），可转 `design-tokens.css` | OpenDesign `design-systems/` |
| `skills/` | 全量 Skills（162 个），按需激活到 `~/.agents/skills` | OpenDesign `skills/` |
| `prompt-templates/` | 文生图/视频提示词模板（106 个） | OpenDesign `prompt-templates/` |
| `scripts/` | 激活/同步/索引脚本 | 本仓库 |
| `.github/workflows/` | 每日自动同步上游 | 本仓库 |
| `catalog.md` | 资源索引 | 本仓库 |
| `licenses/` | 上游开源许可 | OpenDesign Apache-2.0 |

## 相关仓库

- 本地插件：`mythpan1/dsh-local-plugins`
- OpenDesign 上游：`nexu-io/open-design`（Apache-2.0）
- DeepSeek Design：`Devin-AXIS/deepseek-design`

## 状态

- [x] 仓库初始化
- [x] 导入设计模板（全量 114 个）
- [x] 导入设计系统（全量 152 个）
- [x] 导入 Skills（全量 162 个）
- [x] 导入提示词模板（全量 106 个）
- [x] 按需激活脚本
- [x] 上游同步脚本 + GitHub Actions
- [x] 资源索引 catalog.md
- [ ] DSH 插件集成说明

## 用法

### 按需激活

```bash
# 激活 skill（复制到 ~/.agents/skills，DSH 新会话自动加载）
./scripts/activate.sh skill color-expert

# 复制模板到指定工作区
./scripts/activate.sh template dashboard --to /Volumes/Pan/Downloads/dsh/design/session-xxx

# 复制设计系统到指定工作区
./scripts/activate.sh design-system apple --to /Volumes/Pan/Downloads/dsh/design/session-xxx

# 停用
./scripts/activate.sh deactivate skill color-expert
```

### 同步上游

```bash
# 手动同步 OpenDesign 最新材料并推送
./scripts/sync-upstream.sh main

# 或查看资源索引
./scripts/generate-catalog.sh
```

GitHub Actions 每天 03:00 自动同步上游。

## 来源与许可

- 模板、设计系统、Skills、提示词均来自 [nexu-io/open-design](https://github.com/nexu-io/open-design)（Apache-2.0）。
- 上游许可证见 `licenses/OPEN-DESIGN-LICENSE.txt`。
