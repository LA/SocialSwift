# SocialSwift
Social Media Actions in Swift

## Sample Project
<i>The Sample Project <b>Currently</b> Contains the following classes:</i>
* Instagram Helper
* Twitter Helper
* URLHelper

## How to Use SocialSwift
### Step 1:
<code>Add URLHelper.swift to your project and any Helper classes you desire.</code>
### Step 2:
<code>Locate your Info.plist, and right-click select Open As -> Source Code.</code>
### Step 3:
<code>Locate the end of an array "</array>"</code>
### Step 4:
<code>Go Down one Line and Paste the following:</code></br>
```swift
<key>LSApplicationQueriesSchemes</key>
<array>
    <string>x</string>
    <string>y</string>
</array>
```
<code>Where x, y = some social media (ex. x = twitter, y = instagram)</code>
### Step 5:
Use SocialSwift Methods to your heart's desire.

