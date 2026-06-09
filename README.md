# 🧬 circuit-metro-skills

A collection of **`modular architecture skills`** for Android apps powered by **[Circuit](https://github.com/slackhq/circuit)** and **[Metro](https://github.com/ZacSweers/metro)**.

## Overview
This repository provides a set of operational instructions (Skills) for AI coding agents to maintain a consistent architecture in modular Android projects. It enforces the use of **Circuit** for UI/Business logic separation and **Metro** for type-safe DI.

## Why use this?
Manually scaffolding feature/data modules in a large-scale project is error-prone. These skills ensure that your AI agent generates code that strictly adheres to the project's dependency graph, DI scoping rules, and naming conventions.

## What is a Skill?
A Skill is a focused instruction set (`SKILL.md`) designed for autonomous agents. It declares triggers in YAML frontmatter and provides a step-by-step workflow for the agent to follow.

## Getting Started
To integrate these skills into your project:

1. Create a `.agent/skills` directory in your project root.
2. Copy the skill folders into the directory.
3. Run the installation script:
```bash
   ./scripts/install-skills.sh .agent/skills
```

## Supported Skill Sets
- `data`: Repository and UseCase implementation.
- `domain`: Interface-only API definitions.
- `feature`: Circuit-based Screen, Presenter, and UI implementation.

## Contributing
Contributions are welcome! Please follow the authoring spec in docs/SPEC.md to ensure consistency.

_Built for modern Android development with [Circuit](https://github.com/slackhq/circuit) & [Metro](https://github.com/ZacSweers/metro)._
