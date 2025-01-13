# iGEM Bootcamp Fluorescence Measurement protocol

## Overview
In this protocol we will use a plate-reader to measure the OD600 and GFP fluorescence of our constructs in cells.

Before performing this experiment, you need to perform the calibration measurements. 
Please do not proceed unless you have completed the [calibration protocol](/protocol-calibration-fluorescein.md). 

**Important:** For the calibration and your experiments, you must use the same type of plates and the same volumes. 
You must also use the same settings (e.g., filters or excitation and emission wavelengths) for the calibration and for the experiment. 
If you do not use the same plates, volumes, and settings, the measurements cannot be calibrated properly.

## Protocol in short

## Protocol Materials

- Constructs
- LB Broth + Kanamycin (50 ug/mL)
- LB Agar + Kanamycin (50 ug/mL)
- Kanamycin stock solution (50 mg/mL)*
- Ice
- Shaking incubator (normal for culture tubes)
- Petri dish (x 5)
- 14mL culture tube (x10)
- 50mL conical tube (x20)
- 2x 96 well plate black with transparent flat bottom
- Pipette for 200uL, (single and/or 8-channel)
- Plate reader able to measure absorbance at 600nm and fluorescence either with filters or monochromator.

## Day 0
1. Prepare 5 Petri dishes with LB Agar + Kanamycin (Kan) growth medium, and label petri dishes with the following convention: Construct Name, Day 0.

2. Streak out constructs from glycerols to their coressponding labeled petri dish. 

3. Incubate overnight (for at least 16 hours) at 37.0°C.

## Day 1
4. Prepare 15 culture tubes (50mL) with 12.0mL of LB Broth + Kan.
You will pick three colonies per construct (5 constructs x 3 colonies for 15 tubes total).
Label the tubes, accordingly, naming these tubes with the following
convention: i.e., Construct Name, Colony 2, Day 1.

5. Inoculate (by picking the colonies) into each one of the tubes from Step 3 into their correspondingly labelled tube. 

6. Incubate all 15 culture tubes overnight for 16 hours at 37°C and 220 rpm in a shaker incubator.


## Day 2

### Preparation of the Intermediate dilution and OD measurement
Here you will perform a dilution from the previous day's cultures to start the experiment with a known cell density (OD600). 
For this you need to perform an intermediate dilution to measure OD600 before performing the final dilutions.

7. Prepare 15 culture tubes (14mL) tubes to make the intermediate dilutions from the overnight cultures from Step 5. 
Name these new tubes with the same convention as Step 4, changing the day number as follows: i.e., Construct Name, Colony 2, Day 2, Intermediate Dilution.

8. Dilute each of 15 culture (day 1, Step 4) samples at a 1:20 ratio into LB Broth + Kan (tubes prepared in Step 6). 
NOTE: To make a 1:20 dilution, you need to add 4750uL of LB Broth + Kan, and then add 250uL of the day 1 culture. 
Maintain at 4.0°C while performing dilutions. (You can also do this on ice). 

9. Take the appropriate volume from the Intermediate Dilutions (tubes made in this Step 6) and read the absorbance at 600nm in a spectrophotometer, i.e., the OD600.

### Preparation of the Final Dilution
10. Prepare 15 new 50mL tubes to perform the final dilutions using the Intermediate dilutions from Step 7. 
We will name these new tubes with the following convention: i.e. Construct Name, Colony 2, Final
Dilution.
11. Use the [calculator-cuture-dilution.xlsx](./calculator-culture-dilution.xlsx) (or any other means) to calculate the dilutions by inserting the measured OD (from Step 6) in the second column (Initial OD source). 
The needed volumes to make the dilutions will appear in the corresponding columns culture volume and media volume: As an example, to make 12mL dilution at 0.02 OD600 from a culture at 0.38 OD600, (sample 1), you will need to add 631.58uL of culture (from the Intermediate Dilution) to 11368.42uL of LB broth + Kan media as shown here.
12. Following the calculations from Step 10, make appropriate dilutions (on ice) of each culture to achieve an OD600 of 0.02 in 12 ml LB Broth + Kan. 
These Final Dilution tubes are the starting point of the experiment: they will be used for measurement of the 0hs time-point (Plate 1) and to grow the cultures at 37ºC and 220rpm for 6 hrs (for Plate 2).


### Preparing Plate 1 (0hr)
As soon as you have completed Step 11, the 0hr bacterial cultures are ready to perform the experiment.

12. Prepare a 96 well-plate for measurement of the 0hr time-point. 
Label this 96 well-plate as Plate 1. 
You need to fill out the plate using the following plate map:


13. Transfer 4 times 200uL (4x200uL) from the Final Dilution tubes made in Step 9
and into the appropriate wells of Plate 1 (from Step 10). As indicated in the
plate map, you will have 4 technical replicates coming from each Final Dilution
tube. Maintain both the Final Dilution tubes (from Step 9) and the Plate 1 at
4.0°C during transfer.
14. While keeping Plate 1 on ice, place the Final Dilution tubes (from Step 9 after
removing the 4x200uL for measurement) in the orbital incubator (shaker) and
incubate for 6.0 hours at 37.0°C at 220 rpm. (See figure in next page)
15. Once the Final Dilution tubes are incubating, Plate 1 is almost ready for
measurement of the 0hrs time-point. You need to complete the blanks. For
this, add 200.0uL of LB Broth + Kan to wells A1:H1, A10:H10, A12:H12 of
Plate 1. Maintain at 4.0°C during transfer. These samples are blanks

### Absorbance and fluorescence measurements (Plate 1 0hrs)
14. Take Plate 1 to the plate-reader and set-up a measurement of:
1. Absorbance at 600.0nm
2. Fluorescence (green) with an excitation wavelength of 488.0nm, an
emission wavelength of 530.0nm, and a 30.0nm bandpass

### Preparing Plate 2 (6hr)
After 6hrs incubation, the Final Dilution tubes are ready to prepare Plate 2. This will
follow the same pattern as Plate 1.
17. Prepare a 96-well microplate as Plate 2.
18. Transfer 4 times 200uL (4x200uL) from the incubated Final Dilution tubes from
Step 12 and into the appropriate wells of Plate 2 (from Step 18). As indicated
in the plate map, you will have 4 technical replicates coming from each Final
Dilution tube. Maintain both the Final Dilution tubes (from Step 12) and the
Plate 2 at 4.0°C during transfer
19. Complete Plate 2 (as you did with Plate 1 in Step 13) by transferring 200.0uL
of LB Broth + Kan to wells A1:H1, A10:H10, A12:H12 of Plate 2. Maintain at
4.0°C during transfer. These are the blanks


### Absorbance and fluorescence measurements (Plate 2 6hrs)
20. Take Plate 2 (6hr time-point plate) to the plate-reader and measure:
1. Absorbance at 600.0nm
2. Fluorescence (green) with an excitation wavelength of 488.0nm, an
emission wavelength of 530.0nm, and a 30.0nm bandpass.
Importing Experimental Data
21. Import data for all the measurements into the provided Excel sheet [datasheet-cell-fluorescence.xlsx](./datasheet-cell-fluorescence.xlsx). You need to include:
● 0 hr time point absorbance measurements of Plate 1,
● 0 hr time point green fluorescence measurements of Plate 1,
● 6 hr time point absorbancet measurements of Plate 2,
● 6 hr time point green fluorescence measurements of Plate 2

**Note:** If your equipment does not have the exact wavelengths of bandpass wavelengths, choose the nearest one and take note.

Protocol version: 4.0