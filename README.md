For this analysis I used the .csv data for experiment 2

<#Question 1:> 

This is an analysis of population growth of Escherichia coli that has been suspended in 100μl of growth medium. The E. coli will be added to an additional 900μl of the same growth medium to give an even 1ml total volume. Due to plentiful resources for growth, the E. coli will begin multiplying from their initial population size (N0), at an intrinsic growth rate (r), once exceeding the lag and exponential phases of growth, the population will begin exhausting it's resources causing the population growth rate to decrease. The population will then plateau at it's maximal viable population size given the resource availability, this being the carrying capacity (K). The analysis aims to estimate these values (N0, r, K) from experimental data by modelling the changes in population size throughout this period. The model in question is shown below which relates the population size at time t N(t) to N0, r and K:



N(t) = (K)(N0)(e^rt) / K - N0 + (N0)(e^rt)



Step 1: Finding N0 and r (K>>N0, r is small)

Assuming K is much larger than N0 and r is small, the model at the initial points can be approximated to N(t) = (N0)(e^rt). This demonstrates that when K is much larger than N0, and r is small the population will grow exponentially.

Using the data from experiment2.csv, the value for N0 was 1916.906 (3 dp), the value for r was 0.03 (3dp). This means the starting population of bacteria was estimated to be approximately 1917 and the initial growth rate was 0.03. Despite being a low value, an initial growth rate of 0.03 is still positive and can indicate explosive population growth. 

Step 2: Finding K (t tends to infinity and N(t) tends to K)

Assuming t tends to infinity and N(t) will tend towards the carrying capacity (K) The equation can be simplified to N(t) = K. Performing this analysis for experiment2.csv shows that K is apprimately equal to 1.000e+9, (1 billion).

Question 2:

Assuming that the population grows exponentially, how does this compare to the estimates for logistic growth. Using the estimates calculated for N0 (1917) and initial growth rate (0.03), then at time t = 4980 minutes, the population could have grown to a size of 6.72019e+68. This value is huge in comparison to the value for the logistic growth curve at this time (1e+9). In fact the exponential population value is  6.72019e+59 times larger than the logistic value.

Question 3:

![Screenshot 2023-12-04 at 16 44 41](https://github.com/user39201/logistic_growth/assets/150145166/3501801a-5b88-48ba-b9e4-67cee007edfd)
