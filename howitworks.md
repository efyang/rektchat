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
8. make-package sends whatever is in it to the server. 


##Server
---------

1. Has a model of ((list of (users, their respective worlds)),(list of unsent messages))
2. On update will broadcast model to every single user, then clears messages
3. On a client's first connect, the server appends the (user, their world) to the first part of the model
4. On receiving of messages it will append to a current message list 
5. Use (make-mail recpworld message) to send the message
6. Use make-bundle to map sending
- In order to perform these actions, a 
- universe's event handler returns something 
- called a universe bundle: 
- (make-bundle universe-state list-of-mail-messages list-of-worlds-to-delete)
