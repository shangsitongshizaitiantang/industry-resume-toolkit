#!/bin/bash
# Industry Resume Toolkit — Install Script (Mac / Linux)
# Usage: cd into this repo folder, then `sh install.sh`

set -e

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
SKILL_DEST="$HOME/.claude/skills/industry-resume-toolkit"
CMD_DEST="$HOME/.claude/commands"

echo "==============================================="
echo "  Industry Resume Toolkit — 安装"
echo "==============================================="
echo ""

# 1. 创建目录
echo "1. 创建目标目录..."
mkdir -p "$SKILL_DEST"
mkdir -p "$CMD_DEST"

# 2. 拷贝 skill
echo "2. 安装 skill 到 $SKILL_DEST ..."
cp -r "$SCRIPT_DIR/skill/"* "$SKILL_DEST/"
# 处理可能的隐藏文件
cp -r "$SCRIPT_DIR/skill/".[!.]* "$SKILL_DEST/" 2>/dev/null || true

# 3. 拷贝 commands
echo "3. 安装 slash command 到 $CMD_DEST ..."
cp "$SCRIPT_DIR/commands/"*.md "$CMD_DEST/"

echo ""
echo "✓ 安装完成!"
echo ""
echo "Skill 位置:$SKILL_DEST"
echo "命令位置:$CMD_DEST"
echo ""
echo "下一步:"
echo "  1. 完全退出 Claude 桌面 App,再重新打开(让它读到新 skill)"
echo "  2. 第一次用,先跑 /诊断 确定你的画像"
echo "  3. 然后按需用 /点评 / /改稿 / /JD匹配 等命令"
echo ""
echo "如果有问题,看 docs/INSTALL.md"
echo ""
echo "如果这个 toolkit 帮到你了,请回到 GitHub 给我们点个 ⭐"
