# Learn Stage of the DBTL Cycle

The **Learn** stage is the final phase of the Design–Build–Test–Learn (DBTL) bioengineering cycle. In this step, we analyze the data collected from standardized, calibrated experiments to extract biological insight, build predictive models, and guide future design choices. The Learn phase closes the engineering loop and enables iterative improvement of synthetic constructs.

---

## 🎯 Objectives of the Learn Stage

- **Understand system behavior** using quantitative data
- **Fit computational models** to capture gene expression dynamics
- **Interpret experimental variation** and identify key parameters
- **Inform the next Design iteration** based on data-driven insight

---

## 🧪 Case Study: GFP Expression Under Anderson Promoters

In this bootcamp, students characterize constitutive expression of GFP under several **Anderson promoters** (e.g., J23100, J23101, J23106), following a **calibrated and standardized measurement protocol** developed by the iGEM Measurement Committee.

The data used here was previously collected using:

- Fluorescence calibrated with **fluorescein**
- OD600 converted into **estimated cell count** via silica microsphere standards
- Data recorded after growth in 96-well plates using a plate reader, at 0 h and 6 h timepoints

> ⚠️ The Learn stage does not include the calibration process itself. You are expected to analyze **pre-calibrated data** produced in the Test stage using the standard protocols.

---

## 📈 Analysis Workflow in the Learn Stage

1. **Normalize** GFP fluorescence by OD600 (MEFL/Particle or per-cell basis)
2. **Aggregate** measurements across replicates (mean, standard deviation)
3. **Visualize** results to compare promoter strengths (e.g., bar plots, box plots)
4. **Fit mathematical models**, if applicable (e.g., linear, Hill-type functions)
5. **Interpret results** to rank promoter performance and understand variability

---

## 📊 What You Can Learn from This Data

- **Promoter strength ranking** (e.g., J23100 > J23101 > J23106)
- **System variability** due to biological noise or part performance
- **Consistency** across replicates and timepoints
- **Use of controls** to validate results and assess background expression

These insights can be fed directly back into the **Design phase**, e.g., choosing the most appropriate promoter for desired expression levels.

---

## 🛠️ Tools and Methods

- **Jupyter Notebooks** for analysis and visualization
- **Python**: NumPy, pandas, matplotlib, SciPy
- **Modeling**: ODEs or steady-state functions
- **Optimization**: curve fitting and parameter estimation using libraries like `lmfit` or `scipy.optimize`

---

## 🔄 Importance of Calibration in the Test Phase

Before any Learn-stage analysis, it is essential that:

- Fluorescence values are converted from **Arbitrary Units (AU)** to **MEFL** using fluorescein standards
- OD600 values are converted to **cell counts** using silica microspheres
- Data meets **validation criteria**, including positive/negative control behavior and replicate quality

These calibrations ensure your analysis is **quantitative**, **comparable across labs**, and **biologically meaningful**.

---

## 🧠 The Role of Learn in Synthetic Biology

The Learn phase transforms **data into knowledge**. It closes the engineering loop by feeding conclusions and models back into the next Design. Without the Learn stage, engineering in biology becomes trial-and-error rather than an informed process.

This phase is also foundational for building **predictive biology**, where we can simulate how a design will perform — before even constructing it.


