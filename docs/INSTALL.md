# Detailed Installation Guide

如果 `install.sh` 用不了,或者你在 Windows,看这份详细指南。

## 安装位置

Industry Resume Toolkit 是个 Claude Code skill,所以要装到 Claude Code 能识别的位置:

- **Skill 主体**:`~/.claude/skills/industry-resume-toolkit/`
- **Slash commands**:`~/.claude/commands/`

这两个文件夹是 Claude Code 用户级配置目录,**全局生效**——你在任何对话里都能用。

---

## Mac 用户

### 方式 1:用 install.sh(推荐)

1. 打开终端(应用程序 → 实用工具 → 终端)
2. 把 `install.sh` 文件**拖进终端窗口**(把脚本拖过去会自动填写路径)
3. 按回车,等几秒
4. 看到 "✓ 安装完成!" 就好了

### 方式 2:手动安装

1. **打开 Finder,显示隐藏文件**:`Cmd + Shift + .`
2. 顶部菜单 **"前往" → "前往文件夹"**(或 `Cmd + Shift + G`)
3. 输入:`~/.claude/skills` 然后回车
   - 文件夹不存在就先创建:`~/.claude` → 进入 → 新建文件夹 `skills`
4. 把 `skill/` 文件夹整个拖进去,**重命名为 `industry-resume-toolkit`**
5. 同样的方式,`Cmd + Shift + G` → 输入 `~/.claude/commands`
6. 把 `commands/` 下的 6 个 `.md` 文件**全部拖进去**(注意是文件,不是整个 commands 文件夹)

---

## Windows 用户

### 手动安装

1. 打开**文件资源管理器**
2. **显示隐藏的项目**:菜单"查看" → 勾选"显示" → "隐藏的项目"
3. 顶部地址栏输入:`%userprofile%\.claude\skills` 然后回车
   - 文件夹不存在,先在 `%userprofile%` 下创建 `.claude\skills` 两层
4. 把这个 repo 里的 `skill/` 文件夹拖进去,**重命名为 `industry-resume-toolkit`**
5. 同样的方式,地址栏输入:`%userprofile%\.claude\commands`
6. 把 `commands/` 下的 6 个 `.md` 文件全部拖进去

### Git Bash 方式(进阶)

如果你装了 Git for Windows:

```bash
mkdir -p ~/.claude/skills/industry-resume-toolkit
mkdir -p ~/.claude/commands
cp -r skill/* ~/.claude/skills/industry-resume-toolkit/
cp commands/*.md ~/.claude/commands/
```

---

## 装完之后

### 1. 完全重启 Claude 桌面 App

**不是只关窗口,是 Cmd + Q 或 完全退出**。这样它才会重新读取 skills 配置。

### 2. 验证

在 Claude 任何对话里输入:

```
读一下 ~/.claude/skills/industry-resume-toolkit/SKILL.md,告诉我这个 skill 是干嘛的,有哪些命令
```

它应该回答:
- 这是 Industry Resume Toolkit
- 4 个命令:`/诊断`、`/改简历`、`/JD匹配`、`/加规则`

如果它说"找不到 SKILL.md" 或 "我不知道这个 skill",检查:
- 文件夹路径是不是 `~/.claude/skills/industry-resume-toolkit/`(不是嵌套两层)
- 命令文件是不是直接在 `~/.claude/commands/`(不是嵌在子文件夹)

---

## 怎么用

把简历放到:`~/.claude/skills/industry-resume-toolkit/inputs/`

或者直接拖进 Claude 聊天框(skill 会自动复制一份到 inputs/ 沉淀)。

然后:

```bash
/诊断              # 第一次先跑这个,告诉 AI 你的目标
/改简历            # AI 按方法论改你的简历,直接出成品
/JD匹配 inputs/xxx.docx   # 针对 JD 优化(粘贴 JD 内容)
/加规则            # (高级)发现新规则时
```

输出会在:`~/.claude/skills/industry-resume-toolkit/outputs/`

---

## 升级 / 重装

新版本发布时,直接重新跑 `install.sh` 或者重新拖文件,**会覆盖 skill 文件,但保留你的 cases/ 和 patterns/ 自定义内容**(因为这些是你的私人沉淀)。

⚠️ 如果担心,升级前先备份这两个文件夹:
- `~/.claude/skills/industry-resume-toolkit/cases/`
- `~/.claude/skills/industry-resume-toolkit/patterns/`(如果你自己加过规则)

---

## 常见问题

**Q:Claude Code / Claude 桌面 App 是同一个吗?**

A:基本是同一套底层引擎,所以 skill 和 commands 都共享 `~/.claude/` 配置。桌面 App 是 GUI 入口,Claude Code 是 CLI 入口。

**Q:能在 Cursor / Codex / 其他工具用吗?**

A:本 toolkit v0.1 主要为 Claude Code 设计。Codex / Cursor 支持在 roadmap 里(参考 [research-application-toolkit 的多平台支持](https://github.com/xujingchen1996/research-application-toolkit))。

如果你急用,可以**手动**复制 SKILL.md + patterns/ 的内容当 prompt,粘到任何 LLM(ChatGPT、DeepSeek、Doubao、Kimi 等)使用。

**Q:用国内大模型(GLM、DeepSeek、Doubao)效果会差吗?**

A:核心方法论是 prompt 级的,理论上任何能理解长 context 的 LLM 都行。实测 GLM-4 / DeepSeek-V3 / Doubao 都能用,质量略低于 Claude / GPT-4 但差距不大。

**Q:我不会用 Claude Code,只想要 prompt 用 ChatGPT 行不行?**

A:行。直接复制 `skill/SKILL.md` 的全部内容当 system prompt,然后把简历发过去就行。本 toolkit 是 LLM-agnostic 的。

---

任何问题提 Issue 或者私信作者。
