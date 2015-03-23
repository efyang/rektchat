#How does it work?
====================

##Client
---------
1. Creates a new rectangle
2. Overlay a send button, the background and text box (where  it shows the user input)
3. Messages are lists of (user, message)
4. Client renders using a (username,current message,list of messages)
5. renders on draw
6. onkey takes in keystrokes and appends them to the current message if not enter or backspace
7. ^ if enter then send the current message, replace with empty in model
8. make-package sends whatever is in it


##Server
---------

1. Has a model of (users,messages)

