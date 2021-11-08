Persist Sessions Using a Terminal Multiplexer
=============================================

- ``tmux``

- ``screen`` (not recommended)

Using a terminal multiplexer helps keep a session in a given state.


Use Variables for Consistency
=============================

I define at least two variables for a given session:

- ``PARENT``: name of the git branch

- ``CRISSUE``: issue number that the *cr* tool uses

Persisting the branch name and issue number in the ``tmux`` session is convenient. 


.. code:: bash

   $ PARENT=DOCS-XXXXX-documents-a-super-rad-feature
   $ CRISSUE=XXXXXXXXXX


Aliases and Functions 
=====================

I use a small set of `aliases <https://github.com/jmd-mongo/aliases#readme>`_ 
and functions to wrangle common workflow tasks:

Aliases vs. Functions in bash/zsh
---------------------------------

**Aliases** serve as a wrapper around an invocation. Aliases do not accept arguments.

**Functions** can contain more sophisticated logic and can accept arguments.


Some Aliases I've Defined
~~~~~~~~~~~~~~~~~~~~~~~~~

- ``branch``: expands to ``git branch --show-current``

- ``add-commit``: expands to ``git add . && git commit --amend --no-edit`` 

- ``stage``: expands to ``git push origin -f $( branch ) ;`` (Note how this calls the previously-defined ``branch`` alias.)

Some Functions I've Defined
~~~~~~~~~~~~~~~~~~~~~~~~~~~

- ``cr``: A small wrapper around the code review tool.

- ``occurrences``: count all occurrences of term(s) in the corpus (on the current branch).

- ``affected-files``: count all occurrences and list all files term is found in. 

Command Line Motions
====================

Here are some key combinations I find useful when navigating the command line:

- ``ctrl-a``: jump to the beginning of the line

- ``ctrl-e``: jump to the end of the line

- ``ctrl-f``: move forward one char at a tie

- ``ctrl-b``: move backward one char at a time

- ``option-f``: move forward one word at a time

- ``option-b``: move backward one word at a time

More info on Motions here: https://ss64.com/osx/syntax-bashkeyboard.html
