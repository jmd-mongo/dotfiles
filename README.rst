Persist Session Using a Terminal Multiplexer
============================================

- ``tmux``
- ``screen`` (not recommended)

Using a terminal multiplexer helps keep a session in a given state.


Use Variables for Consistency
=============================

I define at least two variables for a given session:

- ``PARENT``: name of the git branch
- ``CRISSUE``: issue number that the *cr* tool uses

Persisting the branch name and issue number in the ``tmux`` session is convenient. 


Aliases and Functions 
=====================

I use a small set of `aliases <https://github.com/jmd-mongo/aliases#readme>`_ 
and functions to wrangle common workflow tasks:

- 
