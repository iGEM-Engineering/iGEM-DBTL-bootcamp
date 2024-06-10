# Test Module

**The Test Module is currently under development.**

## Overview
In this Test Module, you will take the GFP constructs you have designed and assembled and use a standard protocol, calibrants, and a plate reader to measure them.
Specifically, you will be creating a standard curve with your plate reader by following a calibration protocol, then measuring GFP expression and cell density with a plate reader. 
We will use this Module to explore good measurement practices, the experimental design of past Interlabs, and key questions you should consider and address before working on the Test stage of your project.

**IMPORTANT:** As with all experimental procedures, preparation is of key importance. Before starting in the lab, read through the entire module: familiarize yourself with the protocols, the materials, and the equipment needed.

**If you have skipped or were unable to complete the Design and/or Build Module and have not assembled the GFP constructs, you can still participate in the Test Module!** 
You can instead transform past Interlab devices that are in the Distribution. 
We have included the selection here, from which you can pick three. 
For the purposes of this documentation, we will assume you have successfully transformed and made glycerols of those before starting work on this module.

**If you are unable to complete this Test Module, you can still participate in the data analysis and Learn Module.** 
We have provided some past data here that you can use in the Learn Module. 
Please note though, that this past data will refelect past Interlab devices, and not the devices that you may have and designed and/or built in the prior modules.

