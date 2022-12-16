# CIS 350

Created by:

Juyeon Chae

Mia Endo

Nik Tofilovski

## Abstract

The popularity of apps such as TikTok, Instagram, and YouTube has caused the popularity of cooking new recipes in your home to skyrocket. Many of these recipes are shared via short videos, typically less than one minute long. These short videos are more accessible for amateur chefs to approach, as they are less intimidating. However, these short videos can be fairly vague, and might omit some key details that a new cook might overlook. Or, there might be a difference in the level of understanding between the cook and the person who posted the original video. Our app allows for the user to choose what type of dish they would like to cook, then it will pair them with another person who also wants to cook said dish. The two users can cook simultaneously on a video call, during which they can share ideas, methods, and other advice with each other.

## Introduction

Our mobile application will randomly pair two users who select the same recipe and allows for them to cook together. Users will register, create a username and a password before allowing them to cook. The user will need to be connected to the internet in order to video chat with the other user. All users names will be kept anonymous to others, and are optional when registering. The app is free to use.

## Architecture

“PearCooking” is based on a cloud-hosted database server Firebase. The app’s server is run on the MongoDB cloud, collecting data from users. Since it is developed using Flutter, PearCooking should be available on both Android and iOS. The users look up for foods they would be cooking, and the server responds by randomly assigning a partner.

![Screenshot 2022-10-05 103106](https://user-images.githubusercontent.com/97745229/194086607-254ca9cb-367b-4da9-a791-58fb8e245f4a.png)

## Sequence Diagram
Sequence diagram shows the communication betweeen the user and the server.

![Screenshot 2022-10-05 103054](https://user-images.githubusercontent.com/97745229/194086644-cedc9c86-939c-48d6-8492-03e52b51c26e.png)

## Class Diagram
Class diagram shows the login, chat, settings, and recipe class.
<img width="755" alt="adfad" src="https://user-images.githubusercontent.com/53513581/194447254-8de8114f-44b4-48ff-b04a-5d6e75db7435.png">

## Use Case
Use case diagram shows how the app is used from the users perspective.
<img width="807" alt="Screen_Shot_2022-10-05_at_10 09 24_AM" src="https://user-images.githubusercontent.com/97745229/194086212-7c3bb9ea-3c34-4140-bbdb-d5c9392ed910.png">


## Application Screens


Startup Screen:

![startup_screen](https://user-images.githubusercontent.com/97745229/208062970-acdbe7be-b854-4392-bfc4-6c3105eb5981.png)


Log in Screen:

![login_screen](https://user-images.githubusercontent.com/97745229/208062892-4ff4e247-7ce1-4cf6-aa46-4acd8291c8e6.png)


Registration Screen:

![registration_screen](https://user-images.githubusercontent.com/97745229/208063008-a913884c-9581-4640-bb78-a5bac2c35701.png)


Home Screen:

![home_screen](https://user-images.githubusercontent.com/97745229/208063033-0c7a5698-8231-4e90-a129-4b4b62a7a2cd.png)



## Future Scope
Some of our future ideas include a way for users to post their own recipes. Also, a feature that allows for users to rate provided recipes so other users know which recipes they should cook next. Additionally, it could be useful to allow users to text chat with the person they are cooking with before the video chat starts, for the well being of both parties.


## Conclusion
We feel that our app is a practical and fun way to improve your cooking resume by learning cooking skills, new recipes, and "Kitchen IQ". We hope that users can enjoy our app and keep coming back whenever they dont know what to make next!


## Risk Analysis and Retrospective
In the process of developing PearCooking, we realized that risks such as not being able to implement a random calling function, or even having a difficult time implementing a calling feature and a chat feature would be probable. We are inexperienced, yet rapidly evolving programmers, who are still working hard on the skills that are essential for success for being able to contribute to a team. Though many things may go wrong and will go wrong, we eagerly embrace the mistakes and challenges that we encounter as a chance to better ourselves and our skills!
