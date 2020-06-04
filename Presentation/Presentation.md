---
author:
- Marco A. Aquino-López^[Maynooth University]
email:
- marco.aquinolopez@mu.ie
title:
- rPlum fechado con plomo para el usuario común.  
subtitle:
- rPlum lead dating for the common user
theme:
- Antibes
header-includes:
   \usepackage{graphicx}
   \usepackage{fancyhdr}
   \usepackage{tabularx}
   \usepackage{lipsum}
   \usepackage{movie15}
   \pagestyle{fancy}
   \setlength\headheight{36pt}
   \fancyhead[R]{\includegraphics[height=1.1cm]{./img/MUlogo.png}}
   \fancyfoot[LE,RO]{GPIM}
---


# What is _Plum_?

* _Plum_ is a Bayesian age-depth model for $^{210}Pb$
* It is a tool which allow us to obtained integrated chronologies without the need of pre-modelling $^{210}Pb$ dates.
* It is just simple and cool.

**What differenciates _Plum_ from other 210Pb dating methods?**

# CRS 

\begin{center}
\begin{tabular}{p{7.51cm}p{2.51cm}}
This model assumes a constant rate of supply of 210Pb to the sediment in the period of interest.
$$t(x) = \frac{1}{\lambda}\log\left( \frac{A_0}{A_x} \right)$$ Appleby \& Oldfield (1979) \; Robbins (1979)   & \begin{minipage}{0.85\textwidth}\includegraphics[width=2.5cm]{./img/Core_CRS.png} \end{minipage}
\end{tabular}
\end{center}

# _Plum_ flexible age-depth function

\begin{center}
\begin{tabular}{p{7.51cm}p{2.51cm}}
On the other hand, {\itshape Plum} works by implementing a statistical approach to creating the chronology. {\itshape Plum} defines the toral measured $^{210}Pb$ as $$y_i\sim \mathcal{N}\left(\mu_i^s +\mu_i^U \right)$$  & \begin{minipage}{0.5\textwidth}\includegraphics[width=2.5cm]{./img/Core_Plum.png} \end{minipage}
\end{tabular}
\end{center}


# _Plum_ flexible age-depth function

\begin{center}
\begin{tabular}{p{7.51cm}p{2.51cm}}
Where $\mu_i^s$ is the "true" levels of supported $^{210}Pb$ and $\mu_i^u$ the unsupported levels in sample $y_i$. By assuming a constant supply of $^{210}Pb$ ($\Phi$) we get that, $$\mu_i^u = \frac{\Phi}{\lambda} \left(e^{-\lambda t(x_i-\delta)}- e^{-\lambda t(x_i)} \right) $$ & \begin{minipage}{0.85\textwidth}\includegraphics[width=2.5cm]{./img/Core_Plum.png} \end{minipage}
\end{tabular}
\end{center}
\cite{Appleby1978}
# _Plum_ flexible age-depth function

Function $t(x)$ is define as the autoregressive gamma process presented by Blaauw & Christen (2011) also known as _Bacon_.

\includemovie{1cm}{1cm}{./img/animasin.gif}

# _Plum_ uses an MCMC

