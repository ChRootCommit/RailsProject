# Committing

We like to see folks contributing to getCodingKnowledge. If you are a committer, we'd like to see you help from time to time with triage and the pull request process.

In all cases politeness goes a long way. Please thank folks for contributions - they are going out of their way to help make the code base better, or adding something they may personally feel is necessary for the code base.


## Terminology

**contributor** - A person who makes a change to the code base and submits a change set in the form of a pull request.

**change set** - A set of discrete commits which combined together form a contribution. A change set takes the form of git commits and is submitted in the form of a pull request. Used interchangeably with "pull request".

**committer** - A person responsible for reviewing a pull request and then making the decision what base branch to merge the change set into.

## Review Process

#### Receive new PR (pull request)

* A contributor sends a pull request (usually against master).
* A committer typically reviews it within a week or less to determine the feasibility of the changes.

#### Review the Code

* Does the code meet the naming conventions and formatting (need link)?
* Is the code sound? Does it read well? Can you understand what it is doing without having to execute it? Principal of no clever hacks (need link).
* Does the code do what the purpose of the pull request is for?

#### Accepting a PR

Once you have reviewed the initial items, and are not waiting for additional feedback or work by the contributor, give the thumbs up that it is ready for the next part of the process (merging).

Unless there is something wrong with the code, we don't ask contributors to rebase against develop. They did the work to create the patch in the first place, asking them to unnecessarily come back and try to keep their code synced up with master is not an acceptable process.

## Merging

Once you have reviewed the change set and determined it is ready for merge, the next steps are to bring it local and evaluate the code further by actually working with it, running the tests locally and adding any additional commits or fix-ups that are necessary in a local branch.

When merging the user's contribution, it should be done with `git merge --log --no-ff` to create a merge commit so that in case there is an issue it becomes easier to revert later, and so that we can see where the code came from should we ever need to go find it later (more information on this can be found [here](https://www.kernel.org/pub/software/scm/git/docs/git-merge.html) and also a discussion on why this is a good idea [here](http://differential.io/blog/best-way-to-merge-a-github-pull-request)).
