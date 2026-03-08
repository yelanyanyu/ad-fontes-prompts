## [1.3.0] - 2026-03-08

### 🚀 主要亮点 (Highlights)

项目架构精简！我们将数据管理功能完全迁移到了独立的 [ad-fontes-manager](https://github.com/yelanyanyu/ad-fontes-manager) 仓库，让本仓库专注于核心 Prompts。同时清理了已废弃的工具和 API 文档，使项目结构更加清晰。

### 🗑️ 移除 (Removed)

- **本地工具清理**:
    - 删除 `tool/yml2html.html` - YAML 查看器功能已整合到 ad-fontes-manager
    - 删除 `docs/API.md` - API 文档随数据管理器迁移至独立仓库
    - 删除 `start_tool_yml2pg.bat` 和 `stop_tool_yml2pg.bat` 脚本引用

### ⚡ 优化 (Changed)

- **README 重构**:
    - 移除本地数据管理器的详细说明
    - 添加指向独立仓库 [ad-fontes-manager](https://github.com/yelanyanyu/ad-fontes-manager) 的链接
    - 简化"数据管理器"板块，明确其作为独立项目的定位
    - 更新文档导航，移除 API.md 链接

### 📁 项目结构更新

```
ad-fontes-prompts/              # 核心 Prompts 仓库
├── English/                    # 英语解析 Prompts
│   ├── word-en2cn-yaml.md     # 单词解析 (YAML)
│   ├── word-en2cn-md.md       # 单词解析 (Markdown)
│   ├── phrase-en2cn-md.md     # 词组解析
│   └── phrase-en2cn-agent-test.md  # 词组解析 (测试版)
├── German/                     # 德语解析 Prompts
│   ├── word-de2cn-yaml.md     # 德语单词解析 (YAML)
│   └── word-de2en-md.md       # 德语单词解析 (Markdown)
├── practice/                   # 场景练习 Prompts
│   ├── word_en.md             # 单词猜谜练习
│   └── phrase_en.md           # 词组猜谜练习
└── docs/                       # 文档
    └── Principle_Explanation.md  # 语言学理念

ad-fontes-manager/              # 【独立仓库】数据管理器
├── 离线优先架构
├── 智能冲突解决
├── 精美卡片渲染
└── 完整 API 支持
```

---

## [1.2.3] - 2026-03-08

### 🚀 主要亮点 (Highlights)

多语言支持与学习模式大升级！现在项目不再局限于英语，德语解析正式加入。同时新增的"逆向猜词"练习模式，让你从被动接收转向主动思考，真正检验学习成果。

### ✨ 新增 (Added)

- **德语解析支持 (German Support)**:
    - **德语单词解析 (YAML 格式)**: [German/word-de2cn-yaml.md](../German/word-de2cn-yaml.md)
        - 支持德语特有的可分动词 (Separable Verbs) 分析
        - 复合词 (Compound Words) 自动拆解
        - 语法形态标注（性、数、格、时态、语态）
    - **德语单词解析 (Markdown 格式)**: [German/word-de2en-md.md](../German/word-de2en-md.md)
    - 遵循德语语言学规范，区分可分/不可分前缀

- **场景练习 Prompts (Practice Mode)**:
    - **单词猜谜**: [practice/word_en.md](../practice/word_en.md) - 根据词源描述逆向猜单词
    - **词组猜谜**: [practice/phrase_en.md](../practice/phrase_en.md) - 根据空间向量描述猜短语
    - 设计理念：从"被动接收"转向"主动思考"，通过谜题形式加深记忆

- **英语词组解析增强**:
    - **英语词组测试版**: [English/phrase-en2cn-agent-test.md](../English/phrase-en2cn-agent-test.md)
    - 针对短语动词 (Phrasal Verbs) 的空间向量分析

### ⚡ 优化 (Changed)

- **文档结构优化**:
    - README 新增"场景练习"板块说明
    - 新增"文档导航"表格，方便快速定位
    - 更新"计划与期待"进度，标记已完成项目

- **API 文档完善**:
    - 新增 `/api/words/check` 接口文档
    - 新增 `/api/words/search` 接口文档
    - 完善 YAML 格式规范说明
    - 添加数据库 Schema V2 详细表结构

### 📁 项目结构更新

```
ad-fontes-prompts/
├── English/                    # 英语解析 Prompts
│   ├── word-en2cn-yaml.md     # 单词解析 (YAML)
│   ├── word-en2cn-md.md       # 单词解析 (Markdown)
│   ├── phrase-en2cn-md.md     # 词组解析
│   └── phrase-en2cn-agent-test.md  # 词组解析 (测试版)
├── German/                     # 【新增】德语解析 Prompts
│   ├── word-de2cn-yaml.md     # 德语单词解析 (YAML)
│   └── word-de2en-md.md       # 德语单词解析 (Markdown)
├── practice/                   # 【新增】场景练习 Prompts
│   ├── word_en.md             # 单词猜谜练习
│   └── phrase_en.md           # 词组猜谜练习
├── tool/                       # 工具
│   └── yml2html.html          # YAML 查看器
└── docs/                       # 文档
    ├── API.md                 # API 文档 (已更新)
    └── Principle_Explanation.md  # 语言学理念
```

---

## [1.2.1] - 2026-01-25

### 🚀 主要亮点 (Highlights)

我们给 Etymos Manager 装上了一个**"聪明的大脑"**和一双**"火眼金睛"**。现在，它不仅能自动把变形词还原成原型（比如把 `running` 认成 `run`），还能在你试图覆盖已有数据时，像个负责任的编辑一样跳出来提醒你："嘿，这几个字段不一样，确定要改吗？"

界面也彻底大修，支持拖拽分栏和全局搜索，用起来顺手多了。

### ✨ 新增 (Added)

- **智能冲突解决 (Smart Conflict Resolution)**:
    - **火眼金睛**: 当你试图保存一个已存在的单词时，系统会自动进行**深度比对**。
    - **可视化 Diff**: 哪里变了？新增（绿）、删除（红）、修改（黄），在弹窗里标得清清楚楚，不再盲目覆盖。
    - **差异摘要**: 嫌代码太长不想看？顶部直接列出变动字段（如 `yield.etymology`），一眼看穿改动点。

- **NLP 语言处理**:
    - 集成了 `compromise` 库，用户输入 `took`，系统能顺藤摸瓜找到 `take`。

- **UI 交互大升级**:
    - **可拖拽分栏**: 左边写代码，右边看数据，中间的分隔条随你拖，想看哪边看哪边。
    - **全局搜索**: 顶部新增搜索栏，搜到单词直接**自动填充**进编辑框，修改只需一秒。
    - **数据纯净**: 你的私人例句（User Context）现在会被单独存进 `user_requests` 表，不再污染核心词典库。

### ⚡ 优化 (Changed)

- **数据库架构 (Schema V2)**:
    - **唯一性**: `lemma` 字段现在是唯一的，彻底杜绝重复词条。
    - **版本号**: 引入 `revision_count`，每次修改版本号自动 +1，数据变迁有迹可循。

- **前端性能**:
    - 修复了模态框在长内容下的滚动问题，现在它是独立滚动的，不会把整个页面撑爆。
    - 搜索时列表会自动过滤，只显示你关心的那个词。

### 🐛 修复 (Fixed)

- 修复了在某些情况下，因为 DOM 元素未加载导致差异摘要渲染崩溃的 Bug。
- 修复了 PowerShell 环境下安装依赖时的显示异常。

---

## [1.2.0] - 2026-01-24

### 🚀 主要亮点 (Highlights)

这次更新，我们**把"高冷"的学术门槛拆了**。

之前大家觉得项目里的"现象学"、"具身认知"太难懂，这回我们彻底重写了文档，用大白话告诉你：这就是一套帮你"找回语言体感"的 Prompt。

同时，我们也不再只是个"Prompt 仓库"了。新上线的**数据管理器 (Etymos Manager)** 和 **Agent Skills**，让你从生成内容到存入语料库，再到润色配图，一条龙全搞定。

### ✨ 新增 (Added)

- **数据管理器 (Etymos Manager)**
    - **Web 界面**: 极简风设计，左边输 YAML，右边看单词卡片。
    - **自动建库**: 第一次用？双击脚本，它自己会去 PostgreSQL 里把表建好。
    - **级联删除**: 删一个单词，它关联的词源、同源词、例句会自动清理干净，不用手动翻表。

- **一键脚本**:
    - `start_tool_yml2pg.bat`: 双击启动服务 + 自动打开浏览器。
    - `stop_tool_yml2pg.bat`: 一键彻底关闭服务进程。

- **Agent Skills (AI 技能包)**:
    - `humanizer-zh`: 觉得 AI 生成的解释太生硬？用它去去"机器味"。
    - `baoyu-xhs-images`: 把单词解析一键变成小红书配图 Prompt。
    - `baoyu-infographic`: 生成专业的词源演变信息图 Prompt。

- **词源卡片生成器 (Etymos CardGen)**
    - **双渲染模式**: 想好看？切 Card 模式，复制到 Anki 就是一张精美卡片；想结构化？切 Markdown 模式，格式整整齐齐。
    - **智能剪贴板**: 在 Markdown 预览里也能"复制富文本"，直接粘进笔记软件，格式一点不乱。
    - **视觉升级**: `other_common_meanings` 不再是可怜的单行文本了，现在它有自己的独立板块，看起来更清晰。

### ⚡ 优化 (Changed)

- **文档大重构 (Re-imagined README)**:
    - **Old**: "从现象学视角出发..." (听着就困)
    - **New**: "别死记 Hammer 是锤子，要去感受那股下砸的劲儿。" (一听就懂)
    - 增加了详细的工具使用指引。

- **数据库架构 (Schema Evolution)**:
    - 引入 `JSONB` 字段完整备份原始 YAML，以后解析逻辑变了也能回溯。
    - 启用了 RLS (行级安全策略)，虽然现在是单机版，但安全习惯要从小养起。

- **项目结构**:
    - 把乱七八糟的脚本都收进了 `tool/yaml2pg/`，根目录清爽多了。

- **UI/UX 体验**:
    - 右侧预览区域现在会随着内容自动长高，不再出现难看的滚动条。
    - YAML 校验更聪明了，不仅实时报错，还能容忍空字段，不会因为少填一个非必填项就崩给你看。

### 🐛 修复 (Fixed)

- **Web 服务**: 修复了 Node.js 服务在没有配置 `.env` 时无法正确回退到默认数据库的问题。
- **依赖问题**: 补全了前端项目缺失的 `tailwindcss` 配置引用。
- **Markdown 渲染**: 修复了有序列表在特定情况下无法正确渲染的问题。
