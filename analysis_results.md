# Gohyangmandu (고향만두) Flash Game Analysis 🥟

## Overview
This project contains the source files for the classic Korean Flash game "Gohyangmandu" (Home-made Dumpling). The game is built using **ActionScript 2.0** and relies on frame-based state transitions and movie clip manipulations.

## Core Game Logic
The game's outcome is determined in **Frame 175**, where the user's choices for ingredients, dumpling shape, and cooking method are evaluated.

### Winning Conditions ("The Correct Recipe")
To achieve the "Success" (Clear) screen, the following conditions must be met:

1.  **Dumpling Shape (`check1`)**: Must be **Frame 4** (The classic "properly folded" dumpling).
2.  **Cooking Method & Container**:
    *   **Frying**: `check2` (method) = **Frame 2** AND `yongi` (container) = **Frame 2** (Frying Pan).
    *   **Steaming**: `check2` (method) = **Frame 1** AND `yongi` (container) = **Frame 4** (Steamer).
    *   **Boiling**: `check2` (method) = **Frame 3** AND `yongi` (container) = **Frame 3** (Pot).
3.  **Ingredients (`score_sok`)**: Total count must be **8 or higher**.

### Ingredient Mapping
The ingredients are tracked by individual movie clips and a cumulative variable `score_sok`. When an ingredient is selected, its movie clip goes to **Frame 2** and `score_sok` increments.

*   **Pig (돼지고기)**: `pig`
*   **Tofu (두부)**: `dubu`
*   **Garlic (마늘)**: `manle`
*   **Cheese (치즈)**: `cheese`
*   **Green Onion (대파)**: `bigpa`
*   **Onion (양파)**: `yangpa`
*   **Pepper (고추)**: `pepper`
*   *And others...*

## Project Structure (Consolidated)
*   **index.html**: The master file containing the Ruffle emulator, the Base64-embedded game data, and all necessary CSS styles. This file is standalone (requires internet for Ruffle CDN).
*   **고향만두.swf**: The original compiled Flash game binary.
*   **고향만두_게임프로젝트전체파일.fla**: The Adobe Flash source project file.
*   **고향만두_게임프로젝트전체scripts/**: Decompiled ActionScript files organized by frames and sprites for logical reference.

---
**Managed by Antigravity AI**