visit: [Plum's Simulation animation](https://raw.githubusercontent.com/maquinolopez/PAGES-ECR-rPlum-/master/Presentation/img/animasin.gif)

# Benefits of _Plum_

1. Accurate age depth model
2. Realistic uncertainties
3. It is a Bayesian approach
4. Native integration of other dating information

# Benefits of _Plum_
## Accuracy

- In order to observer the accuracy of any model, we __CANNOT__ use real cores as we will never be sure of the exact age at any depth
- To observe accuracy we use simulations, which give us data which theoretically replicate the real world but also contain uncertainty. 

# Simulated data
\centering
\includegraphics[width=9.5cm]{./img/Data.png}



# Benefits of plum 
_Figure_

a. It shows an alternating sampling (e.g. 1,3,5,...)
b. The deepest part of the sample was removed
c. The top part of the sample was removed

# Benefits of _Plum_
## Accuracy 
\centering
\includegraphics[width=6.7cm]{./img/Simulation_paper.png}

# Benefits of plum 
## Realistic uncertainties

- This core presents strategic sampling in order to reduce the number of samples which needed to be measured to create a chronology.
- Both the CRS model and _Plum_ are in good agreement but _Plum_ shows a more realistic uncertainty given the number of samples measured

_Site: Santa Maria del Oro, Mexico_

_Cored by Ruiz-Fernandez et al., (2019)_

# Benefits of _Plum_
## Realistic uncertainties
\centering
\includegraphics[width=7cm]{./img/SAMO14_2.png}

# Benefits of _Plum_
## It is a Bayesian approach
- Because plum is a Bayesian approach it allow us to quantify how much the model _learned_ from the data
- It allows for easy integration of other dating sources without the need of pre-modelling 

_Cored by Dr. Nicole Sanderson_

# Benefits of _Plum_
## It is a Bayesian approach
\centering
\includegraphics[width=7cm]{./img/Plum_default2.png}


# Benefits of _Plum_
## Native integration of other dating information
\centering
\includegraphics[width=7cm]{./img/HP1C_C_chrono.png}



# Chronology limit
The age limit of chronologies using $^{210}Pb$ was define by Appleby (1998) as <150 yr. 

This limit was sets a hard bound on any chronology regarles of any particular circumstances. 

_Plum_ on the other hand, has a dynamic age-limit which takes into account several factors and it is define as:

$$t_l= \frac{1}{\lambda}\log\left(\frac{\Phi}{A_l\lambda} \right)$$

$\Phi$ is the influx of $^{210}Pb$ to the site, and $A_l$ is the unobserved $^{210}Pb$. 


# Chronolgy limit
## Limit under simulations.
\centering
\includegraphics[width=7cm]{./img/SAMO14_2.png}


# Chronolgy limit
## Beyond the age limit
The following simulation presents two factors:

- linear factor (pink)
- cyclic (green)

This simulation was sampled to beyond the equilibrium date (as observed in the data plot). Equilibrium was reached around 16 cm. 
As it can be observed _Plum_ was able to capture the real age function until data reached equilibrium, after this _Plum_ losses the capability of interpreting the cyclic part of the function but almost perfectly replicates the linear part of the model. The uncertainties _Plum_ presents capture the model well until depth 30 where the model does escapes the credible intervals.

_Note: the chronolgy limit was removed from this run to allow plum to interpret data of this nature_



# Chronolgy limit
What happens when we have full data and remove the age limit.
\centering
\includegraphics[width=6.3cm]{./img/Absurde age-depth limit.png}


# _Plum_ and sampling

To observe how _Plum_'s accuracy and precision gets affected by how much data we use, the following is a series of sampling samples from a simulated core (in black) 

This sampling strategies present a well distributed series of samples around the area where unsupported $^{210}Pb$ is available and also at least 4 samples where background was reached.



# _Plum_ and sampling
\centering
\includegraphics[width=9cm]{./img/Chrono_ssize.png}



# _Plum_ and sampling
\centering
\includegraphics[width=9cm]{./img/Chrono_ssize_dif.png}


# _Plum_ and sampling

\centering
\includegraphics[width=9cm]{./img/Chrono_ssize_difsd50.png}

# _Plum_ and sampling
\centering
\includegraphics[width=9cm]{./img/Chrono_ssize_difsd40.png}

# _Plum_ and sampling
\centering
\includegraphics[width=9cm]{./img/Chrono_ssize_difsd30.png}


# Plum and sampling
\centering
\includegraphics[width=9cm]{./img/Chrono_ssize_difsd20.png}


# _Plum_ and sampling
\centering
\includegraphics[width=9cm]{./img/Chrono_ssize_difsd10.png}


# _Plum_ on different scenarios 

To observe and compare _Plum_ in a more realistic scenario, we created 3 different age-depth function and their corresponding simulation as well as sampling techniques. 

This data was put into _Plum_  with default settings (including the decision of how many samples to used for supported $^{210}Pb$. To have a fair comparison these data sets were given to Dr. Nicole Sanderson who performed the _CRS_ model for each simulation and sampling technique.

- We can observed the effect of the logistic age function at the end of every _CRS_ generated chronology.
- _Plum_ tends to provide more conservative uncertainties.

# _Plum_ on different scenarios 
\centering
\includegraphics[width=7.5cm]{./img/Sampling.png}


# Bibliography

- Appleby, P. G. (1998). Dating recent sediments by 210Pb: Problems and solutions. Proc. 2nd NKS/EKO-1 Seminar, Helsinki, 2-4 April 1997, STUK, Helsinki, pages 7–24.

- Aquino-Lopez, M. A., Blaauw, M., Christen, J. A., Sanderson, N. K. (2018). Bayesian analysis of 210Pb dating. Journal of Agricultural, Biological and Environmental Statistics, 23(3), 317-333.

- Ruiz-Fernandez A.C., Sanchez-Cabeza J. A., Hernandez-Rivera D.M., Perez-Bernal L. H., Cardoso-Mohedano J. G. (2019). Historical reconstruction of sediment accumulation rates as an indicator of global change impacts in a tropical crater lake in Mexico. In preparation.

# Thank you
\centering
Thank you







