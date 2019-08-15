# Picogreen analysis

## Purpose
Convert raw absorbance values with standards and samples into concentration values.

## Input
- Input csv file: File path to file that contains raw absorbance values and standard concentrations. Feel free to use the provided sample csv file as a template. Be sure to add sample names and absorbances. Standards must be labeled as "STD1", "STD2", etc. Concentrations of standards (in ng/ul) can be changed as needed.

- Output csv file: File path to save results

- Dilution factor: Default is 1:100 (aka 1ul sample in 99ul of 1X TE)

## Output
- Graph of standard curve
- CSV file of calculated concentrations in ng/ul.
