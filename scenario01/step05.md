## Hint 03

We can see if there are any interesting messages in the git history:
```
git log
```

We notice that there is an interesting commit mentioning **environmental variables**. We can check out what was added with `diff`:
```
git diff bb2967a6f26fb59bf64031bbb14b4f3e233944ca d7c173ad183c574109cd5c4c648ffe551755b576
```
