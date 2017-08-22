# Tip-Calculator
# Pre-work - Tip calculator for iOS

Tip calculator application for iOS.

Submitted by: Rachana Shah

Time spent: 15 hours spent in total

## User Stories

The following **required** functionality is complete:

* [Yes] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [Yes] Settings page to change the default tip percentage.

The following **optional** features are implemented:
* [Yes] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [Currency thousand separators-yes] Using locale-specific currency and currency thousands separators.
* [Yes] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [ ] List anything else that you can get done to improve the app functionality!

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

<img src='http://i.imgur.com/V9zURUD.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Project Analysis

As part of your pre-work submission, please reflect on the app and answer the following questions below:

**Question 1**: "What are your reactions to the iOS app development platform so far? How would you describe outlets and actions to another developer? Bonus: any idea how they are being implemented under the hood? (It might give you some ideas if you right-click on the Storyboard and click Open As->Source Code")

**Answer:** 
Outlet and Actions, both are used to communicate with UIView. Outlets allow code to send message to UI controls on storyboard. Actions allow storyboard control to send message to code to take some actions.

Question 2: "Swift uses [Automatic Reference Counting]
(https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/AutomaticReferenceCounting.html#//apple_ref/doc/uid/TP40014097-CH20-ID49) (ARC), 
which is not a garbage collector, to manage memory. Can you explain how you can get a strong reference cycle for closures? (There's a section explaining this concept in the link, how would you summarize as simply as possible?)"

**Answer:** 
Automatic reference counting, as the name suggests, maintains counter to object references to keep the object alive in the memory. Whenever the class instance is associated with a variable, the variable makes strong reference to the instance.
Strong reference are not deallocated until the ARC count reaches to 0.
Whenever a class1 contains another class2 as variable, this class2 variable makes strong reference to class1 instance and does not get deallocated even if class1 instance becomes nil. Because class2 variable is still maintaining ARC count > 0.
This is called strong reference cycle. In this case, ARC count will never become zero if class2 also has class1 as member variable.



## License

    Copyright [2017] [Rachana Shah]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
