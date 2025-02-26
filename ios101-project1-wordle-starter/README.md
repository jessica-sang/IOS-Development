# Project 1 - *Wordle*

Submitted by: **Jessica Sang**

**Wordle** is an iOS app that replicates the basic gameplay of the popular Wordle game. Users can input guesses using an on-screen keyboard, and the app will indicate whether letters are in the correct position, present but misplaced, or incorrect. 

Time spent: **8** hours spent in total

## Required Features

The following **required** functionality is completed:

- [x] App displays a keyboard on the screen
- [x] When tapping on the keyboard, a letter is shown or deleted (letter selected)
- [x] User can play a basic version of Wordle, with different goal words each time

The following **optional** features are implemented:

- [x] Improve and customize the user interface by adding a launchscreen and app icon
- [x] Run the app on a device rather than in the simulator

The following **additional** features are implemented:

- [x] Improved animations when entering letters
- [x] Enhanced UI with better color transitions
- [x] Added more secret words to implement word validation

## Video Walkthrough

https://www.loom.com/share/6f2a879480a84343830977e0d0f29892?sid=3fb89708-2cdc-4994-bdb6-93bbb9b76a87


## Notes

### Challenges Faced
- Implementing the correct Wordle color logic was tricky, especially handling duplicate letters.
- Debugging `deleteLastCharacter()` to ensure letters were removed correctly.
- Ensuring `goalWord` was consistent between `BoardController` and `WordGenerator`.


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
