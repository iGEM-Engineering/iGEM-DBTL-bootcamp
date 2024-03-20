# Design Module

## Overview
You will model the effect of a set of constitutive promoters on GFP expression. 
You will then use the software tool of your choice to design three GFP reporter constructs with strong, medium, and weak promoter strength to be assembled with Golden Gate Assembly (GGA) in silico.

Before you start, you should read through our page on the [Design stage](https://technology.igem.org/engineering/design) of the [DBTL cycle](https://technology.igem.org/engineering/introduction). 
You will be repeating some of the key concepts and considerations and applying them to this Design Module, but that resource will include more material than is covered here.

We have provided all the files and the data that you will need to get started. 
The software tools to do this will be up to you (although we have some guidance on some specific tools). 
You will be able to check the outputs of your work in the modeling and _in silico_ assembly sections against the validation files we have provided. 
And if you have any questions or issues, you can reach out to us in the [Global Slack]().

### Outline


### What you’ll need to know before you start


### Resources needed
1. Computer and internet access
2. Modeling tool(s): You will be using this to model the behavior of different promoters on GFP expression
3. Design tool(s): You will be using this to import parts and plasmids, design your constructs, and assemble your constructs
4. Parts and plasmid files, and associated data sets (provided here)


## The Design goal
In the Design stage of the DBTL cycle, it helps to outline your design goal, including what is required to meet the aims of your project and then use this to guide your design.

For this bootcamp we have defined the aim: to design, and build three GFP reporter constructs and test the effect of constitutive promoter strength on GFP expression.

![Example of a diagram for construct design](https://static.igem.org/websites/technology/2024/dbtl/design/gfp-expression-construct.png)

It will always help to diagram this process out, starting with some abstraction. 
By having a diagram that shows the aim, and the steps to get there, you will have a resource that can be used to track your progress and to ensure that all the considerations that were made in the Design phase will be done in the Build and Test phases.

### The Design constraints
As mentioned above, we have some design constraints to keep things simple, as this ensures everyone has access to the same materials, and that you will be able to model and validate your constructs against known products.
For a summary of these constraints:
1. Parts and plasmids: A selection from the 2024 iGEM Distribution Kit
2. Assembly: Golden Gate Assembly
3. Chassis: E. coli DH5a, DH10b strains are recommended, but use what is available in your lab
4. Measurement: GFP

If you’re feeling adventurous, feel free to go beyond these constraints, but there will not be material to help troubleshoot.

### Knowledge check
All caught up? You should be able to answer these questions before proceeding further.
1. What is the purpose of your design?
2. What will be the function of your engineered biological system?
3. How will you build your design?
4. How will you test the function of your design?
5. What will your experimental data look like if the design is working as intended?


## Modeling 

### Validate/check your model

### Storing, Sharing, and Presenting

### Knowledge check
1. What is the purpose of your model?
2. What will be the output of your model?
3. Which parameters and/or libraries will be required to implement your model?
4. How well are these parameters characterized or described in literature? How well documented are the tools/libraries you are using?
5. How will you test the function of your model?
6. What will your simulation data look like if the model is working as intended?


## Assemble your constructs _in silico_
Based on your modeling, you have selected the two promoters (one strong and one weak) along with BBa_J231006, which you will use as your medium strength promoter. 
You will now assemble constructs in silico for all three. 
At the end of this section, you will have produced your constructs as plasmid maps and be able to validate them against our files.

There are several different tools available to design and assemble your constructs, and many of them have several features beyond assembling DNA _in silico_ (Electronic lab notebooks, modeling, sample tracking, etc). 
Your lab may have a recommended tool, or you may have one that you already like. 
Even with a new tool, you can learn its different features at your own pace, while also reading through its documentation.

For the purposes of this bootcamp though, we have provided basic guidance for two different workflows that use different tools to cover designing, assembling, and validating constructs in silico.

Please note, that these software and tools may have updates over time that will make some of the material in these workflows outdated.

We have generalized the guidance into the following steps:
1. **Import your files:** 
No matter what design tool you are using, you will need to tell it what parts (and information) you want to use. 
This may include uploading genbank files of your parts/plasmids, using an API that links directly to a database, or a spreadsheet!
2. **Part verification:** 
Once you have selected the parts/plasmids you will be using, you will verify everything is correct. 
Will there be any issues with the assembly method you will be using? 
Are these parts what they say they are? 
This may be a manual process, or an automated one.
3. **Assemble in silico:** 
With your parts and destination vector verified, you will assemble your constructs in silico. 
This will provide insight into what you will actually build during the Build module, and may uncover any issues.  
4. **Validate your constructs:** 
You will validate that your in silico assembly sequences are correct. 
This is possible because we have clearly defined inputs and processes, which will produce a predictable result.
5. **Export your designs:** 
You will want to export and share your designs, whether for collaboration, publication, or additional workflows.

### Design Tools
