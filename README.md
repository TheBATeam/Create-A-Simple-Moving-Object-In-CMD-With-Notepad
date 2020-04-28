# Simple Animation In CMD 1.0
For creating **Simple Moving Object in CMD** ,we can do it with a **simple notepad trick**. All it needs is a better understanding of how to put- **White Spaces** &amp; **Line feeds** in CMD.
```
What we have to do is to put the string after ‘y‘ empty lines and ‘x‘ white spaces.
The situation will become more clear and easy to understand by the help of an example.
```
As we all know that batch programming is basically **CUI [Character user interface]** – which means that you have to feed the input by typing on a keyboard, then your PC gives you a response in form of characters (or sentences), i.e. All the exchange of data and information is in the form of Characters using the keyboard.

![Path of the dot displayed](https://thebateam.files.wordpress.com/2018/12/12-1.png?w=600)

# CREATE A SIMPLE MOVING OBJECT IN CMD – TRICK
Displaying a moving object in **CMD** would be fascinating, and accomplishing that in **BATCH programming** may be quite a challenge. So we turn our obstacles into opportunities and our problems into possibilities! There is no inbuilt utility that enable us to toggle the User Input caret coordinates in CMD. Which means, we can’t run **‘gotoxy(5,6)’** like we would in C or CPP. So we need to come up with a new strategy to accomplish our goal.

![Here we see the animation (in a low FPS GIF)](https://i1.wp.com/www.thebateam.org/wp-content/uploads/2020/03/Moving-an-Object-in-CMD.gif?w=600&ssl=1)

In this notepad script, I did the following:
I simply left **y** lines empty for Y – coordinate and filled **x** spaces to show move object to a particular location on the screen – Which gives me a utility like **‘Gotoxy(x,y)’** in batch.

```
E.g: If I have to go to the co-ordinate (5,5), then simply I will leave 4 empty lines in the console.
And, put 4 spaces before the character to be printed (as width of character is '1'). 
So,we'll reach to the point 5,5 Indirectly. 
```
[Read Full Article](https://www.thebateam.org/2019/03/simple-animation-in-cmd-console-intermediate/)
