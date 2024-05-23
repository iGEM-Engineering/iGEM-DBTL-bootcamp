# Build Module
[Introduction](/0_intro/0_intro.md) >> [Design](/1_design/1_design.md) >> [Build](/2_build/2_build.md) >> [Test](/3_test/3_test.md) >> [Learn](/4_learn/4_learn.md)

**The Build Module is currently under development.**

## Overview
This Build Module is a hands-on lab component of the DBTL Bootcamp. 
In this module you will prepare all the required basic parts and the plasmid backbone with drop-out from your [iGEM Distribution Kit](https://technology.igem.org/distribution/introduction) to build the constitutively expressing GFP constructs that you designed and _in silico_ assembled in the Design Module. 

This is all described in the [Introduction](/0_intro/0_intro.md) and in further detail in the [Design Module](/1_design/1_design.md), so please read and understand those sections before starting the Build Module. 

<center>
<figure>
<img src="assets/images/GGA-MoClo.png" width=100% />
</figure>
</center>

You will use those basic parts, the plasmid backbone with drop-out, and Golden Gate Assembly (GGA) to create a series of transcription units in a backbone. 

Once you have validated that your assembled constructs match your _in silico_ assemblies, you can proceed to the [Test Module](/3_test/3_test.md), where you will characterize them.

**IMPORTANT:** As with all experimental procedures, preparation is of key importance. 
Before starting in the lab, read through the entire module: familiarize yourself with the protocols, the materials, and the equipment needed.

If you are unable to assemble your designed constructs, or have decided not to do the Build Module, you can (mostly) skip this module. 
Instead, you can transform a selection of [Interlab devices]() directly from the Distribution Kit, and use those in the Test Module. 
_No assembly required!_


### What you will need to know before you start
- **IMPORTANT:** 
Before you start any work in the lab, make sure you have completed ALL of your institution's safety requirements.
- Core concepts & terminology from the [Introduction](/0_intro/0_intro.md) and [Design Module](/1_design/1_design.md).
- Basic laboratory techniques and familiarity with all the equipment that will be used in the workflow/protocols below.
- Keeping a good lab notebook! Make sure to follow best practices and any guidelines from your lab group, but [here](/2_build/tips-notebook.md) are some general tips.

## Resources Needed

- Chemically competent _E. coli_ cells, preferable DH5alpha or strains with recA1 and endA1 mutations
- Miniprep DNA extraction kit to isolate plasmid DNA from transformed cells
- Media: 
    - LB 
    - SOC 
    - LB agar plates
    - Kanamycin and chloramphenicol antibiotic stocks
    - 80% sterile glycerol.
- Enzymes, buffers, and other reagents 
    - BsaI and associated buffers
    - T4 DNA Ligase and associated buffers
    - Optional: BSA + PEG-3350
- Equipment: 
    - micropipettes
    - water bath or heat block for transformations
    - Nanodrop, Qubit & reagents, or other device to measure DNA concentration
    - PCR Machine for GGA
- Other materials
    - plate spreaders / glass beads
    - 14-mL cell culture tubes
    - PCR and microcentrifuge tubes
    - ice bucket with ice or cold block




## Workflow Overview
The following is a 6-day plan for the Build Module, that will take you from transforming parts from the iGEM Distribution Kit, to assembling your constructs, and finally preparing glycerol stocks for future use. 

Depending on your level of expereience and/or available time, you may be able to combine the Day 4 work (transform assembly reaction) with Day 3, to shorten this workflow to 5 days.

- **Day 0**
    - Competent cells
    - Antibiotic stocks
- **Day 1**
    - Transform plasmids from Distribution Kit*
- **Day 2**
    - Pick colonies and inoculate overnight cultures
- **Day 3**
    - Make glycerol stocks
    - Make minipreps
        - Quantify plasmids
    - Setup assembly reaction
- **Day 4**
    - Transform assembly reaction
- **Day 5**
    - Screen colonies 
    - Select GFP-positive colonies and inoculate overnight cultures
- **Day 6**
    - Make glycerol stocks
    - Miniprep plasmids
    - Confirm plasmid sequences

Note: This plan does not include time for the following:
- preparing & testing competent cells
- sequence confirmation of parts/constructs

***IMPORTANT:** All parts from the distribution kit MUST first be transformed into competent cells. 
Once these cells are growing, you can make glycerol stocks and miniprep the plasmids from overnight cultures. 
These miniprepped plasmids are what you will use for GGA reactions. 
DO NOT use DNA from the distribution kit directly in a GGA reaction.


## Day 0
### On competent cells
In order to replicate copies of your plasmids, you will need to insert the plasmids into _E. coli_ cells. 
Specially prepared cells, **competent cells**, can be _transformed_, a process by which foreign DNA (the plasmid DNA of your constructs) will be taken into the cells.

There are two general types of competent _E. coli_ cells: chemically competent and electrocompetent. 
Electrocompetent cells require an electroporator which you may not have access to in your lab. 
So for this bootcamp, we will cover making and using chemically competent cells, since you only need a heated water bath or heat block to transform the plasmids into your cells. 

For chemically competent cells, you can either purchase these cells from a vendor or make them in the lab.
Vendors will often sell a range of competent cells for different purposes and transformation efficiencies. 
These commercial competent cells are validated so it can make troubleshooting easier, but they are an added expense. 
If you are unable to purchase competent cells, we have provided a protocol below so you can make your own cells and test their efficiency. 

#### Protocols
- [Preparing Competent Cells](/protocol-preparing-competent-cells.md)
- [Competent Cell Efficiency](/protocol-competent-cell-efficiency.md)

### Antibiotic stocks
Most labs typically make stocks of a 1000x concentration of common antibiotics which are filter-sterilized through a 0.2µm syringe filter, aliquoted and stored in the freezer. 
This makes it easy to dilute in the LB media. 
For example, if you are setting up a 4 mL culture for a single plasmid then you would use 4 µL (1/1000) of the antibiotic. 
You can make 10mL, run it through a filter with a syringe and divide into 0.5-1 mL aliquots and freeze.

| Antibiotic | Stock conc. (mg/mL) | Working conc.	(µg/mL) | Dilution | Solvent |
| --- | --- | --- | --- | --- |
| Chloramphenicol | 20 | 20 | 1,000× | in EtOH |
| Kanamycin | 50 | 50 | 1,000× | In ddH2O |

Adapted from the Barrick Lab's [Antibiotic concentrations and stock solutions](https://www.barricklab.org/twiki/bin/view/Lab/ProtocolsAntibioticStockSolutions).



## Day 1
### Transform plasmids from Distribution Kit

The following table contains the locations, and basic information for the parts and plasmid backbone you will need to transform from the [2024 iGEM Distribution Kit](https://technology.igem.org/distribution/handbook).

From this you will be doing **eight** transformations, as you do not need to transform all five promoters, only the ones you selected for your _in silico_ assemblies in the [Design Module]().

| BBa_ name | desc | part type | Plasmid Backbone | AbR | Total Plasmid length (bp) | Plate | Well |
| --- | --- | --- | --- | --- | --- | --- | --- |
| BBa_I20270 | Positive control | device | pSB1C3 | CmR | size | | |
| BBa_J23100 | Anderson promoter | promoter | pSB1C5SA | CmR | size | | |
| BBa_J23101 | Anderson promoter | promoter | pSB1C3SA | CmR | size | | |
| BBa_J23106 | Anderson promoter | promoter | pSB1C3SA | CmR | size | | |
| BBa_J23116 | Anderson promoter | promoter | pSB1C5SA | CmR | size | | |
| BBa_J23117 | Anderson promoter | promoter | pSB1C3SA | CmR | size | | |
| BBa_J428038 | BBa_B0034 Type IIS variant | rbs | pSB1C5SB | CmR | size | | |
| BBa_J119040 | BBa_E0040 Type IIS variant | cds | pSB1C5C | CmR | size | | |
| BBa_J428092 | BBa_B0015 Type IIS variant | terminator | pSB1C5SD | CmR | size | | |
| BBa_J434151 | pTi plasmid backbone with RFP drop-out | plasmid backbone | BBa_J434150 | KanR | size | | |

_KanR = kanamycin resistant, CmR = chloramphenicol resistant_

Key things to know: 
- which three promoters did you select for your _in silico_ assemblies?
- the antibiotic resistances of the plasmid backbones, as these will be the antiobiotic stocks you need: kanamycin and chloramphenicol
- the sizes in bp of the plasmids, as we will use this to calculate the molar concentration for the [assembly reaction]().
- there is an estimated 1-2 ng of DNA in each distribution kit well, so if you are using our recommended protocol, assume that you are transforming with 100-200 pg/µL. 

Lastly, you may have noticed that there is a positive control in the table.
That device, BBa_I20270 in pSB1C3, has been used as a positive control for past Interlabs.
We will not be using this as a control for transformations or assembly, but as a control for the [Test Module]() experiment. 
We will be transforming it now, so you will not need to do that later.

You may also have noticed that there is not a negative control listed.
That's because we will use the pTi plasmid backbone with RFP drop-out as our negative control in the Test Module.

#### Protocols
- [Distribution Kit Transformations](/protocol-distribution-transformation.md)



## Day 2
### Pick colonies and inoculate overnight cultures
If your transformations were successful, you will have colonies to pick from!

For each of your transofmrations pick a single colony, and grow overnight in LB broth with the appropriate antibiotic.
With the exception of your plasmid backbone with drop-out (RFP) and the positive control (GFP), none of your colonies should be fluorescent.

Typically we use 3mL culture media in 14 mL snap cap tubes (rather than screw cap tubes) for microbiological work to allow air infiltration for growth in a shaking incubator. 

We recommend growing 2 colonies from each plasmid in case of a problem with the overnight culture or low yield 

Note that all but one plasmid in this Bootcamp uses chloramphenicol. 
The receiving vector uses kanamycin. 
See [here]() for how to make antibiotic stocks. 

You can calculate how much total media that you need for all of your plasmids and create a master mix with the antibiotic in, for example, a 50 mL screw cap tube then distribute that to the individual 14 mL tubes.

Due to time (and resource cost) we have not included a step here for sequence confirming these transformants. 
This is always good practice though. 
Mistakes and mutations happen!



## Day 3
### Make glycerol stocks
Glycerol stocks are used to freeze a sample of your E. coli cells that have been transformed with your plasmid of interest. This allows you to save a sample in the -80°C and then later revive the cells by growing them up on agar plates to get fresh colonies whenever you need to get more plasmid DNA out of the cells. 

In order to make this frozen sample of cells, you will need to add a cryoprotectant to your sample of cells to be frozen. We are using 80% glycerol. The standard amount to add of this cryoprotectant is one-fourth the volume of your cell culture. This gives a final concentration of 16% glycerol. 

#### Protocols

### Make minipreps
Plasmid DNA can be extracted from _E. coli_ cells at different scales. 
For this procedure you will be using the **miniprep** scale as this provides enough DNA for characterization and use in a number of GGA reactions. 

You will be using silica columns to bind the plasmid DNA from the lysed and neutralized extract. 
All modern plasmid extraction methods/kits use a three step procedure for creating the neutralized lysate that will be added to the silica containing spin column. 
We have some tips on this process, but you should adhere to the protocols of the kit that you are using.

Plasmid DNA can then be stored long term at -20°C. 

**Examples of miniprep kits:**
- Qiagen Spin Miniprep Kit
- Zyppy Plasmid Miniprep Kit
- Macherey-Nagel NucleoSpin Miniprep Kit
- Monarch Plasmid Miniprep Kit
- [Coleman Lab protocol](https://coleman-lab.org/lab-protocols/#labprotocols) ([make your own](https://coleman-lab.org/wp-content/uploads/2021/07/plasmid-miniprep-5-ml-spin-column-.pdf))

#### Protocols
- [Miniprep Tips]()


### Quantify Plamid preps
In order to perform an assembly reaction you must know the exact molar concentration of your parts in plasmid and the plasmid backbone with dropout. 
You want to have equal-molar amounts of all parts as an imbalance can reduce the yield of correctly assembled colonies upon transformation. 

UV absorbance is one of the most common ways to quantify DNA. 
Fluorometry is more sensitive, allowing measurement of nanogram quantities of DNA. 
You want to have the quantity of your plasmids expressed in ng/µL.

Follow the instructions for the instrument you will be using to quantify your plasmid DNA

**Example instruments:**
- Nanodrop
- UV/Visible spectrophotometer with UV-transparent quartz cuvettes.
- Fluorimetry (Qubit, DeNovix, etc.)



### Setup assembly reaction
#### Protocols


## Day 4
### Transform assembly reaction
Once you have your assembly reactions, you can transform them into your competent cells.
The protocol we recommend below has some differences compared to the [distribution kit transformations protocol](/protocol-distribution-transformation.md).

#### Protocols
- [Assembly Reaction Transformations](/protocol-assembly-transformation.md)



## Day 5
### Screen colonies and inoculate overnight cultures
On your transformation plates you should see a mixture of GFP and RFP positive colonies. 

The RFP-expressing cells contain the unaltered plasmid backbone with drop-out whereas the GFP-expressing cells contain candidates of your assembled constructs.

[Content needed: UV lightbox & promoter strength for weakly green colonies]

At this stage you will pick (with sterile toothpicks or pipette tips) well isolated individual GFP colonies from the plate and grow them overnight (16 hours max) in LB broth with kanamycin. 
Picking four colonies for each assembly will be sufficient. 

These overnight cultures will be used on Day 6, to perform minipep plasmid DNA extractions and make glycerol stocks. 


## Day 6
### Make glycerol stocks

#### Protocols

### Miniprep and confirm plasmid sequences
Mutations and mistakes happen!
For your own project, you should always confirm the sequence of your constructs so you know that no mutations/errors/mistakes have arisen.

Sequencing will usually involve: 
1. miniprepping your construct plasmids
2. following the submission procedures for your institution/sequencing vendor
    - you may be choosing between NGS whole plasmid or Sanger sequencing
3. receiving data back and using a sequence alignment tool

If possible, we encourage you to use sequencing to confirm the constructs you have assembled for this bootcamp.
For sequence alignment, you will use the GenBank files for your _in silico_ assemblies from the Design Module.

However plasmid sequencing can be expensive, so you may want to restriction map your individual clones beforehand and select one or two clones for sequencing. 

## Interlab Devices

### Workflow Overview
- **Day 1**
    - Transform plasmids from Distribution Kit
- **Day 2**
    - Pick colonies
- **Day 3**
    - Make glycerol stocks
    - Miniprep plasmids
    - Confirm plasmid sequences