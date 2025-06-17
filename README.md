# 🚀 Pluto Mikrokosmos 

![Godot Engine](https://img.shields.io/badge/Godot_Engine-4.3.stable-478cbf?style=flat&logo=godot-engine&logoColor=white)
![GDScript](https://img.shields.io/badge/Language-GDScript-478cbf?style=flat&logo=godot-engine&logoColor=white)

**Pluto Mikrokosmos** is a 2D arcade shooter game developed using **Godot Engine 4.3.stable**. Drawing inspiration from classic arcade titles like *Space Invaders*, this game offers a nostalgic experience with modern enhancements, challenging players to navigate through an endless cosmic battle against waves of alien adversaries.
## Project Overview

In *Pluto Mikrokosmos*, players assume control of a lone spaceship tasked with defending the cosmos from an incessant invasion. The objective is simple: survive for as long as possible by destroying incoming enemy ships. As the game progresses, the difficulty dynamically increases, enemies become faster, and greater numbers of adversaries, ensuring a continuously engaging and challenging experience.

## 🎮 Gameplay Mechanics

The core gameplay loop of *Pluto Mikrokosmos* revolves around:

*   🕹️ **Player Control**: Players control a spaceship that can move horizontally across the bottom of the screen.
*   🔥 **Shooting**: The spaceship can fire projectiles upwards to eliminate enemy units.
*   👽 **Enemy Waves**: Enemies appear in formations and descend towards the player, firing their own projectiles. Different enemy types may exhibit unique movement patterns or attack behaviors.
*   🧮 **Scoring**: Points are awarded for destroying enemies, with higher scores for more challenging adversaries or successful combos.
*   ❤️ **Health System**: The player's spaceship has a health bar. Collisions with enemies or enemy projectiles reduce health, leading to game over when health is depleted.
*   💥 **Power-ups**: Include power-ups that can enhance the player's firepower, speed, or provide temporary invincibility.

## 🎨 Visuals and Design

The game features a distinct visual style, with all illustrations created by [@Melissa Francielle](https://github.com/Melissa-Francielle). Key visual elements include:

| Start Screen | Playing Screen |
|---|---|
| ![](https://private-us-east-1.manuscdn.com/sessionFile/m9jw2TeWqwQXY5Ce4TTCzs/sandbox/NyAc8SRMpqiwZL147z6cUn-images_1750192883004_na1fn_L2hvbWUvdWJ1bnR1L1BsdXRvTWlrcm9rb3Ntb3MvSW1hZ2VzR2l0aHViL3N0YXJ0X3NjcmVlbg.png?Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cHM6Ly9wcml2YXRlLXVzLWVhc3QtMS5tYW51c2Nkbi5jb20vc2Vzc2lvbkZpbGUvbTlqdzJUZVdxd1FYWTVDZTRUVEN6cy9zYW5kYm94L055QWM4U1JNcHFpd1pMMTQ3ejZjVW4taW1hZ2VzXzE3NTAxOTI4ODMwMDRfbmExZm5fTDJodmJXVXZkV0oxYm5SMUwxQnNkWFJ2VFdscmNtOXJiM050YjNNdlNXMWhaMlZ6UjJsMGFIVmlMM04wWVhKMFgzTmpjbVZsYmcucG5nIiwiQ29uZGl0aW9uIjp7IkRhdGVMZXNzVGhhbiI6eyJBV1M6RXBvY2hUaW1lIjoxNzY3MjI1NjAwfX19XX0_&Key-Pair-Id=K2HSFNDJXOU9YS&Signature=c-h2RSMMyLYS5Ad7SNVV6yssKF6aWgsGUFoYVy92O9K-YHKtmnR0~sTEyJQft1Ww0Hepk-UJNeN8-KpZyVta7EZiPHpy08~9klgIWXcwKHC9rLiyNU9RWdeppP3ADqZpECb3ERD-O3s-gw3vnmXHsNITWvViHTfEV2ty~0jnR41EiC32nUAroMKMFuBDnutkNh1Rmy1Bw4Whzbd3prJynC2y2zep0zjm9nQen3rQ0m-vNFLExgMMJwOOpLlnRqEY6lZMeLyMXgI4HsH1OjDxqXHvJYucYOAHP2cfo9IPzV~KyZ3vJwx01Z2HrN1wnWC0bZUPkAFSv1GxE8t2tCJTGQ__) | ![](https://private-us-east-1.manuscdn.com/sessionFile/m9jw2TeWqwQXY5Ce4TTCzs/sandbox/NyAc8SRMpqiwZL147z6cUn-images_1750192883005_na1fn_L2hvbWUvdWJ1bnR1L1BsdXRvTWlrcm9rb3Ntb3MvSW1hZ2VzR2l0aHViL3BsYXlpbmdfc2NyZWVu.png?Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cHM6Ly9wcml2YXRlLXVzLWVhc3QtMS5tYW51c2Nkbi5jb20vc2Vzc2lvbkZpbGUvbTlqdzJUZVdxd1FYWTVDZTRUVEN6cy9zYW5kYm94L055QWM4U1JNcHFpd1pMMTQ3ejZjVW4taW1hZ2VzXzE3NTAxOTI4ODMwMDVfbmExZm5fTDJodmJXVXZkV0oxYm5SMUwxQnNkWFJ2VFdscmNtOXJiM050YjNNdlNXMWhaMlZ6UjJsMGFIVmlMM0JzWVhscGJtZGZjMk55WldWdS5wbmciLCJDb25kaXRpb24iOnsiRGF0ZUxlc3NUaGFuIjp7IkFXUzpFcG9jaFRpbWUiOjE3NjcyMjU2MDB9fX1dfQ__&Key-Pair-Id=K2HSFNDJXOU9YS&Signature=Yaaud1VuR~gn~A5fIjGlOoxZeowk4KFTZCbmc-0NoBFkIYdIKCJvvLicvGTyEDyWcgMGdKh~~szmEfDGn~EkwG9GIKTW2JGz0nW8YmRxqw5WFZY~CVZJnkfChCLHnSU~AJiQYXnG47PPWSeVsdWOrzgLhzGdnKZOj9FOU8y46T~Fj55IHRmKOQsUlCt43QIymHR5qG8F6XMBkC2PCNVNocKRc46ZOscKyjoFrdgMFp1yLwH-XOJTJH3unDKT-sjGh1sWp~3fl3i1HInKCVn6L~pFGf~9OHgz9~dwavReNOe6c3ZVKypIVrPF-oCvoXXjse-tQ478f6h7Ft9b4QZlWw__) |

## ⚙️ How to Run

To run **Pluto Mikrokosmos** on your local machine, you will need the Godot Engine installed. Follow these steps:

1.  **Install Godot Engine**:
    If you don't have Godot Engine installed, download it from the official website: [Godot Engine Download](https://godotengine.org/download/)

2.  **Clone the repository**:

    Open your terminal or command prompt and clone the game's repository:

    ```bash
    git clone https://github.com/RafaelTomazGraciano/PlutoMikrokosmos.git
    ```

3.  **Open the project in Godot Engine**:

    *   Launch Godot Engine.
    *   In the Project Manager, click on the "Import" button.
    *   Navigate to the `PlutoMikrokosmos` directory (the one containing `project.godot`) that you just cloned and select the `project.godot` file.
    *   Click "Open" to import the project.

4.  **Run the game**:

    Once the project is open in the Godot editor, you can run the game by clicking the "Play" button (triangle icon) in the top-right corner of the editor.

## 🚀 Contributing

If you want to contribute, clone this repo, create your work branch, and at the end, open a Pull Request explaining the problem solved or feature made



