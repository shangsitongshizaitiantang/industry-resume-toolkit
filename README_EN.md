# Industry Resume Toolkit

> English | [中文](README.md)

**A resume methodology toolkit for Chinese industry job seekers.**
**Not another AI resume generator — this codifies how a senior HR consultant actually edits resumes.**

```
Most resume projects on GitHub are for programmers, academic CVs, or generic templates.
This toolkit fills the gap:
    Tech giants, state-owned enterprises, banks, foreign companies — 
    Chinese industry job hunting.
```

---

## How is this different from other AI resume tools?

| Generic AI Resume Tools | Industry Resume Toolkit |
|---|---|
| Material → generate new resume | Resume → diagnose + translate + dig deeper |
| Cookie-cutter templates | Custom rules by company type (SOE / Big Tech / Bank / Multinational) |
| Increasingly polished | **Truthfulness principle**: under-state rather than over-claim |
| ATS keyword stuffing | Business value translation (action → business meaning) |
| One-shot generation | Two modes: directional advice / full hands-on rewrite |

---

## Core Methodology: Three-Layer Framework

```
Phase 1 — Information Hygiene (defuse mines)
    └─ QR codes / "preparing for" certs / split Office apps / 
       courses with tool names / cherry-picked grades
       These are not bonuses — they're penalties to avoid

Phase 2 — Business Value Translation (the core)
    └─ Action → business meaning, Tool → business result, 
       Experience → recruiter's language
       Concise headers hitting keywords / quantification / 
       "action + execution + metrics" triplet

Phase 3 — Experience Mining (only in deep mode)
    └─ Interview-style probing to fill out the story:
       business context / data scale / personal contribution / 
       results / challenges / key decisions
```

Plus **Type A (experienced) / Type B (limited experience) + career-changer modifier** classification, which determines how much effort goes into each layer.

---

## Company-Type Differentiation (the core USP)

| Company Type | Style | Patterns file |
|--------------|-------|---------------|
| **Big Tech (Internet / Tech)** | Quantification, JD-matching, agile, data-driven | `patterns/企业性质/大厂.md` |
| **State-Owned Enterprises** | Stable, formal, politically appropriate, long-term | `patterns/企业性质/国企.md` |
| **Banking / Finance** | Rigorous, compliant, risk-aware, numerically precise | `patterns/企业性质/银行.md` |
| **Multinationals / English CVs** | International, STAR method, strong verbs, concise | `patterns/企业性质/外企.md` |

A resume targeting an SOE looks completely different from one targeting Big Tech. Stack the **company-type pattern** with the **role-specific pattern** (`patterns/岗位/*.md` — covers Operations, PM, Finance, Audit, HR, Sales, Data, Marketing) to target your exact scenario.

---

---

## Role-Specific Patterns (the second dimension)

Company type defines the overall style; **role defines specific vocabulary, JD-matching keywords, and tool stack**. Stack both dimensions to nail the recruiter's mental model.

| Role | Covers | File |
|------|--------|------|
| **Operations(运营)** | Content / User / Activity / Community / E-commerce / Short video / Private domain | `patterns/岗位/运营.md` |
| **Product Manager** | C-end / B-end / Data product / SaaS / Platform | `patterns/岗位/产品.md` |
| **Data Analytics** | Business analyst / BI / Growth analyst | `patterns/岗位/数据分析.md` |
| **Marketing** | Brand / Digital / Content / PR / Events / KOL | `patterns/岗位/市场营销.md` |
| **Finance** | Accounting / Cashier / Financial analysis / FP&A | `patterns/岗位/财务.md` |
| **Audit** | Big 4 / Internal audit | `patterns/岗位/审计.md` |
| **HR** | HRBP / Recruiting / L&D / C&B / ER / OD | `patterns/岗位/HR.md` |
| **Sales / BD** | B2B sales / KA / BD / Account / CSM | `patterns/岗位/销售.md` |
| **Engineering** | Backend / Frontend / Full-stack / Algorithm / Data Eng / Testing / DevOps | `patterns/岗位/开发.md` |
| **Legal** | Law firm associates / In-house counsel / Compliance / IP / Data privacy | `patterns/岗位/法务.md` |
| **Strategy / Consulting** | MBB / Big 4 Strategy / Corporate strategy / Investment strategy / Equity research | `patterns/岗位/战略咨询.md` |
| **Design** | UI / UX / Visual / Product design / Interaction design / UX research | `patterns/岗位/设计.md` |

