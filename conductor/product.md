# Product Guide - Atelier-Notes.nvim

## Goal
The primary goal of this project is to provide a seamless, highly opinionated Neovim interface for interacting with the `atelier-notes` CLI. This plugin is specifically tailored to support a personal note-taking workflow and assumes a modern Neovim environment, particularly targeting the **LazyVim** distribution.

## Target Audience
- **Primary:** The author (personal use) and users with a similar, opinionated workflow.
- **Secondary:** Neovim users employing the LazyVim distribution who want a deeply integrated note-taking solution.

## Core Features
- **Note Creation:** Quickly create new notes from within Neovim using integrated prompts.
- **Search & Pick:** Seamless integration with standard LazyVim plugins (like `telescope.nvim` or `fzf-lua`) to find and open notes.
- **LazyVim Native:** Prioritizes leveraging features, utilities, and plugins already included in the LazyVim distribution to minimize external dependencies and ensure consistency.
- **CLI Wrapper:** A robust Lua interface that wraps `atelier-notes` commands, handling execution and result parsing.

## User Experience
The plugin is designed to fit perfectly into a LazyVim setup. It leverages the existing ecosystem's UI components and keybinding conventions to provide a fluid, "native" feel for managing notes without context switching.