### What you will need to know before you start
- Core concepts & terminology from the [Introduction](/0_intro/0_intro.md), [Design Module](/1_design/1_design.md), and [Build Module](/2_build/2_build.md).
- Basic laboratory techniques and familiarity with all the equipment that will be used in the workflow/protocols below.
- You should read through our page on the [Test stage](https://technology.igem.org/engineering/test) of the [DBTL cycle](https://technology.igem.org/engineering/introduction). 
Some content there may be outdated, but there are some key concepts and considerations that we will be applying to this Test Module, and that resource page will include more material than is covered here.
- We also highly recommend watching this introductory webinar from our 2021 series: [Quantifying Fluorescence and Cell Count with Plate Readers](https://video.igem.org/w/w6iPQTJechP7gBnknrPC93) 
    - It begins with a general introduction to fluorescence and OD, including a comparison of plate readers and other types of instruments, factors affecting fluorescence, and how to pick colors based on excitation and emission spectra. 
    - The second section of the webinar focuses on calibration of measurements for fluorescence and OD, and on debugging such measurements. 
    - Finally, the session ends with a discussion of how to interpret and debug calibrated plate reader data.

## Resources Needed
The following are the resources needed for the Test Module. 

- Glycerol stocks of...
    - Your assembled constructs from the Build Module (or Interlab devices from here)
    - The positive and negative controls 
- Media: 
    - LB agar plates
    - LB media
    - Kanamycin and chloramphenicol antibiotic stocks
- Equipment: 
    - plate reader 
    - micropipettes and tips
- Other materials
    - 14-mL cell culture tubes
    - ice bucket and ice or cold block
    - iGEM Fluorescence Measurement Kit (this module uses the 2024 version)

## Introduction

Across all engineering fields, good measurement ensures that the data you produce is relevant, comparable, accurate, reliable, and reproducible.

Reliable and repeatable measurement is a key component of all engineering disciplines. 
However, it has often been difficult to compare measurements in different labs.
Every lab has different equipment with different settings, and measurements of fluorescence or absorbance from this equipment are often reported using arbitrary units (AU). 
These AU values from different labs cannot be directly compared, which hinders reproducibility and can discourage others from building on your work and/or using your systems. 
Measurement standards can be used to calibrate equipment and convert arbitrary units to absolute units, which are comparable.

How can Standards help with Good Measurement?



Below are methods for obtaining absolute units for three measurements commonly used in synthetic biology.



For example, one of the big challenges for synthetic biology measurements is that fluorescence data usually cannot be compared because it has been reported in different units or because different groups process data in different ways. Many have tried to work around this using “relative expression” comparisons. However, being unable to directly compare measurements makes it harder to debug engineered biological constructs, harder to effectively share constructs between labs, and harder even to just interpret your experimental controls.

Over the past several years, iGEM has advanced the frontiers of science and engineering with the biggest interlaboratory studies ever done in synthetic biology. These studies established a baseline for replicability of fluorescence measurements and identified likely key sources of error, and have published in open-access journals.

Through previous InterLab studies, the Engineering Committee – with the help of many iGEM teams – has developed a robust measurement procedure for green fluorescent protein (GFP) and for cell density measurements in E. coli. This is an affordable and simple protocol for estimating cell count and per-cell fluorescence on plate readers, that allows for direct comparison to single-cell measurements in flow cytometers.

### Knowledge Check

The questions below will help guide you in designing your experiments and determining whether your experiment was successful or not. Note that a successful experiment is different from determining whether your system is working as expected: negative data is fine so long as your experiment was performed correctly! Your design and build specifications will both influence and be influenced by these questions.

- What are you testing for?
- Which types of measurements are needed? What will you need to measure?
- What instruments are required to perform these measurements?
- What is the effective range of measurement on your instruments, and how will you distinguish true signals from noise, artifacts, and confirmation bias?
- What form will your data take?
        Is it quantitative or qualitative? Will there be images?
        Will you collect time course or end-point data?
- What are the physical units of your measurements? Are your units arbitrary, relative, or absolute?
- What sort of controls can you use to determine whether your experimental protocols are working correctly?
        What data will you generate to determine whether your experiment ran correctly?





## Anderson Promoter Data

Before we start lets look at some previous promoter strength data on the Anderson promoters.
We used this for the modeling section of the Design Module, but it is useful to look at again.

| Anderson Promoter | RFP (AU) | Relative Strength |
| --- | --- | --- |
| BBa_J23100 | 2547 | 1.00 |
| BBa_J23101 | 1791 | 0.70 |
| BBa_J23106 | 1185 | 0.47 |
| BBa_J23116 | 396 | 0.16 |
| BBa_J23117 | 162 | 0.06 |

The data above is a subset of a larger characterization effort by the [2006 Berkeley iGEM Team](https://2006.igem.org/wiki/index.php/University_of_California_Berkeley_2006) when they introduced the Anderson promoters to iGEM.

This was excellent work by the team  (for which they won the measurement award), and clearly demonstrated that stength of the promoters, in their RFP expression device.
From this data, you can already see which promoters are the highest (BBa_J23100) and lowest (BBa_J23117) strength.

But, lets now look at it the data with a critical eye.
If you were to use these promoters in your own device, or completely replicate the devices that they used, how might you quantitatively be able to compare it to the data above?


### What does AU mean for the RFP measurements?
AU stands for an **A**rbitrary **U**nit and it is a relative unit of measurement.
This works OK when we are only comparing measurements performed in the same experiment, but we are not actually able to compare these measurements from lab to lab.

### What do we know about the experimental context?
From the [Anderson promoter collection page](https://parts.igem.org/Promoters/Catalog/Anderson), the individual part pages, and some sequence analysis, we know the following:
- Red fluorescent protein (RFP) was used as the reporter protein to measure expression

- the promoters were measured in the [BBa_J61002](https://parts.igem.org/Part:BBa_J61002) plasmid backbone. 
    - BBa_J61002 is a modified version of [pSB1A2](https://parts.igem.org/Part:pSB1A2), a high-copy, ampicillin resistant plasmid backbone.

- BBa_J61002 includes an expression cassette. Users clone in their promoter, and then downstream there is an RBS (BBa_B0034), an RFP (BBa_E1010), and a Terminator (BBa_B0015).

- the _E. coli_ TG1 strain was used

### What do we _not_ know about the experimental context?
Importantly, we also do not know the following (at least readily):
- how was fluorescence measured? Including what instrument was used?
- what protocol was used?
- what controls were used?


## Experimental Design
You should be considering your experimental design in your Design stage of your project.



What is an InterLab study?

As the pioneering organization of synthetic biology, iGEM is a natural test-bed for new ideas and approaches in synthetic biology. One of the big challenges facing the field of synthetic biology is the ability to obtain reliable and repeatable measurements in different labs – a key component of all engineering disciplines. For example, fluorescence data usually cannot be compared across laboratories because they have been reported in different units or because different groups process data in different ways. This makes it hard to debug engineered biological constructs, build on existing measurements, effectively share data between labs, and even to just interpret experimental controls.

Over the past several years, iGEMers have been tackling this challenge through the International InterLaboratory (Interlab) Measurement Studies. Previous Interlab studies have focused on developing a robust measurement procedure for green fluorescent proteins and cell density (OD600) by quantifying the bacterial fluorescence and cell number using independent calibrants.

This year, all iGEM 2023 teams are invited to sign up for the 7th Interlab study, where we will extend measurement procedures from one-color calibrations (green) to multi-color calibrations (green-red-blue). We will also test, how well precise calibration of devices work that encode two fluorescent proteins at the same time.

You will not only gain skills and build excitement for the iGEM Competition, your data could be included in peer-reviewed scientific publications!
Why are calibrated fluorescent measurements important?

Before starting, we highly recommend watching this introductory webinar from our 2021 series! It begins with a general introduction to fluorescence and OD, including a comparison of plate readers and other types of instruments, factors affecting fluorescence, and how to pick colors based on excitation and emission spectra. The second block of the webinar focuses on calibration of measurements for fluorescence and OD, and on debugging such measurements. Finally, the session ends with a discussion of how to interpret and debug calibrated plate reader data.
2021 Webinar: Quantifying Fluorescence and Cell Count with Plate Readers
Expectations

The 2023 InterLab study is an optional activity for competition participants, but is a great way to prepare for your iGEM project through robust measurement procedures.

To participate, you will need to do a set of transformations, culture bacterial cells, and measure cells and calibrants in a fluorescent plate reader.

For each experiment, you will follow the provided protocol PDF, enter your data into the datasheet (.xlsx) for submission, and complete a survey to provide information about the experiment and your experience.

Teams receive a measurement calibration kit and the InterLab devices in the 2023 iGEM Distribution.

Teams will also need access to a plate reader that can measure optical density and fluorescence at different wavelengths (green, blue and red), and the associated labware. Each protocol will detail the labware and lab equipment needed.

Finally, for the sake of consistency and reproducibility, we require all teams to use E. coli K-12 DH5-alpha. 

If you do not have access to competent cells of this strain, please email interlab (at) igem (dot) org along with what E. coli strain(s) you do have available.
Calibration

Before any experiment, your team must perform the GFP calibration protocol. 
This protocol only needs to be completed once. It entails making stocks and working solutions, making and measuring serial dilutions of the GFP calibrant dye and the particle calibrant.

    Protocol PDF: interlab-2023-calibration-protocol-v3.pdf
    Protocol Datasheet: interlab-2023-calibration.xlsx

The calibrants are provided by iGEM headquarters within the 2024 Distribution Kit. The calibrants kit contains:

    Fluorescein Sodium Salt - green fluorescent calibrant (Dried down. Resuspend in 1mL PBS 1X to get the stock solution at 100uM)
    Sulforhodamine-101 (mislabelled as Texas Red) - red fluorescent calibrant (Dried down. Resuspend in 1mL PBS 1X to get the stock solution at 20uM)
    Cascade Blue - blue fluorescent calibrant (Dried down. Resuspend in 1mL ddH2O to get the stock solution at 100uM)
    Monodisperse Silica Nanoparticles - optical density/bacterial cell count calibrant (850 uL solution in Water per tube, 3e9 beads/mL)

Monodisperse Silica Nanoparticles

The NanoCym 950 nm monodisperse silica nanoparticles (microspheres, for short) are a calibrant for optical density/bacterial cell count. The microspheres are similar in size and optical properties to bacterial cells, and therefore one microsphere is approximately equal to one bacterial cell. By creating a serial dilution with known numbers of silica microspheres, a standard curve of number of microspheres against OD readings can be produced.

However, these microspheres can aggregate (see picture) and may be difficult to completely resuspend in solution. Prior to aliquoting into the calibration plate, the tube of microspheres must be vortexed for 30 seconds, as noted in the calibration protocol. If however, you still notice any aggregates we recommend sonication of the tube. If you have questions about this process or issues, please contact interlab (at) igem (dot) org.
Image of microsphere aggregation in the calibrant tube
An aggregation of microspheres at the bottom of the tube (see arrow). This tube will need vortexing, or if the aggregate persists, sonication.
Culture Dilutions

As part of the following Interlab experiments, your team will need to grow cultures overnight and then dilute those cultures to a known OD 600nm absorbance. Please follow the directions that each protocol has laid out, and we have also provided this spreadsheet to help calculate those dilutions.

    culture-dilution-calculator-template.xlsx


Experiment 3

Plate reader culturing and green fluorescence development over time

In this experiment, your team will measure the fluorescence of your three devices that encode for a green fluorescence protein over time when cultured in a 96-well plate and calibrate the fluorescence of these devices to the calibrant dyes and the optical density of the culture to the cell density calibrant.

This experiment aims to assess the lab-to-lab reproducibility of 96-well plate bacterial culturing and fluorescent development over time.

    Protocol PDF: interlab-2023-exp3-standard-v3.pdf
    Protocol Datasheet: interlab-2023-exp3.xlsx

Data validation

Data analysis

- How will you analyse your data?
        What analysis is required to determine if your system is functioning as intended? For example, will you compare test samples to controls?
        How many repeats will you need to perform this analysis to an acceptable degree of confidence?
- How will you report your data?
        What are the crucial results from your experiments?
        How can you present your data in an easily understandable format?
        How can you make your full data set available for transparency and reproducibility?
- How can your measurements be used by others?
        Is there any metadata required to ensure others can repeat your experiments?
        Are you able to test your system modularly so others can easily re-use parts of your design and understand how that aspect will function?