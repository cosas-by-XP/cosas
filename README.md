Original App Design Project - README Template
===

# cosas

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
2. [Schema](#Schema)

## Overview
### Description
The cosas app is a unique place to share and enjoy art. There are three components, the user, the art, and a 3D gallery(optional). The idea is for the art section to be a place where a user can view, save, comment, and bid on art pieces. The 3D gallery will be an interactive space where the user can move around and select pieces (while it is being completed users can post a thought). 

### App Evaluation
- **Category:** Art/Social Network
- **Mobile:** This app is primarily developed for IOS mobile devices. Future versions could potentially expand access to the application for non-IOS devices, and possibly the web.
- **Story:** User can view artworks, save, comment, and bid on them.
- **Market:** Any individual could choose to use this app, especially those interested in art. It would also be interesting to see if other artists would like to have their own galleries up on the app.
- **Habit:**  This app could be used as often or unoften as the user wanted depending on their interest in viewing and buying art pieces. It will send a notification everytime a new art piece is added. 
- **Scope:** For now it will be a place to view art in a normal feed. Eventually there will also be a 3D gallery component where the user can "walk" through a space and interact with the art. 

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* User can create a new account
* User can login
* User can view a feed of artworks
* User can save an artwork
* User can tap an artwork to view a more detailed art screen with comments, bidding feature, and additional info
* User can add a comment to a photo
* User can see their profile page and saved photos
* User can post a thought in 3D gallery

**Optional Nice-to-have Stories**

* User can place a bid

### 2. Screen Archetypes

* Login Screen
   * User can login
* Sign Up Screen
   * User can create a new account
* Art Screen
    * User can view a feed of artworks
    * User can save an artwork
* Detail Art Screen 
    *  User can tap an artwork to view a more detailed art screen with comments, bidding feature, and additional info
    *  User can place a bid
    *  User can add a comment to a photo
* Profile
    * User can see their profile page and saved photos
* 3D Gallery
    * User can post a thought

### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Art Screen
* Profile
* 3D gallery (pop upbox saying "in the works..")

**Flow Navigation** (Screen to Screen)

* Login Screen
    => Art Screen
* Sign Up Screen
    => Art Screen
* Art Screen
    <=> Detail Art Screen
* Profile
    <=> Detail Art Screen

## Wireframes
[Add picture of your hand sketched wireframes in this section]
<img src="https://imgur.com/a/awQE4rs" width=600>

### [BONUS] Digital Wireframes & Mockups

### [BONUS] Interactive Prototype

## Schema 
[This section will be completed in Unit 9]
### Models
[Add table of models]
### Networking
- [Add list of network requests by screen ]
- [Create basic snippets for each Parse network request]
- [OPTIONAL: List endpoints if using existing API such as Yelp]
