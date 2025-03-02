# Project 2 - *Wordle Challenge*

Submitted by: **Jessica Sang**

**Wordle Challenge** is an app that allows users to play a customizable Wordle game. Users can modify the number of letters in the goal word, adjust the number of guesses allowed, and choose different word themes. Additionally, there is an "Alien Wordle" mode where the goal word resets after each incorrect guess.

Time spent: **2** hours spent in total

## Required Features

The following **required** functionality is completed:

- [x] User can change the number of letters per row (the length of the goal word)
- [x] User can change the numbers of rows on the board (how many guesses allowed)
- [x] User can select a new themed set to pull the goal word from
- [x] User can select "alien wordle", causing the goal word to change after each guess


The following **optional** features are implemented:

- [x] App displays a reset button on the top left to reset the game (but make no changes to the settings)


## Video Walkthrough

https://www.loom.com/share/9e58249cd9144578b9783a707b0ddae6

## Notes

During development, I encountered the following challenges:

- Understanding how to safely unwrap optionals in Swift for game settings
- Converting a `String` to an `enum` (`WordTheme`) while ensuring it was safely unwrapped
- Implementing `resetBoardWithCurrentSettings` to reset the game state while maintaining user-selected settings
- Debugging the `Alien Wordle` mode to ensure the goal word changes only when necessary

To overcome these challenges, I used **breakpoints, print debugging, and step-through debugging** in Xcode to inspect values and verify game logic.


## License

    Copyright [2025] [Jessica Sang]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
