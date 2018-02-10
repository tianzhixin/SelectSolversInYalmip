SelectSolversInYalmip version 1.0 10/02/2018
Author: Yaqi Zhu
E-mail: yaqiz@student.unimelb.edu.au

GENERAL INFORMATION
-------------------
This program aims to give a solution to the following displayed message when using yalmip
'Info: Solvers not applicable(xxx)'

In particular,
'MainChooseSolvers' aims to show applicable solvers for your problem.
'MainOutputPrClass.m' aims to give you an insight of your problem class (like linear/convex/secondordercone constraints, etc.)


HOW TO USE IT
-------------
- Copy the following command to your command window:
	dbstop in compileinterfacedata at 266

- Run your optimisation problem.

- When it stops at the breakpoint set by the above command, copy the following command to your command window:
	save('ProbClass','ProblemClass')
	dbquit

- Run 'MainChooseSolvers' to show the applicable solvers for your problem.

- Run 'MainOutputPrClass.m' to show your problem class.

IF IT DOES NOT WORK
-------------------
Try the following steps if it does not work

- Copy the following command to your command window:
	open compileinterfacedata.m

- Set a breakpoint at 'ProblemClass.gppossible = 1;' in 'compileinterfacedata.m'.

- Run your optimisation problem.

- When it stops at the breakpoint set by the above command, copy the following command to your command window:
	save('ProbClass','ProblemClass')
	dbquit

- Run 'MainChooseSolvers' to show the applicable solvers for your problem.

- Run 'MainOutputPrClass.m' to show your problem class.