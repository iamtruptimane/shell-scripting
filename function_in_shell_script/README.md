# Mastering Shell Script Functions: A Beginner's Guide

## Introduction

Welcome to the world of shell scripting! In this guide, we'll explore why and how to use functions, making your scripts more powerful and easier to manage. We'll cover the basics step by step, so let's dive in!

## 1. **DRY Principle: Say Goodbye to Repetition**

Ever heard of "Don't Repeat Yourself" (DRY)? It's a cool principle in programming. Think of functions as your helpers—chunks of code that you can use over and over. This not only makes your scripts shorter but also keeps things tidy.

## 2. **Creating and Using Functions: Your Script's Superpowers**

### What's a Function?

A function is like a mini-script inside your script. 

Functions in shell scripts can be declared in two ways:

- Using `function` keyword
- Without using `function` keyword

```bash
# Using function keyword
function greet {
    # Your instructions here
}

# Without using function keyword
greet() {
    # Your instructions here
}

```

### Making Functions Work

To execute a function, simply use its name in the script. No parentheses are needed.

```bash
greet  # Using the function

```

### When Order Matters

Imagine your script as a story. Functions are characters, and they need an introduction before they can play their part. So, always put their introduction at the beginning!

![function order](https://github.com/iamtruptimane/shell-scripting/blob/main/function_in_shell_script/img)

In simpler terms, when you're using functions in a script, it's important to know that a function can call another function. Imagine you have two functions: one called `hello` and another called `now`. If `hello` calls `now`, the order in which you define them matters.

Let's say you first declare the `hello` function, then the `now` function, and finally, you call `hello`. Even though `now` is defined after `hello`, it still works. This might seem strange, but in scripting languages, everything is read from top to bottom when the script runs.

In some programming languages, you can define functions anywhere, and the compiler figures it out during the compilation phase. But in scripts, it's different. If you run into an error saying "now wasn't found," it's because `hello` was executed before `now` was read into the script. To avoid such issues, a good practice is to place all your functions at the top of your script so they are defined before being used.

This ensures a smooth flow of execution, making sure each function is ready to play its part when called. So, remember, when scripting, always keep things in order from the beginning to the end of your script!

## 3. **Parameter Handling: Talking to Your Functions**

### Sending Messages to Functions

Functions can take notes—we call them parameters. It's like telling your function, "Hey, here's some info!"

```bash
greet() {
    echo "Hello $1"
}

greet "Jason"

```

### A Function for Everyone

You can talk to your function in many ways. Use `$1`, `$2`, and friends for specific messages. Or just say, "Tell me everything!" with `$@`. But remember, `$0` is like the script's name—it doesn't play along with functions.

```bash
greet_all() {
    for name in "$@"; do
        echo "Hello $name"
    done
}

greet_all "Jason" "Dan" "Ryan"

```

## 4. **Variable Scope: What's Mine is Mine**

### Everyone Knows Global

Variables are like secrets. By default, they're open to everyone in the script. But remember, a secret must be revealed before using it.

```bash
GLOBAL_VAR="Script Secret"

reveal_secret() {
    echo "Function reveals: $GLOBAL_VAR"
}

reveal_secret

```

### Local Secrets

Sometimes, you want a secret just for your function. Use the `local` keyword—your function's little secret keeper.

```bash
reveal_secret() {
    local LOCAL_SECRET="Function Secret"
    echo $LOCAL_SECRET
}

reveal_secret
echo $LOCAL_SECRET  # Uh-oh, it's a secret!

```

## 5. **Exit Status and Return Codes: Success or Oops?**

### Ending Stories

Every function has an ending. It's either happy or not, known as the exit status. You can decide or let the last thing your function does decide.

```bash
say_goodbye() {
    return 1
}

say_goodbye
echo $?  # Says 1 (Oops!)

```

### Handling Oops Moments

If your function faces a problem, it can say, "Oops!" with a non-zero exit status. Your script can then decide what to do—maybe show an error message or try something else.

```bash
backup_file() {
    cp "$1" "/tmp/backup/"
    if [ $? -ne 0 ]; then
        echo "Backup failed"
        return 1
    fi
}

backup_file "/path/to/file"

```

## 6. **Conclusion: Scripting Made Fun with Functions**

Great job! You've now discovered the power of shell scripting and how functions can be your script's sidekicks, making things tidy and efficient. Think of them as mini-scripts inside your main script, helping you avoid repeating the same code and keeping everything organized.

In conclusion, with the DRY principle (Don't Repeat Yourself) in mind, you've learned to use functions for different tasks. Whether it's sending messages to your functions using parameters, keeping secrets with local variables, or managing happy or oops endings with exit statuses, you've got the basics down.

So, congratulations! You're on your way to becoming a scripting superhero. Just remember, functions are there to make your coding journey fun and successful. Happy coding, and keep exploring the world of shell scripting!