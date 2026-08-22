# dsh-design

在 DeepSeek Harness（DSH）内做 HTML 设计的素材库与集成仓库。

## 目标

- 在 DSH 中复现 OpenDesign 的核心设计能力（不复制完整产品）
- 聚焦 HTML 设计工作台：模板、风格/设计系统、排版、文生图
- 不需要多 agent / 桌面 App / OpenDesign Cloud

## 本仓库将包含

| 目录 | 内容 | 来源 |
|---|---|---|
| `templates/` | 精选 HTML 设计模板 | OpenDesign `design-templates/` |
| `design-systems/` | 品牌/风格设计系统，可转 `design-tokens.css` | OpenDesign `design-systems/` |
| `skills/` | 设计/前端 Skills，放入 `~/.dsh/skills` | OpenDesign `skills/` |
| `prompts/` | 文生图/视频提示词模板 | OpenDesign `prompt-templates/` |
| `plugins/` | DSH 侧插件 / 集成说明 | 自研 + 可复用 |
| `docs/` | 使用说明、导入脚本、许可证记录 | 本仓库 |

## 相关仓库

- 本地插件：`mythpan1/dsh-local-plugins`
- OpenDesign 上游：`nexu-io/open-design`（Apache-2.0）
- DeepSeek Design：`Devin-AXIS/deepseek-design`

## 状态

- [x] 仓库初始化
- [x] 导入模板（首批 5 个）
- [x] 导入设计系统（首批 5 个）
- [x] 导入 Skills（首批 5 个）
- [x] 导入提示词模板（image/video 各 5）
- [ ] DSH 插件集成说明

## 来源与许可

- 模板、设计系统、Skills、提示词均来自 [nexu-io/open-design](https://github.com/nexu-io/open-design)（Apache-2.0）。
- 上游许可证见 `licenses/OPEN-DESIGN-LICENSE.txt`。
