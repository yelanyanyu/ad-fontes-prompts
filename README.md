# Ad Fontes Prompts：找回语言的体感

[![License: CC BY-NC-SA 4.0](https://img.shields.io/badge/License-CC%20BY--NC--SA%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by-nc-sa/4.0/)

> **Ad Fontes** （拉丁语：回到源头）

学外语最让人挫败的，往往不是背单词本身，而是背了还是不懂。看到 "Hammer" 反应出 "锤子" 只是第一步，母语者脑子里闪过的，其实是**寻找硬物、高举、下砸**的那股劲儿。

这个项目就是想帮你找回这股劲儿。我们不搞复杂的翻译，而是写了一套 Prompt，让 AI 带着你回到单词诞生的现场，去**经历**那个动作，而不是死记那个定义。

## 它是怎么工作的？

简单说，就是**把单词还原成动作**。

比如 **Discuss**（讨论）。
死记硬背：Discuss = 讨论。
**Ad Fontes 的方式**：
带你回到古罗马的农场，看人们怎么把谷物敲打（quash/cut）、摇晃，把糠皮震开（dis-），最后留下沉甸甸的果实。
这时候你再看 Discuss，它就不再是枯燥的“开会”，而是**思想碰撞、去伪存真**的过程。

我们用 Prompt 引导 AI 做三件事：
1.  **拆解**：把词拆回最原始的物理动作。
2.  **重构**：用第一人称带你演一遍这个动作。
3.  **连接**：告诉你这个物理动作是怎么变成现在这个抽象含义的。

## 🛠️ 工具箱与使用指南

除了核心的 Prompt，我们还做了一些顺手的小工具，方便你管理和查看 AI 生成的内容。

### 1. 核心 Prompts (The Soul)
这是项目的核心，直接复制给 ChatGPT 或 Claude 用就行。
*   **英语单词解析**：[English/word-en2cn-yaml.md](English/word-en2cn-yaml.md) (推荐)
*   **英语词组解析**：[English/phrase-en2cn-md.md](English/phrase-en2cn-md.md)

### 2. 本地查看器 (The Viewer)
如果你喜欢清爽的阅读体验，可以用这个。
*   **文件**：`tool/yaml2html.html`
*   **用法**：**双击直接打开**。把 AI 生成的 YAML 格式内容粘贴进去，它会自动渲染成漂亮的网页版卡片。

### 3. 数据管理器 (The Manager)
如果你想把学过的词都存起来，建立自己的语料库，用这个。这是一个全功能的 Web 应用，支持离线暂存和云端同步。
*   **文件**：`start_tool_yml2pg.bat`
*   **核心功能**：
    *   **双模运行**：没网也能用！支持**离线暂存** (Local Storage)，联网后一键同步到数据库。
    *   **高级管理**：支持模糊搜索、多维排序、分页浏览。
    *   **智能同步**：自动检测数据冲突，提供 Diff 对比界面，确保数据不丢失。
*   **用法**：
    *   开发模式（推荐）：双击 [start_tool_yml2pg.bat](file:///d:/myCode/formal-projects/ad-fontes-prompts/start_tool_yml2pg.bat)（自动安装依赖，启动 API+前端）
        *   前端：http://localhost:5173
        *   API：http://localhost:3000/api
    *   生产模式：`start_tool_yml2pg.bat prod`（先 build 再以 production 启动，http://localhost:3000）
    *   停止：双击 [stop_tool_yml2pg.bat](file:///d:/myCode/formal-projects/ad-fontes-prompts/stop_tool_yml2pg.bat)
    *   *注：PostgreSQL 为可选项；离线模式不需要数据库，联网后可同步。*

### 4. 集成 Skills (The Creators)
为了让生成的内容更好用，我们还集成了一些 Agent Skills：
*   **Humanizer-zh**：觉得 AI 写得太生硬？用它润色一下，去去“机器味”。
*   **Baoyu Skills**：想把单词解析做成小红书图片或信息图？用它一键生成提示词。
*   **Word Extractor Agent**：从 Markdown 文章中批量提取加粗单词，使用 compromise 获取 lemma，生成 YAML，并支持 API 上传或离线暂存。

## 计划与期待

- [x] **核心提示词**：英语单词深度解析
- [x] **核心提示词**：英语词组/习语解析
- [x] **工具链**：YAML 查看器 (HTML) & 管理器 (Node.js/PG)
- [x] **Skills**：写作润色与配图生成
- [ ] **多语言**：德语解析正在路上了
- [ ] **场景训练**：不给词选词，而是给场景填词

## 贡献与协议

语言的海洋太大了，一个人游不完。如果你也对**认知语言学**感兴趣，或者有好玩的 Prompt 想法，欢迎 Fork 仓库或是提 PR。

本项目采用 **[CC BY-NC-SA 4.0](LICENSE)** 协议。
简单说：**欢迎自用、分享、魔改，只要别直接拿去卖钱就行。**

---
*联系我：yelanyanyu@outlook.com*
