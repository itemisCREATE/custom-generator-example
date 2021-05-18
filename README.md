# Custom Code Generator for YAKINDU Statechart Tools 4.x Example

YAKINDU Statechart Tools is shipped with powerful code generators for most common programming languages like C, C++, Java™. There are also generators available for TypeScript, Swift and Python. But sometimes it maybe necessary to create a custom code generator to support custom frameworks. You can use this example to kick-start your custom generator project.

# Setup
 - Import the project 'org.yakindu.generator.custom' into your workspace. Since the Generator is written in [Xtend](https://www.eclipse.org/xtend/), you need an Eclipse with Xtext SDK installed.  (I used Eclipse 2020-12 with Xtext 2.24)
 - Open file 'latest.target' and set it as active target platform.
 - Right click the project and select 'Run As -> Eclipse Application'
 - In the runtime workspace, import the project 'Example'
 - Right-click the file 'Genmodel.sgen' and select 'Generate Code Artifacts'
 
 






