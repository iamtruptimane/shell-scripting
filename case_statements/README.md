# Case Statements in Shell Scripting: A Comprehensive Guide

In the realm of shell scripting, efficient decision-making is crucial. While if statements are handy, a case statement can offer a more readable and elegant solution, especially when dealing with multiple comparisons for the same variable. Let's dive into the essentials of case statements!

## What is a Case Statement?

- A case statement is a way in shell scripting to make decisions based on the value of a variable or expression.
- It allows you to check a variable against various patterns or values and execute different commands based on the matching pattern.

## Anatomy of a Case Statement:

```bash
case expression in
  pattern1)
    # Commands to execute for pattern1
    ;;
  pattern2)
    # Commands to execute for pattern2
    ;;
  *)
    # Default commands if no pattern matches
    ;;
esac

```

**How to Write a Case Statement:**

- Start with the word **`case`**, followed by the variable or expression to check.
- Use the **`in`** keyword to indicate the beginning of the patterns.
- List patterns or values you want to test against within parentheses.
- If a pattern matches the variable, the associated commands are executed until a double semi-colon (**`;;`**) is encountered.
- You can test for multiple values using the same pattern.
- End the case statement with **`esac`** (case spelled backward).

## Real-world Example:

- Here's an example from a system startup script:
    
    ```bash
    case $1 in
      start)
        /usr/sbin/sshd
        ;;
      stop)
        kill -9 $(pidof sshd)
        ;;
      *)
        # If $1 doesn't match start or stop
        echo "Invalid argument. Usage: $0 {start|stop}"
        exit 1
        ;;
    esac
    
    ```
    
    - Explanation:
        - If `$1` (the first argument) is "start," it starts the SSH daemon.
        - If `$1` is "stop," it kills the SSH daemon process.
        - If `$1` is neither "start" nor "stop," it echoes an error message and exits.
1. **Wildcard Usage:**
    - You can use wildcards, like ‘*’ (matches anything), in patterns. For example:
        
        ```bash
        case $1 in
          start)
            /usr/sbin/sshd
            ;;
          stop)
            kill -9 $(pidof sshd)
            ;;
          *)
            # If $1 is anything other than start or stop
            echo "Invalid argument. Usage: $0 {start|stop}"
            exit 1
            ;;
        esac
        
        ```
        
        - Here, anything other than "start" or "stop" will match the last pattern, and the specified commands will be executed.

### Multiple Matches:

![image](https://prod-files-secure.s3.us-west-2.amazonaws.com/28d73a5c-e0cd-4c22-ba97-f0a5b1a9c59f/b585f33d-2ff5-4d93-bd50-f21d20adbfcf/Screenshot_from_2023-12-14_10-40-51.png)

1. **User Input Case Statement:**
    - The script asks the user to input a response, storing it in the variable `answer`.
    - The script then uses a case statement to check the user's input against different patterns.
2. **Character Classes in Case Statement:**
    - Character classes, denoted by square brackets, match exactly one character from the list within the brackets.
    - In this example, the character class `[Yy]` matches either Y or y, allowing flexibility for users who enter responses in either uppercase or lowercase.
3. **Pattern Matching for "Yes":**
    - The first pattern checks if the user entered a single Y (uppercase or lowercase) using the character class `[Yy]`.
    - The second pattern, separated by a pipe (`|`), checks if the user entered Y-E-S using various combinations of uppercase and lowercase letters in the character classes.
4. **Pattern Matching for "No":**
    - Similar to "Yes," the script checks for variations of the user input for "no."
    - The pattern `[Nn]` matches either N or n, providing flexibility for different case variations.
5. **Catch-All Pattern:**
    - The last pattern is a star (’*’), acting as a catch-all.
    - It matches anything that did not match the patterns for "Yes" or "No."
    - In this case, the script echoes a message indicating that the input is not recognized.

In simpler terms, this script allows users to input responses, and the case statement uses character classes to be flexible in matching variations of "Yes" or "No." This way, the script can handle different cases (uppercase or lowercase) and even variations of spelling for "Yes" and "No." If the input doesn't match any of these patterns, it informs the user that the input is not recognized. The use of character classes makes the script more tolerant of variations in user input.

### Pattern with Start:

```bash
case $input in
  [Yy]*)
    echo "Your input starts with Y."
    ;;
  *)
    # Default action
    ;;
esac

```

1. **Explanation of Character Classes:**
    - **`[Yy]`**: Matches either an uppercase Y or a lowercase y.
    - ‘*’ : allows for zero or more additional characters after the Y.
2. **Example Matches:**
    - This pattern would match inputs like:
        - Y
        - y
        - Y-E-S
        - y-u-p
        - And any other input starting with Y or y.

## Conclusion:

In simple terms, a case statement is like a script's decision-maker, helping it choose what actions to take based on the value of a variable. If you find yourself using many if statements to check the same variable against different values, a case statement is a neater alternative. It allows you to create flexible patterns using wildcards and character classes, making your script more adaptable to variations in user input or conditions. The use of pipes lets you execute the same set of commands for multiple matching values, simplifying your script and making it more readable.

**Thanks for reading! Until next time happy cloud computing!!**