### Understanding Exit Status and Return Codes in Scripting

Welcome to a deep dive into the world of scripting and understanding exit statuses and return codes. In this blog, we’ll demystify these concepts and explore how they play a crucial role in decision-making within your scripts.

### Decoding Exit Status: The Basics

Whenever a command is executed in a script, it returns an exit status, also known as a return code or exit code. This status is represented by an integer ranging from zero to 255. Conventionally, a zero exit status indicates successful execution, while a non-zero status signals an encountered error.

For clarity, these return codes aren’t arbitrary; they hold valuable information about the outcome of a command. A zero might signify success, but understanding other codes requires consulting command documentation or source code. The `man` or `info` commands can be used to access documentation for most commands on your system.

!https://cdn-images-1.medium.com/max/800/1*Ii4IQPdktKTDFLaF0NhOgw.png

### The Power of Dollar Sign Question Mark

The special variable dollar sign question mark contains the return code of the previously executed command. In this shell script, the ls command is called with a path to a file that doesn’t exist. Immediately after the ls command is executed. The return code of that command is displayed on the screen using echo dollar sign question mark. This will display a two to the screen. Remember that non-zero exit codes indicate some sort of error had the file slash not slash here existed. And LS was able to display information about that file successfully. The exit status would have been zero.

!https://cdn-images-1.medium.com/max/800/1*r_U2JzOLvZ4vtaVtO_a5eA.png

### Decision-Making in Scripts

The real magic happens when you use exit statuses for decision-making in your scripts. In a simple scenario, you might use an `if` statement to check if the exit status is zero. In this example, shell script snippet we use the ping command to test our network connectivity to google.com. The — c option for the ping command simply tells ping to send just one packet. After the ping command is executed we check the exit status. If the exit status is equal to zero then we echo to the screen that google.com is reachable. If the exit status is not equal to zero we echo to the screen that google.com is unreachable.

!https://cdn-images-1.medium.com/max/800/1*RxtLeemL8JfLHJbds6yRNQ.png

### Variable Assignment for Future Decisions

You can capture the return code in a variable for future use. This allows you to base subsequent actions on the outcome of a specific command. In the example below, the `return_code` variable holds the exit status of the ping command.

!https://cdn-images-1.medium.com/max/800/1*_ascSJ_7VdBlMrxq_L7PzA.png

### Logical Operators: ANDs and ORs

In coding, think of logical ANDs (`&&`) and ORs (`||`) as powerful tools guiding your script's journey.

- **Double Ampersand (`&&`):** This is your script's bodyguard. The command after `&&` only runs if the previous command succeeds (like a champion). It's like saying, "Do this only if the first part goes smoothly."
- **Double Pipe (`||`):** This is your backup dancer. The command after `||` steps up if the first command encounters a problem (like a stumble). It's the plan B, there to catch things when they go a bit haywire.

**In Simple Terms:**

- `mkdir /tmp/bak && cp test.txt /tmp/bak`: Imagine making a new folder (`mkdir`). The copying part (`cp`) only happens if the folder-making goes without a hitch. No need for a backup if the first step is solid.
- `cp test.txt /tmp/bak || cp test.txt /tmp`: If the first attempt to copy fails, it's not game over. The script tries another route to copy the file, ensuring a backup plan is always there.

!https://cdn-images-1.medium.com/max/800/1*KEBxjOW7KAiDUE1ooWKyxA.png

### The Exit Command: Mastering Script Termination

The exit command allows you to control the exit status of your script explicitly. By specifying a number (0 to 255), you dictate the script’s return code. Without an explicit exit command, the last command’s exit status determines the script’s overall status.

!https://cdn-images-1.medium.com/max/800/1*5A-8XWclZ1znFLwGz_Uh7A.png

In this example, we are controlling the exit status of our script with the exit command. If the ping command succeeds a return code of zero is received. This means that the test and the if statement is false and the code block will not execute. This means that the exit zero line is executed. This stops the execution of our script and returns to zero as the exit status. If the ping command fails then a non-zero exit status is received. This makes the if statement true and the echo command and exit 1 commands are executed. The exit 1 command will stop the execution of the script and return and exit status of one.

!https://cdn-images-1.medium.com/max/800/1*BV5FqLYObiNTVLZZbvatPA.png

### Conclusion: Empowering Scripts with Exit Status

In this lesson, we learned that every time we run a command, it gives us a special number called an “exit status,” which is like a report card for the command’s job. If things go well, it’s a zero, but if there’s a problem, it’s a different number. We can check this report card using the “$?” trick. Understanding these exit statuses helps us make decisions in our scripts — like, if a command worked, do one thing, but if it didn’t, do something else. We also saw that we can link commands together with “&&” and “||” to make our scripts smart. The “exit” command is like a boss move, letting us decide how our script should end, whether with a happy “0” or a problem code. Now, armed with these skills, we can make our scripts speak a language of success and errors, making us the masters of the coding orchestra. 🎓💻🚀

### Thanks for reading! Until next time happy cloud computing!!