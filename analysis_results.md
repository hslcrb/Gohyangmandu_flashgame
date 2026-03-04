# Gohyangmandu (怨좏뼢留뚮몢) Project Analysis

## Overview
This project contains the source files for the classic Korean Flash game "Gohyangmandu" (Home-made Dumpling). The game is built using **ActionScript 2.0** and relies on frame-based state transitions and movie clip manipulations.

## Core Game Logic
The game's outcome is determined in **Frame 175**, where the user's choices for ingredients, dumpling shape, and cooking method are evaluated.

### Winning Conditions ("The Correct Recipe")
To achieve the "Success" (Clear) screen, the following conditions must be met:

1.  **Dumpling Shape (`check1`)**: Must be **Frame 4** (The classic "properly folded" dumpling).
2.  **Cooking Method & Container**:
    *   **Frying**: `check2` (method) = **Frame 2** AND `yongi` (container) = **Frame 2** (Frying Pan).
    *   **Steaming**: `check2` (method) = **Frame 1** AND `yongi` (container) = **Frame 2 or 4** (Steamer).
    *   **Boiling**: `check2` (method) = **Frame 3** AND `yongi` (container) = **Frame 3** (Pot).
3.  **Ingredients (`score_sok`)**: Total count must be **8 or higher**.

### Ingredient Mapping
The ingredients are tracked by individual movie clips and a cumulative variable `score_sok`. When an ingredient is selected, its movie clip goes to **Frame 2** and `score_sok` increments.

*   **Pig (?쇱?怨좉린)**: `pig`
*   **Tofu (?먮?)**: `dubu`
*   **Garlic (留덈뒛)**: `manle`
*   **Cheese (移섏쫰)**: `cheese`
*   **Green Onion (???**: `bigpa`
*   **Onion (?묓뙆)**: `yangpa`
*   **Pepper (怨좎텛)**: `pepper`
*   *And others...*

## Project Structure
*   `怨좏뼢留뚮몢.swf`: The compiled Flash game.
*   `怨좏뼢留뚮몢_寃뚯엫?꾨줈?앺듃?꾩껜?뚯씪.fla`: The Adobe Flash source project file.
*   `怨좏뼢留뚮몢_寃뚯엫?꾨줈?앺듃?꾩껜scripts/`: Decompiled ActionScript files organized by frames and sprites.
    *   `DefineButton2_*`: Logic for interactive buttons.
    *   `DefineSprite_*`: Logic within movie clip symbols.
    *   `frame_*`: Timeline-based ActionScript logic.

## Summary of Findings
The game is a simple state-machine where specific frame numbers in movie clips represent user choices. The "Correct" recipe is hardcoded in the evaluation script in frame 175.
