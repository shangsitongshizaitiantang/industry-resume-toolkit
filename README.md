<div align="center">

# Industry Resume Toolkit

### 「**更适合中国宝宝体质的简历方法论**」

[![License](https://img.shields.io/badge/License-CC%20BY--NC--ND%204.0-yellow.svg)](LICENSE)
[![Claude Code](https://img.shields.io/badge/Claude%20Code-Skill-blue.svg)](https://docs.claude.com)
[![LLM Agnostic](https://img.shields.io/badge/LLM-Agnostic-purple.svg)](#)
[![Open Source](https://img.shields.io/badge/Open%20Source-Non--Commercial-green.svg)](LICENSE)
[![Made for](https://img.shields.io/badge/Made%20for-Chinese%20Industry%20Job%20Seekers-red.svg)](README.md)

<br>

简历投了 100 份没回音,不知道哪里出了问题?<br>
找 AI 工具改简历,发现都是国外学术 CV / 程序员模板?<br>
大厂、国企、银行、外企明明完全不同,你却用同一份简历投到处?<br>
转行 / 海归 / 应届零经验,根本不知从哪改起?<br>

<br>

**专为中国 industry 求职者打造的开源简历方法论**

**4 套企业性质规则 · 12 套岗位规则 · 4 个一键命令**

[English](README_EN.md) · [安装](#怎么装) · [快速开始](#怎么用) · [岗位规则](#岗位-patterns第二个维度) · [Roadmap](#roadmap)

</div>

---

> **v0.1 更新**:发布——含三层框架(信息卫生 / 业务价值翻译 / 经历挖掘)、4 套企业性质 patterns(大厂 / 国企 / 银行 / 外企)、12 套岗位 patterns、4 个 slash command(诊断 / 改简历 / JD匹配 / 加规则)、双语 README、Mac 一键安装脚本。

---

---

## 跟其他 AI 简历工具有什么不同

| 通用 AI 简历工具 | Industry Resume Toolkit |
|---|---|
| 给材料 → 生成新简历 | 给简历 → 诊断 + 翻译 + 必要时挖经历 |
| 套通用模板 | 按企业性质(国企/大厂/银行/外企)区分写法 |
| 越改越华丽 | **保真原则**:超出真实水平宁可保守 |
| ATS 关键词堆叠 | 业务价值翻译(动作→业务意义) |
| 一锤子生成,不管你的实际情况 | 先诊断你的情况,再决定怎么改 |

---

## 核心方法论:三层框架

```
Phase 1 — 信息卫生(排雷)
    └─ 二维码 / 备考证书 / Office拆分 / 课程列工具 / 选择性放分
       这些不是加分项,是不减分

Phase 2 — 业务价值翻译(核心)
    └─ 动作→业务意义、工具→业务结果、经历→招聘语言
       小标题命中关键词 / 量化具体 / 三件套(动作+落地+量化)

Phase 3 — 经历挖掘(信息不足时自动触发)
    └─ 像面试官一样追问,把"做过 X"补成完整故事
       业务背景 / 数据规模 / 个人贡献 / 成果 / 困难 / 关键判断
```

## 企业性质差异化(本 toolkit 的核心 USP)

| 企业性质 | 风格 | patterns 文件 |
|---------|------|--------------|
| **大厂(互联网/科技)** | 量化、JD 匹配、敏捷、数据驱动 | `patterns/企业性质/大厂.md` |
| **国央企** | 稳重、规范、政治正确、长期主义 | `patterns/企业性质/国企.md` |
| **银行/金融** | 严谨、合规、风险意识、数字精准 | `patterns/企业性质/银行.md` |
| **外企 / 英文简历** | 国际化、STAR、强动词、Concise | `patterns/企业性质/外企.md` |

不同企业性质,简历的写法完全不同。再叠加岗位 patterns(下面),**企业性质 × 岗位**两层叠加,精准命中你的目标场景。

---

## 岗位 Patterns(第二个维度)

企业性质决定整体风格,**岗位决定具体的专业词汇 + JD 高频关键词 + 工具栈**。两个维度叠加用,才能精准命中招聘官心理。

| 岗位 | 涵盖范围 | 文件 |
|------|---------|------|
| **运营** | 内容运营 / 用户运营 / 活动运营 / 社区运营 / 电商 / 短视频 / 私域 | `patterns/岗位/运营.md` |
| **产品经理** | C 端 / B 端 / 数据产品 / SaaS / 平台产品 | `patterns/岗位/产品.md` |
| **数据分析** | 业务分析 / 商业分析 / BI / 增长分析 | `patterns/岗位/数据分析.md` |
| **市场营销** | 品牌 / 数字营销 / 内容营销 / 公关 / 活动 / KOL | `patterns/岗位/市场营销.md` |
| **财务** | 会计 / 出纳 / 财务分析 / 财务 BP / 税务 / FP&A | `patterns/岗位/财务.md` |
| **审计** | 四大 / 内资八大 / 内审 | `patterns/岗位/审计.md` |
| **HR** | HRBP / 招聘 / 培训 / 薪酬 / 员工关系 / OD | `patterns/岗位/HR.md` |
| **销售** | B 端销售 / KA / BD / Account / 客户成功 | `patterns/岗位/销售.md` |
| **开发** | 后端 / 前端 / 全栈 / 算法 / 数据工程 / 测试 / DevOps | `patterns/岗位/开发.md` |
| **法务** | 律所律师 / 企业法务 / 合规 / 知识产权 / 数据合规 | `patterns/岗位/法务.md` |
| **战略 / 咨询** | MBB / Big 4 Strategy / 大厂战略部 / 投资战略 / 行研 | `patterns/岗位/战略咨询.md` |
| **设计** | UI / UX / 视觉 / 产品设计 / 交互设计 / 用户研究 | `patterns/岗位/设计.md` |

**v0.1 覆盖 12 个最常用岗位**。后续欢迎贡献新岗位 patterns(eg 采购 / 客服 / 行政 / 公关 / 投资 / 工程等)。详见 [CONTRIBUTING.md](CONTRIBUTING.md)。

---

## 4 个 Slash Command

```
/诊断    — 第一次用先跑这个,告诉 AI 你的目标(岗位/行业/企业性质/语言/是否转行)
/改简历  — 主命令:AI 按方法论改你的简历,直接出成品 Word
/JD匹配  — 用具体 JD 检查匹配度,给针对性改写建议
/加规则  — (高级)发现新规则随手加进 patterns
```

---

## 怎么装

### Mac

```bash
git clone https://github.com/[your-username]/industry-resume-toolkit.git
cd industry-resume-toolkit
sh install.sh
```

### Windows / 手动

1. 把 `skill/` 整个复制到 `~/.claude/skills/industry-resume-toolkit/`
2. 把 `commands/` 下的 4 个 `.md` 文件复制到 `~/.claude/commands/`
3. 完全重启 Claude 桌面 App

详细 install instructions 见 [docs/INSTALL.md](docs/INSTALL.md)。

### 验证装好了

在 Claude 任何对话里输入:

```
读一下 ~/.claude/skills/industry-resume-toolkit/SKILL.md,告诉我这个 skill 是干嘛的
```

它应该回答 toolkit 的定位 + 4 个命令清单。

---

## 怎么用

**第一次用**:

```bash
# 1. 把你的简历放到 inputs/ 或直接拖进聊天框
# 2. 跑诊断,告诉 AI 你的目标
/诊断 inputs/我的简历.docx

# 3. 让 AI 改
/改简历

# (AI 会先评估,如果信息缺失会问你 3-5 个关键问题,
#  你答完它就改完输出 .docx 成品)
```

**针对具体 JD 优化**:

```bash
/JD匹配 inputs/我的简历.docx
# (然后粘贴 JD 内容)
```

---

## 输入 / 输出

**输入**:`.docx` / `.pdf` / `.md` / 纯文本都行。
- **PDF 输入会自动转 Word 处理**,不用你手动转
- 简历可以放 `inputs/` 文件夹,也可以直接拖进聊天框

**输出**:默认 `.docx`,改完会问你要不要换其他格式(Markdown / PDF / 英文版 / 双语等)。
- 输入是 .docx → AI 在原文件上改,**保留你的原排版**
- 输入是 .pdf / 纯文本 → AI 用通用专业排版输出 .docx
- 你想用自己的模板 → 把模板文件放 inputs/,告诉 AI 用那个

---

## 适用的对象

✅ **适合**:
- 想用 AI 改简历但**不想被通用模板套**的人
- 目标**中国 industry 岗位**(大厂/国企/银行/外企)的求职者
- **海归回流国内**找工作的留学生
- **转行**需要重构 narrative 的人
- 已经用过其他 AI 工具但觉得**不够精细 / 不够本地化**的人

❌ **不适合**:
- 学术 CV(申博/申研)

---

## 跟其他 AI 工具的协同

本 toolkit 是 Claude Code skill 格式,但**方法论本身是 LLM-agnostic** 的。你也可以:

- 拷贝 `skill/SKILL.md` + `patterns/*.md` 里的内容当 prompt,粘到 ChatGPT / DeepSeek / Doubao / Kimi / 通义千问 / Claude.ai 使用
- 用 Codex / Cursor / 其他 AI Agent 工具读取本仓库,方法论一样适用

未来计划支持 npm 一键安装 + Codex 适配(参考 [research-application-toolkit](https://github.com/xujingchen1996/research-application-toolkit) 的多平台支持)。

---

## Roadmap

**v0.1(当前版本)— 简历优化**
- ✅ 三层框架(信息卫生 / 业务价值翻译 / 经历挖掘)
- ✅ 4 个企业性质 patterns + 12 个岗位 patterns
- ✅ 4 个 slash command(诊断 / 改简历 / JD匹配 / 加规则)
- ✅ 简易安装脚本(Mac)+ 手动指南(Win)

**v0.2(规划中)— 0-1 写简历**

跟"优化"是两套独立的工作流:**优化**是改已有简历;**0-1 写**是给从来没写过简历的人(eg 学生 / 转行 / 长期失业回归 / 海外背景重写国内版)。会包含:
- `/创建` 命令 — 通过问答从零搭出一份简历
- 经历挖掘问卷模板
- 不同企业性质 + 岗位的"启动模板"

**v0.3+(规划中)— 配套生态**
- `/cover-letter` — 求职信生成
- `/interview-prep` — 面试准备(基于简历 + JD)
- npm 一键安装 + Codex 跨平台支持
- 更多岗位 patterns(采购 / 客服 / 行政 / 投资 / 工程细分 等)
- 案例库扩充(社区贡献)
- 英文输出模式

---

## License

本项目采用 **[CC BY-NC-ND 4.0](LICENSE)**(知识共享 署名-非商业性使用-禁止演绎)许可:

- ✅ **可以**:免费学习、使用、原样转载、分享给别人
- ✏️ **转载请署名**:注明作者「上司同事在天堂」(小红书:8328242226)+ 附本仓库链接
- 🚫 **禁止商用**:不得用于售卖、付费课程、商业变现等盈利场景
- 🚫 **禁止发布修改版**:不得把改动后的版本公开发布 / 二次分发(欢迎 fork 后提 PR,由作者合并进正本)

著作权归作者所有。觉得有用请给个 ⭐。

---

## 想要个性化服务

本 toolkit 是开源的免费方法论。如果你的情况比较特殊(eg 海归 + 转行 + 多目标 + 跨语言),自己折腾出来效果不满意,**作者也提供 1-on-1 个性化服务**

联系方式:小红书搜”上司同事在天堂“ [小红书号：8328242226] 或私信。

---

## Contributing

欢迎贡献!尤其是:
- 新岗位 patterns(采购 / 客服 / 行政 / 投资 / 公关 / 工程细分 等)
- 新企业性质 patterns(私企 / 媒体 / 医疗 / 教培 等)
- 脱敏的真实案例(经过审核合适的会加入 examples/)
- 翻译(英文 / 其他语言 README)

提 PR 或开 Issue。详见 [CONTRIBUTING.md](CONTRIBUTING.md)。

---

如果这个 toolkit 帮到你了,**请帮点个 ⭐** — 这是给开源贡献者最大的鼓励。
