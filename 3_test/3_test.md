# Test Module

**The Test Module is currently under development.**

## Overview

In this Test Module, you will use the GFP constructs you have [designed](/1_design/1_design.md) and [assembled](/2_build/2_build.md) to measure fluorescence using a standard protocol, calibrants, and a plate reader. 
This module will also introduce good measurement practices, experimental design principles, and key questions to consider before proceeding to the Test stage of your project.

**Alternative Options**
- **If you have skipped or could not complete the Design and/or Build Module and have not assembled the GFP constructs, you can still participate in the Test Module!** 
You can transform past Interlab devices that are in the Distribution. 
The [Build Module](/2_build/2_build.md) includes a selection of these devices; choose three to transform and prepare glycerol stocks before starting this module.

- **If you are unable to complete this Test Module, you can still participate in the data analysis and Learn Module.** 
We have provided some past data that you can use in the Learn Module. 
Note that this data pertains to past Interlab devices and not the devices that you designed and built in the previous modules.

### What you will need to know before you start
- Core concepts and terminology from the [Introduction](/0_intro/0_intro.md), [Design Module](/1_design/1_design.md), and [Build Module](/2_build/2_build.md).
- Basic laboratory techniques and familiarity with all the equipment that will be used in the workflow/protocols below.
- You should read through our page on the [Test stage](https://technology.igem.org/engineering/test) of the [DBTL cycle](https://technology.igem.org/engineering/introduction). 
Some content may be outdated, but there are some key concepts and considerations that we will be applying to this Test Module, and that resource page will include more material than is covered here.
- We also highly recommend watching this introductory webinar from our 2021 series: [Quantifying Fluorescence and Cell Count with Plate Readers](https://video.igem.org/w/w6iPQTJechP7gBnknrPC93). The webinar includes: 
    - An introduction to fluorescence, OD, plate readers, and factors affecting fluorescence measurements, along with guidance on selecting fluorescent proteins based on excitation and emission spectra.
    - A focus on calibrating fluorescence and OD measurements and debugging these processes.
    - Guidance on interpreting and troubleshooting calibrated plate reader data.

**IMPORTANT:** As with all experimental procedures, preparation is of key importance. Before starting in the lab, carefully review this entire module, including protocols, required materials, and equipment.

## Introduction

Across all engineering fields, good measurement practices ensure that data is relevant, comparable, accurate, reliable, and reproducible. 
Reliable and repeatable measurements are fundamental to all engineering disciplines. 
However, in synthetic biology, comparing measurements across different labs has often been challenging.

A major issue in synthetic biology is that fluorescence data is typically not directly comparable across labs. 
This is because it is reported in different units or processed differently by different groups. 
Some have tried to work around this using "relative expression" comparisons. 
However, the inability to directly compare measurements introduces several problems, amongst them:
- It complicates debugging engineered biological constructs.
- It hinders the effective sharing of constructs between labs.
- It makes interpreting experimental controls more difficult.

As an example, we will look at some past promoter strength data on the Anderson promoters used in the modeling section of the [Design Module](/1_design/1_design.md).

<!---
This case study should be turned into a template section, harmonized between the test and design module for consistency, or differentiated enough to not cause confrusion
-->
> ### Case Study: Anderson Promoter Data
>
><center>
>
>| Anderson Promoter | RFP (AU) | Relative Strength |
>| --- | --- | --- |
>| BBa_J23100 | 2547 | 1.00 |
>| BBa_J23101 | 1791 | 0.70 |
>| BBa_J23106 | 1185 | 0.47 |
>| BBa_J23116 | 396 | 0.16 |
>| BBa_J23117 | 162 | 0.06 |
>
></center>
>
> The data above is a subset of a larger characterization effort by the [2006 Berkeley iGEM Team](https://2006.igem.org/wiki/index.php/University_of_California_Berkeley_2006) when they introduced the Anderson promoters to iGEM. 
> This was excellent work by the team  (for which they won the measurement award), and clearly demonstrated the relative stength of the promoters in their RFP expression device.
>
> #### What do we know about the experimental context?
> From the [Anderson promoter collection page](https://parts.igem.org/Promoters/Catalog/Anderson), the individual part pages, and some sequence analysis, we know the following:
> - Red fluorescent protein (RFP) was used as the reporter protein to measure expression
> - the promoters were measured in the [BBa_J61002](https://parts.igem.org/Part:BBa_J61002) plasmid backbone. 
>    - BBa_J61002 is a modified version of [pSB1A2](https://parts.igem.org/Part:pSB1A2), a high-copy, ampicillin resistant plasmid backbone.
> - BBa_J61002 includes an expression cassette. Users clone in their promoter, and then downstream there is an RBS (BBa_B0034), an RFP (BBa_E1010), and a Terminator (BBa_B0015).
> - the _E. coli_ TG1 strain was used
>
> #### What do we _not_ know about the experimental context?
> Importantly, we also do not know the following (at least readily):
> - How was fluorescence measured? What instrument was used?
> - What protocol was used?
> - What controls were used?
>
> #### What about the Units?!
> The RFP measurements are in AU, **A**rbitrary **U**nits, which is a relative unit of measurement. 
> This works OK when we are only comparing measurements performed in the same experiment: from this data, we can already see which promoters are the highest (BBa_J23100) and lowest (BBa_J23117) strength.
>
> But, if we were to do this same experiment in a different lab, on a different instrument, or with slightly different settings, we would get completely different numbers.
> If you were to use these promoters in your own device, or completely replicate the devices that they used, how might you **quantitatively** be able to compare it to the data above?




### Standard Protocol & Calibrants

Measurement calibrants, along with a standard protocol, enable the calibration of equipment and the conversion of arbitrary units into absolute units that are directly comparable across experiments.

Through previous InterLab studies, the iGEM Engineering Committee – with the help of many iGEM teams – has developed a robust protocol for measuring GFP fluorescence and cell density in _E. coli_. 
This protocol is both affordable and simple, making it accessible for estimating cell count and per-cell fluorescence using plate readers. It also enables direct comparisons with single-cell measurements obtained from flow cytometers.

In this module, you will use this protocol to measure your constructs. 
First, we will guide you through the experimental design principles underlying the procedure.


## Experimental Design

> **Note:** While this Test Module covers aspects of experimental design, these considerations should typically be addressed during the Design phase of your project. When designing your constructs, you should already have a plan for how they will be measured and validated

From previous modules, we already know the following about our experimental design:

- We have 5 constructs to test: 3 designed constructs and 2 controls.
- We will measure both OD and fluorescence.
- Our goal is to generate data that is shareable and comparable.

### The Controls
With a **negative control**, a non-GFP expressing plasmid in _E. coli_, we can establish a baseline of fluorescence in _E. coli_, as this will account for background fluorescence in the cells and other noise.
This negative control should also be similar to our other constructs to account for similar burden placed on the cell through origin of replication, resistance, promoter, etc.

With a **positive control**, a known GFP expressing plasmid in _E. coli_, we can ensure our experimental setup (experimental conditions, instrument, etc) can detect GFP.
The positive control should also provide robust GFP expression and have been measured previously, as it can provide a reference to interpret the relative strength of GFP expression in experimental samples.

### High-throughput

To properly characterize our constructs, we need a sufficiently robust data set to achieve statistical significance. For each construct, we plan to test a few colonies and include a few technical replicates:

**5 constructs × 3 colonies each × 4 technical replicates = 60 samples**
And that is just for one time point! 

As you can see, the number of samples and measurements increases quickly with additional constructs, replicates, conditions, or time points.
Your projects will likely exceed this number of samples in a single experiment.  
To manage this scale efficiently, we need a high-throughput method for measuring OD and fluorescence. 

Plate readers are well-suited for this purpose. They are commonly available in most academic labs or as shared equipment between labs.


### Fluorescence
If you were to measure the fluorescence of a well of cell culture, you would obtain an arbitrary value representing total fluorescence in that well. 
But you would not know the amount (or estimate) of fluorescent molecules (proteins, in this case)

With a calibrant like **fluorescein** we can create a solution with a known concentration, a known number of fluorescein molecules per well. 
The number of molecules per arbitrary fluorescence unit can then be estimated by dividing the expected number of molecules in each well by the measured fluorescence for the well.

> Note: We are using fluorescein as a calibrant for green fluorescence since our constructs use GFP, but we also have recommendations for calibrants for red and blue fluorescence.

### Optical Density
When we take our measurements of fluorescence we want to ensure that we have similar concentrations of cells in each sample.
Optical density at a wavelength of 600 nm (OD600) is common measurement for estimating the number of cells in a culture. 
With a plate reader these OD measurements are quick, cheap, simple, and high-throughput.

However, OD600 measurements do not provide a direct measure of cell count. 
So to compare cell counts between experiments, we need a calibration protocol with a reference material.

The NanoCym 950 nm monodisperse **silica nanoparticles** (**microspheres**, for short) are similar in size and optical properties to bacterial cells.
With a known quanitity of microspheres in solution, we can create a standard curve that will serve as a calibrant for optical density/bacterial cell count.
This allows the conversion of OD600 measurements into an estimated equivalent number of cells.

### Knowledge Check

The questions below will help guide you in designing your experiments and determining whether your experiment was successful or not. 
Note that a successful experiment is different from determining whether your system is working as expected: negative data is fine so long as your experiment was performed correctly! 
Your design and build specifications will both influence and be influenced by these questions.

- What are you testing for?
- Which types of measurements are needed? What will you need to measure?
- What instruments are required to perform these measurements?
- What is the effective range of measurement on your instruments, and how will you distinguish true signals from noise, artifacts, and confirmation bias?
- What form will your data take?
    - Is it quantitative or qualitative? Will there be images?
    - Will you collect time course or end-point data?
- What are the physical units of your measurements? Are your units arbitrary, relative, or absolute?
- What sort of controls can you use to determine whether your experimental protocols are working correctly?
    - What data will you generate to determine whether your experiment ran correctly?


## Resources Needed
The following are the resources needed for the Test Module. 

- Glycerol stocks of...
    - Your assembled constructs from the [Build Module](/2_build/2_build.md) (or Interlab devices from [here](/2_build/2_build.md#build-alternative-interlab-devices))
    - The positive and negative controls 
- Media: 
    - LB agar plates
    - LB media
    - Kanamycin and chloramphenicol antibiotic stocks
- Equipment: 
    - plate reader able to measure absorbance at 600nm and fluorescence
    - micropipettes and tips
- Other materials
    - 14-mL cell culture tubes
    - ice bucket and ice or cold block
    - iGEM Fluorescence Measurement Kit (this module uses the 2024 version)
        - Fluorescein Sodium Salt
        - Monodisperse Silica Nanoparticle

**Note** that this list is not completely exhaustive as there will be some things that we assume your lab has access to, from small things (lab pens, glassware) to larger ones (-80°C freezer, centrifuge).
We have also not included quantities, it will be important for you to understand the workflow, read through the protocols, and keep track of those yourself. 

## Workflow Overview
There are two protocols associated with this Test Module, 
- the [Calibration Protocol](./protocol-calibration-fluorescein.md) and 
- the [Cell Fluorescence Protocol](./protocol-cell-fluorescence.md). 

Additionally, each of these protocols has a corresponding datasheet, in which you will enter your results.

The **cell fluorescence protocol** requires two overnight incubations, one for streaking of glycerols, and one for growth of liquid culture.
You can do the **calibration protocol** in parallel on any of those days, as long as it is done before any of the cell fluorescence measurements.

Unlike the Build Module, we will break this workflow down by protocol instead of day, but we have our recommended schedule breakdown below. 

### Recommended 2-day plan
The following is a 2-day plan for the Test Module that will take you from growing up your cells to preparing your plate reader plates.
- **Day 0** (Before you start)
    - Streak from glycerols for single colonies
- **Day 1**
    - Perform calibration protocol with plate reader
    - Pick colonies and inoculate overnight cultures
- **Day 2**
    - Dilute overnight cultures to known OD
    - Plate cultures and measure on plate reader for 0 hr reading
    - Plate cultures and measure on plate reader for 6 hr reading

## Calibration Protocol

Before starting the experiment, you must complete the Calibration Report and Protocol.
This protocol only needs to be completed once. 
It involves preparing stock and working solutions, creating serial dilutions of the GFP calibrant dye and microspheres calibrant, and measuring their properties.
The report is needed to record your instrument and also track your protocol.

- [Calibration Protocol](./protocol-calibration-fluorescein.md)
- [Calibration Protocol Report]()

The calibrants you need (and provided by iGEM headquarters within the Distribution Kit) are:
- **Fluorescein Sodium Salt** - green fluorescent calibrant (Dried down. Resuspend in 1mL PBS 1X to get the stock solution at 100uM)
- **Monodisperse Silica Nanoparticles** - optical density/bacterial cell count calibrant (850 uL solution in Water per tube, 3e9 beads/mL)

Once you have completed the calibration protocol, enter the data into the [datasheet-calibration.xlsx](./assets/protocol-calibration/datasheet-calibration.xlsx).

### Data Validation
After completing the calibration protocol, evaluate the data against the following criteria to ensure it meets the required quality standards. 
These checks help identify major errors in protocol execution or reporting.

- [ ] Water measurements have a lower OD than microsphere measurements
- [ ] Water OD measurements are not negative
- [ ] Fluorescein fluorescence measurements generally decreases with increasing dilution
- [ ] Microsphere absorbance measurements generally decreases with increasing dilution
- [ ] PBS-only fluorescence measurements are not negative.
- [ ] All replicates are present for every sample
- **Saturation (Low & High) ?**
- **Dilution Levels ?**

If your data meets all of the above criteria, then you can 

## Cell Fluorescence Protocol

In this protocol you will measure the optical density and fluorescence of your constructs in cells.
This is a multi-day protocol.

You will grow cultures overnight and then dilute those cultures to a known OD 600nm absorbance.
These will be aliquoted into a 96-well plate for the 0hr timepoint, with the remaining diluted culture grown for 6 hours. 
The 6hr culture will be aliquoted into a second 96-well plate for the 6hr timepoint. 
For each plate you will measure fluorescence and absorbance.

> You must also use the
same settings (e.g., filters or excitation and emission wavelengths) that you used in your
calibration measurements. If you do not use the same type of plates, volumes, and
settings, the measurements will not be valid.

- [Cell Fluorescence Protocol](./protocol-cell-fluorescence.md)

Once you've completed the protocol, you will enter the data into the [datasheet-cell-fluorescence.xlsx](./assets/protocol-cell-fluorescence/datasheet-cell-fluorescence.xlsx).

### Data validation

The criteria are:
- Cell sample fluorescence measurements are within the range covered by fluorescein samples (calibrant data).
- Positive control is brighter than negative control at 6 hours and also greater than zero
- At least half of cell sample ODs increase significantly from 0 hours to 6 hours (i.e., cells are generally
alive and growing)
- Fluorescence/OD measurements for constructs at 6 hours span at least a 10-fold range (i.e., there
is at least some significant variability in fluorescence expression)
- All replicates are present for every sample.



## Data conversion



## Data analysis

- How will you analyse your data?
    - What analysis is required to determine if your system is functioning as intended? For example, will you compare test samples to controls?
    - How many repeats will you need to perform this analysis to an acceptable degree of confidence?
- How will you report your data?
    - What are the crucial results from your experiments?
    - How can you present your data in an easily understandable format?
    - How can you make your full data set available for transparency and reproducibility?
- How can your measurements be used by others?
    - Is there any metadata required to ensure others can repeat your experiments?
    - Are you able to test your system modularly so others can easily re-use parts of your design and understand how that aspect will function?
