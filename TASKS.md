# Tasks
This is a list of tasks I want to learn how to solve easily before I start Python development in vim. Probably I will just find tasks in the internet...

# Python 3.9 to 3.8
As for [PEP 585](https://www.python.org/dev/peps/pep-0585/) you can use generic typing from standard library without `from typing import` imports. If you use it in your code, rolling back may seem pretty difficult. Algorithm for each file in project is:
1. Check if file has any `list[]` `dict[]` `defaultdict[]` `tuple[]` imports (in this task they are only limited with this annotations).
2. Replace any of them to appropariate `typing` annotation (e.g. `list[]` to `List[]`).
3. Add imports to the head of this file
4. Imports should remain sorted
