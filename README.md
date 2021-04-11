# choredo
An iOS app that classifies clean and messy rooms

### About this idea:

Women are usually tasked to manage the household work and do half of the chores, so I hope this app will help people realise the housework around them, motivate them to do house chores. The project is inspired by Emma's comic _[The gender wars of household chores](https://www.theguardian.com/world/2017/may/26/gender-wars-household-chores-comic#comments)_.

### Core features:

- Real time room cleanliness classification
- Suggest possible house chores to do given the scene
- Show calories related to each chore

## Installation Instructions

Unfortunately I haven't got time to write tests and submit to the App Store (contributions needed!).

You can use Xcode to install Dash on your iOS device using just your Apple ID.

All you need to do is:

1. Install [Xcode](https://developer.apple.com/xcode/download/)
2. Download the [Source Code](https://github.com/yichen96/choredo/releases/latest) or `git clone https://github.com/yichen96/choredo.git`
3. Open "Choredo.xcodeproj" in Xcode
4. Go to Xcode's Preferences > Accounts and add your Apple ID
5. In Xcode's sidebar select "Choredo" and go to General > Identity. Append a word at the end of the *Bundle Identifier* e.g. infinitedraft.choredo*.name* so it's unique. Select your Apple ID in Signing > Team
6. Create a folder called "Preview Content" and move .xcassets inside
7. Connect your iPad or iPhone using USB and select it in Xcode's Product menu > Destination
8. Press CMD+R or Product > Run to install Dash
9. If you install using a free (non-developer) account, make sure to rebuild Dash every 7 days, otherwise it will quit at launch when your certificate expires

[Contact me](https://twitter.com/yichen_96) if you need help.

