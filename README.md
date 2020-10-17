# Fossil-SCM-How-To
Collection of simple commands for Fossil SCM

The following is an effective branching strategy for configuration control of software.

trunk -- main stream of consciousness, always keeps trunking forward

feature -- (Feature Name YYYY-MM-DD) from any point in trunk, working on an idea, but not sure about it yet, any work in progress

test -- (Features YYYY-MM-DD) from a point in trunk, it has all of the features we need

release -- from a well tested branch that all the features work as intended

Users working a specific feature are assumed to be online and aware of what happens if other users want to contribute to the feature branch.  It is best to have feature branches encompass small bits of work and merge back to trunk as quick as possible.

![Image of Branching](https://octodex.github.com/images/yaktocat.png)