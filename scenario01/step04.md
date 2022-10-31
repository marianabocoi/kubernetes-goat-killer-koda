[Kubernetes Goat Scenario](https://madhuakula.com/kubernetes-goat/docs/scenarios/scenario-1)

Navigate to the downloaded git repository folder for the analysis
```
cd k8s-goat-git
```

We can verify the git history and information by looking at logs and previous commit history
```
git log
```

We can see that there is a quite interesting commit after checking the messages. We can check out what was added with a diff.

```
git diff bb2967a6f26fb59bf64031bbb14b4f3e233944ca d7c173ad183c574109cd5c4c648ffe551755b576
```

Set the solution variable and verify. 
```
export SOLUTION=<flag>
```
