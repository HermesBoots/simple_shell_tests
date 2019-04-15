# Test Cases for Holberton Simple Shells

To run the tests, execute the name of the test case you want followed by the command you would use to run your shell executable. For example, `./sample.sh ./hsh`

Each test case script starts with a shebang, the line `source test.sh`, then a number of lines starting with `runtest` followed by the command(s) you want the shell to try running. See `sample.sh` for an example.

# To contribute
### Creating a new test file
Create a new file named the task you are testing for. Like: `task0.02.sh` . Follow this naming convention: 
task.number of the task.sh

So if you were writing a test for advanced task 9. Simple shell 0.4.1. The name of the file you create would be:
`task0.4.1.sh`

Make sure you make your file an executable before uploading it :)

### Writing the tests

Follow this format:

```
#!/bin/bash

source ./test.sh

runtest '/bin/ls -l'
runtest '/usr/bin/cal'
runtest 'echo word1     word2'
```

Between the \` \` is where you type in your test to check. If you wanted to check if your shell handled the PATH variable, you would write something like:

```
runtest 'ls'
runtest 'cal'
```
