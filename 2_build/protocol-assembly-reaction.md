# Golden Gate Assembly Reaction

## Overview
When you have completed your transformations and minipreps of the basic parts and destination vector, you will need to perform Golden Gate Assembly reactions to build your three constructs.

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
- 1x Microcentrifuge tube 0.5ml (for master mix)
- Sterile deionized water
- BsaI
- T<sub>4</sub> DNA Ligase
- 10x T<sub>4</sub> Ligase Buffer
- 10× BSA or rAlbumin
- PEG enhancer (optional)




## Protocol

### Reaction Setup

We will make a master mix (volume 3x) to reduce pipetting steps and errors from pipetting small volumes, and create consistency across all the common components for the reactions. 

The only components you will add individually are the promoters, as those will be unique to each final construct.

> Assemble all reaction components on ice/cold block in PCR tubes.
>
> As you will be working with small amounts, watch that all components enter and exit the pipette tip to ensure no component fails to be transferred. 

#### Master mix preparation

| component | volume 1x | volume 3x* | notes |
| --- | --- | --- | --- |
| Deionized Water | 10 ul | 30.6 ul | --- |
| 10x T<sub>4</sub> Ligase Buffer |1.5 ul | 4.59 ul | --- |
| 10x BSA or rAlbumin |1.5 ul | 4.59 ul | --- |
| BsaI | 0.5 ul | 1.53 ul | --- |
| T<sub>4</sub> DNA Ligase | 0.5 ul | 1.53 ul | --- |
| Total | 12.5 ul | 38.25 ul | --- |

*The volume 3x includes 2% extra of each component to account for pipetting error in the final master mix.


1. Start by making a master mix in a 0.5 ml tube using the following volumes from the 3x column. Combine water, buffer, enhancers and mix; then add BsaI and T<sub>4</sub> DNA Ligase and mix. Enzymes must be added after at least buffer and water are mixed.

| part | volume 1x | volume 3x* | notes |
| --- | --- | --- | --- |
| RBS | 0.5 ul | 1.53 ul | --- |
| CDS | 0.5 ul | 1.53 ul | --- |
| Terminator | 0.5 ul | 1.53 ul | --- |
| Destination Vector | 0.5 ul | 1.53 ul | --- |
| Total (in tube) | 14 ul | 44.37 ul | --- |

2. Add the common basic parts and the destination vector using the volumes from the 3x column to your master mix.

3. After adding the last common component, mix the master mix by pipetting or by flicking and centrifuging the tube to recollect liquid at bottom.

#### Add your promoters
4. From the master mix tube, aliquot 14.5 ul of mix to each of the three labeled PCR tubes (reaction tubes)

5. Add 0.5 ul of the appropriate promoter to its labelled tube.

6. After all three reactions are complete, mix the tubes by flicking and centrifuging the tube to recollect liquid at bottom.

### Thermocycler settings and runtime

|  | step | temp | time |
| --- | --- | --- | --- |
| | 1. initial digestion | 37°C | 10 min |
| Repeat 25x | 2a. digestion | 37°C | 1.5 min |
|^| 2b. annealing & ligation | 16°C | 3 min |
| | 3. digestion & ligase inactivation | 50°C | 10 min |
| | 4. inactivation | 65°C | 10 min |
| | 5. hold | 4°C | ∞ |

7. Program the thermocycler with the protocol above and set the thermocycle lid to 75°C.

8. Insert your PCR tubes and run the program.

9. After the program has completed, you can store your reactions at 4°C for the next day, or use them immediately in the [transformations of the assembly reactions](/2_build/protocol-assembly-transformation.md).