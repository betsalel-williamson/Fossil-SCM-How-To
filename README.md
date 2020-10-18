# Fossil SCM How To
Collection of simple commands for Fossil SCM.  The scripts are ordered and include examples of a simple development cycle from the creation of a Fossil repository through testing and release.

The following four types of branches are effective in managing software through development, testing, and release.

## trunk

Main stream of consciousness, always keeps trunking forward

## feature

This branch is created from any point in trunk, working on an idea, but not sure about it yet, any work in progress.  Naming convetion should be: Feature-Name Timestamp 

Developers working a specific feature are assumed to be online and aware of what happens if other developers want to contribute to the feature branch.  It is best to have feature branches encompass small bits of work and merge back to trunk as quick as possible.

## test

This branch is created from any point in trunk.  It has all of the features we need. Naming convetion should be: Features Timestamp

## release
This branch is created from a test branch once testing has been developed.  It is merged back to trunk once all tests pass.

![Image of Branching](https://github.com/betsalel-williamson/Fossil-SCM-How-To/blob/main/fossil-example-branch.png)
