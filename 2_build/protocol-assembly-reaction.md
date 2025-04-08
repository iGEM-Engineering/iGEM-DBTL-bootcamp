# Golden Gate Assembly Reaction

## Overview
When you have completed your transformations and minipreps of the [basic parts and destination vector](./2_build.md#day-1), you will need to perform Golden Gate Assembly reactions to build your three constructs.

The protocol below is adapted from the [Bennett Lab's](https://wiki.rice.edu/confluence/display/BIODESIGN/Home) [Golden Gate Assembly info page](https://wiki.rice.edu/confluence/display/BIODESIGN/Golden+Gate+Assembly) and uses many of their recommendations.

## Materials needed
### Equipment

- Lab marker / Sharpie
- Container for ice
- Micropipettors and tips for the following volumes: 
    - 1 µL
    - 100 µL
- Thermocycler

### Consumables

- Purified plasmid DNA (for all necessary parts and the destination vector) 
- 3x PCR tubes (compatible with your thermocycler)
- 1x Microcentrifuge tube 1.5ml (for master mix)
- Sterile deionized water
- BsaI
- T<sub>4</sub> DNA Ligase
- 10x T<sub>4</sub> Ligase Buffer
- 10× BSA or rAlbumin


## Protocol

### DNA Concentrations and Dilutions
Before starting, your plasmid concentrations for your [basic parts and destination vector](./2_build.md#day-1) measured and diluted to known quantities.

The protocol below assumes you will be using 
- 25 fmol (0.5 µL 50 nM) for each part
- 12.5 fmol (0.5 µL 25 nM) for the destination vector

Use the "DNA Conc" sheet from [Wetlab Calculator](https://github.com/shyambhakta/wetlabcalc) (Bennett Lab) for dilution calculations.
The sheet inlcudes an example dilution, and the critical information you will need is:
- length (bp) of each plasmid (not just the part size)
- concentrations of your plasmid preps

### Reaction Setup

You will build three constructs (3 reactions needed) but we will make a master mix (for volume 4x) to reduce pipetting steps and errors from pipetting small volumes, and create consistency across all the common components for the reactions.

The only components you will add individually are the promoters, as those will be unique to each final construct/reaction.

> Assemble all reaction components on ice/cold block in PCR tubes.
>
> As you will be working with small amounts, watch that all components enter and exit the pipette tip to ensure no component fails to be transferred. 

#### Master mix preparation

1. Start by making a master mix in a 1.5 ml tube using the following volumes from the **4x column**. 
Combine water, buffer, enhancers and mix; then add BsaI and T<sub>4</sub> DNA Ligase and mix. 
Enzymes must be added after at least buffer and water are mixed.

| component | volume 1x | volume 4x* | notes |
| --- | --- | --- | --- |
| Deionized Water | 10 ul | 34 ul | --- |
| 10x T<sub>4</sub> Ligase Buffer |1.5 ul | 6 ul | --- |
| 10x BSA or rAlbumin |1.5 ul | 6 ul | --- |
| BsaI | 0.5 ul | 2 ul | --- |
| T<sub>4</sub> DNA Ligase | 0.5 ul | 2 ul | --- |
| **Total** (without DNA) | 12.5 ul | 50 ul | --- |

2. Add the common basic parts and the destination vector using the volumes from the 4x column to your master mix.

| part | volume 1x | volume 4x | notes |
| --- | --- | --- | --- |
| RBS | 0.5 ul | 2 ul | --- |
| CDS | 0.5 ul | 2 ul | --- |
| Terminator | 0.5 ul | 2 ul | --- |
| Destination Vector | 0.5 ul | 2 ul | --- |
| **Grand Total** (without unique promoter) | 14.5 ul | 58 ul | --- |

3. After adding the last common component, mix the master mix by pipetting or by flicking and centrifuging the tube to recollect liquid at bottom.

#### Add your promoters
4. From the master mix tube, aliquot 14.5 ul of mix to each of the three labeled PCR tubes (reaction tubes)

5. Add 0.5 ul of the appropriate promoter to its labelled tube.

6. After all three reactions are complete, mix the tubes by flicking and centrifuging the tube to recollect liquid at bottom.

### Thermocycler settings and runtime

7. Program the thermocycler with the protocol below and set the thermocycler lid to 75°C.

<table>
    <thead>
        <tr>
            <th></th>
            <th>step</th>
            <th>temp</th>
            <th>time</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td></td>
            <td>1. initial digestion</td>
            <td>37°C</td>
            <td>10 min</td>            
        </tr>
        <tr>
            <td rowspan=2>Repeat 25x</td>
            <td>2a. digestion</td>
            <td>37°C</td>
            <td>1.5 min</td>            
        </tr>
        <tr>
            <td>2b. annealing & ligation</td>
            <td>16°C</td>
            <td>3 min</td>            
        </tr><tr>
            <td></td>
            <td>3. digestion & ligase inactivation</td>
            <td>50°C</td>
            <td>10 min</td>            
        </tr>
        <tr>
            <td></td>
            <td>4. inactivation</td>
            <td>65°C</td>
            <td>10 min</td>            
        </tr>
        <tr>
            <td></td>
            <td>5. hold</td>
            <td>4°C</td>
            <td>∞</td>            
        </tr>
    </tbody>
</table>

8. Insert your PCR tubes and run the program.

9. After the program has completed, you can store your reactions at 4°C for the next day, or use them immediately in the [transformations of the assembly reactions](/2_build/protocol-assembly-transformation.md).