## Title

Utils is a Junk Drawer!

## Summary

Nearly all our larger scale applications end up with a **utils** folder, module, or class. We all know them as our project's junk drawers. The wayward place for motley code. In this talk we will explore these junk drawers, come to know their stories, and lay to rest the question: *Does having a junk drawer in my application make everything better or worse?*

## Private Summary

I ultimately want to give this talk because I want to lay the argument to rest by
providing objective metrics to a subject that usually engages itself as
subjective argument or a prescriptive stance. I think that at the end of the
talk individuals will continue the conversation and look at their own practices.

The origin of this topic comes from the long held thought that the code
we cannot neatly classify ends up in a **Utilities** folder, module or class.
The code within this junk drawer is often thought of as the unloved code
that ends up being poorly written (to get the job done) and poorly maintained
(because it is never where it should be to be get cleaned up).

This could be a potentially scary thought (FUD) as our applications use this
utilities section in varied ways to solve problems.

The goal of the talk is to help answer the questions:

* Is the code in the junk drawer poorly written?
* Is the code in the junk drawer poorly maintained?
* How much does the junk drawer effect an entire projects code metrics?
* How much does the junk drawer effect the mindset of the developer?

During the exposition of the talk I want to pose the question: *Does having a junk
drawer in my application make everything better or worse?*. I then will give
them an answer. I will use the remainder of the talk to explain my findings.

To prepare for this talk I will examine several codebases, interview their authors,
and tell a story about:

* the project's purpose
* when their junk drawer was first created
* what does the junk drawer look like now

With the backstory set for each project, I want to explore:

* A qualitative feel about junk drawers through anecdotes from developer interviews
* Code quality (CQ) metrics for the entire project
* Code quality (CQ) metrics for the junk drawer
* CQ Comparisons between the project and the junk drawer
* CQ Comparisons of this project against another similar project
* CQ Comparisons of this project against a project without a junk drawer

The success of the premise is contingent on whether I can prove a benefit or
a drawback to having a junk drawer. The code metrics, given a decent project
sample size, should be able to support the answer.

Whether the junk drawer is a boon, harmful, or somewhere in between I want to
finally compare various junk drawers together and explore the following questions:

* The file/module/class layout
* Comment / code ratios
* Commit messages for junk drawer commits
* Names, length, complexity, and amount of methods