v0.1 covers 12 most-demanded roles. Contributions welcome for more (Procurement, CSM, Admin, PR, Investment, Engineering specializations, etc.). See [CONTRIBUTING.md](CONTRIBUTING.md).

## 4 Slash Commands

```
/诊断 (diagnose)  — Run first. Tells AI your goal (role / industry / company type / language / career change)
/改简历 (edit)    — Main command. AI edits your resume by the methodology, outputs final .docx
/JD匹配 (match)   — Check your resume against a specific JD with targeted rewrite suggestions
/加规则 (add-rule) — (Advanced) Add newly discovered rules to patterns/ on the fly
```

---

## Installation

### Mac

```bash
git clone https://github.com/[your-username]/industry-resume-toolkit.git
cd industry-resume-toolkit
sh install.sh
```

### Windows / Manual

1. Copy the entire `skill/` folder to `~/.claude/skills/industry-resume-toolkit/`
2. Copy the 6 `.md` files in `commands/` to `~/.claude/commands/`
3. Fully restart Claude desktop app

Detailed install: [docs/INSTALL.md](docs/INSTALL.md)

### Verify Installation

In any Claude conversation:

```
Read ~/.claude/skills/industry-resume-toolkit/SKILL.md and tell me what this skill does
```

It should correctly describe the toolkit and list all commands.

---

## Typical Workflow

**First time**:

```bash
# 1. Drop your resume into inputs/ or directly into chat
# 2. Run diagnose to capture your profile
/诊断 inputs/resume.docx

# 3. Let AI edit your resume — outputs final .docx
/改简历
# (AI auto-evaluates info density; will ask 3-5 follow-up questions if needed)
```

**For specific JD**:

```bash
/JD匹配 inputs/resume.docx     # Then paste the JD content
```

**Input/output**: `.docx` / `.pdf` / `.md` / plain text all work. PDF input is auto-converted, you don't need to do it manually. Default output is `.docx`; AI will ask if you want Markdown / PDF / English version after editing.

---

## Who This Is For

✅ **Good fit**:
- Anyone wanting AI help on resumes but tired of generic templates
- Targeting **Chinese industry roles** (Big Tech / SOE / Banks / Multinationals)
- **Overseas students** returning to job-hunt in China
- **Career changers** needing to rebuild their narrative
- Used other AI tools but found them **too generic / not localized enough**

❌ **Not a fit**:
- Academic CVs (PhD / MSc applications)

---

## LLM-Agnostic

This toolkit is packaged as a Claude Code skill, but the **methodology itself is LLM-agnostic**:

- Copy `skill/SKILL.md` + `patterns/*.md` content as a prompt for ChatGPT, DeepSeek, Kimi, Doubao, Qwen, Claude.ai, etc.
- Use with Codex / Cursor / any AI agent that reads this repository

Future plans: NPM-based installer + Codex support (inspired by `xujingchen1996/research-application-toolkit`).

---

## License

Contributions welcome! Especially:
- New company-type patterns (e.g., Media / Legal / Healthcare / Education)
- New role-specific patterns (e.g., PM / Data Analyst / Legal Counsel)
- De-identified real cases (subject to review)
- Translations (English / other language READMEs)

PRs or Issues welcome. See [CONTRIBUTING.md](CONTRIBUTING.md).

---

## Want Personalized Service?

This toolkit is free, open-source methodology. If your situation is complex (e.g., overseas + career change + multi-target + bilingual) and self-editing doesn't quite get you there, the author also offers 1-on-1 service

Contact: search”上司同事在天堂“ [Xiaohongshu：8328242226], or DM there.

---

## Contributing

Contributions welcome! Especially:
- New company-type patterns (e.g., Media / Legal / Healthcare / Education)
- New role-specific patterns (e.g., PM / Data Analyst / Legal Counsel)
- De-identified real cases (subject to review)
- Translations (English / other language READMEs)

PRs or Issues welcome. See [CONTRIBUTING.md](CONTRIBUTING.md).

---

If this toolkit helped you, please **⭐ the repo** — it's the biggest motivator for open-source contributors.
