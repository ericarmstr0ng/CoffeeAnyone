# Coffee,Anyone?
---
#### _CoffeeAnyone Dating Application_

Team Members: _Carrie Davis, Eric Armstrong, Nicholas Schaffner_ 

This particular project came from embracing the idea that people do have a type and would like to find a long-term match in the dating pool. This iOS application will provide an easy to use step-by-step method to find people that match what a user is really looking for in a mate without allowing for smoke and mirrors in the profile creation process.

This project could be funded through directed advertisement or through membership fees, or both. Advertisements shown may be based on user location and interests/hobbies for places to meet for dates. Membership fees could be taken through in-app purchase API with auto renewable options.

## Getting Started ##
---
These instructions will get the `CoffeeAnyone` application running on your local machine for development and testing purposes. 

### Prerequisites
- Must be running macOS Catalina
- Must be running Xcode 11
- Must have an iPhone to run the application on a physical device
- Must have CocoaPods installed on your local machine. If you do not have CocoaPods installed in your local machine, please run the following command in your terminal: “sudo gem install cocoapods”

### Deployment
1) Clone or download the repository locally to a known location you can browse to
    - If you downloaded the repository, unzip folder and you will see a folder called `CoffeeAnyone-master`
    - Within your terminal, navigate to the location of the cloned repository or downloaded zip file and proceed to the following location within the downloaded project:
        - `Final/CoffeeAnyone`
        - Run the following commands: "pod deintegrate" and "pod install"

2) Navigate to the following location within the cloned repository or downloaded unzipped file:
    - `Final/CoffeeAnyone`

3) Open the `CoffeeAnyone.xcworkspace` file in Xcode

4) Once Xcode has finished indexing the files, click on the `Play` button in the upper left-hand corner of Xcode to build the `CoffeeAnyone` application

5) Once the project has been successfully built, Simulator will open and the `CoffeeAnyone` application will open on the simulation device

### Usage and Features
Once you have been able to successfully launch the `CoffeeAnyone` application on the simulation device on your local machine, you will be greeted with a launch screen that includes information about the application as well as a “Continue” button at the bottom of the screen. Once you have finished reading through the launch screen, tap on the “Continue” button, which will navigate you to the profile creation page. The `CoffeeAnyone` application contains five distinct feature areas:
1) Profile Creation <br />
When a user first opens the `CoffeeAnyone` application, they will be asked to create a new profile. The profile creation view contains a list of six navigation links that a user can select to complete their new profile. These links will lead to views for users to add personal information about themselves, hobbies, match preferences, a love languages quiz, a personality quiz and a profile picture.

2) Matches <br />
The first of the four tabs within the `CoffeeAnyone` application is the “Matches” page. The matches page contains a list of all of the users that the current user has been matched with based on their match preferences. Each match within the view contains the match's name as well as their profile picture. Once they select any of their matches in the list view, they will be taken to a view that includes information about that specific user, a larger profile image of the user and the ability to start a conversation with that user.

3) Chat <br />
The second of the four tabs within the `CoffeeAnyone` application is the “Chat” page. The chat page contains a list of all of the users that the user has matched with based on their match preferences. Each match within the view contains the match’s name as well as their profile picture. Once a user selects on any of their matches in the list view, they will be taken to a view that allows them to start a conversation or continue a conversation with that match.

4) Profile <br />
The third of the four tabs within the `CoffeeAnyone` application is the “Profile” page. The profile page contains a list of the user's profile information including their profile picture, hobbies, preferences and quiz results. Within the profile page they can edit their profile picture. If you are running the `CoffeeAnyone` application on the simulation device on your local machine, the user will be unable to upload a photo from the camera application because the simulation device does not have a camera application. Please note, attempting to take a photo with the camera application while on the simulation device on your local machine will cause the application to crash. Please note, if a user selects a photo from their photo gallery that was taken with Apple’s “Live Photos” feature or with a photo that does not include a face, they will see a message at the top of their photo asking them to upload a photo that includes their face.

5) Personality <br />
The fourth of the four tabs within the `CoffeeAnyone` application is the “Personality” page. The personality page contains a description of the two assessments that the user took when creating their profile. To learn more about the personality quiz, they can select the “More Info” link under the personality quiz. Within this new view, they can learn about the four areas that the personality quiz assesses. At the bottom of the view, the user can tap on the “Read Personality Quiz Descriptions” to learn about your specific personality type. To learn more about the love languages quiz, they can select the “More Info” link under the love languages quiz. Within this new view, they can learn about what the love language scores indicate. At the bottom of the view, the user can tap on the “Read Love Language Descriptions” to learn about your specific love languages.

## Built With
---
* [Swift](https://swift.org)
* [SwiftUI](https://developer.apple.com/documentation/swiftui)
* [Firebase](https://firebase.google.com)
* [CocoaPods](https://cocoapods.org)
* [SDWebImageSwiftUI](https://github.com/SDWebImage/SDWebImageSwiftUI)

## Special Thanks
---
* [icons8](icons8.com)
* [Open Extended Jungian Type Scale](http://www.jungtype.com/index.htm)
* [Myers-Briggs Type Indicator](https://www.verywellmind.com/the-myers-briggs-type-indicator-2795583)
* [The Five Love Languages](https://www.5lovelanguages.com)
