---
author:
- Marco A. Aquino-López^[Maynooth University]
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


# What is Plum?

* Plum is a Bayesian age-depth model for $^{210}Pb$
* It is a tool which allow us to obtained integrated chronologies without the need of pre-modelling $^{210}Pb$ dates.
* It is just simple and cool.

**What differenciates Plum from other 210Pb dating methods?**

# CRS 

\begin{center}
\begin{tabular}{p{7.51cm}p{2.51cm}}
This model assumes a constant rate of supply of 210Pb to the sediment in the period of interest.
$$t(x) = \frac{1}{\lambda}\log\left( \frac{A_0}{A_x} \right)$$ Appleby \& Oldfield (1979) \; Robbins (1979)   & \begin{minipage}{0.85\textwidth}\includegraphics[width=2.5cm]{./img/Core_CRS.png} \end{minipage}
\end{tabular}
\end{center}

# Plum flexible age-depth function

\begin{center}
\begin{tabular}{p{7.51cm}p{2.51cm}}
On the other hand, {\itshape Plum} works by implementing a statistical approach to creating the chronology. {\itshape Plum} defines the toral measured $^{210}Pb$ as $$y_i\sim \mathcal{N}\left(\mu_i^s +\mu_i^U \right)$$  & \begin{minipage}{0.5\textwidth}\includegraphics[width=2.5cm]{./img/Core_Plum.png} \end{minipage}
\end{tabular}
\end{center}


# Plum flexible age-depth function

\begin{center}
\begin{tabular}{p{7.51cm}p{2.51cm}}
Where $\mu_i^s$ is the "true" levels of supported $^{210}Pb$ and $\mu_i^u$ the unsupported levels in sample $y_i$. By assuming a constant supply of $^{210}Pb$ ($\Phi$) we get that, $$\mu_i^u = \frac{\Phi}{\lambda} \left(e^{-\lambda t(x_i-\delta)}- e^{-\lambda t(x_i)} \right) $$ & \begin{minipage}{0.85\textwidth}\includegraphics[width=2.5cm]{./img/Core_Plum.png} \end{minipage}
\end{tabular}
\end{center}
\cite{Appleby1978}
# Plum flexible age-depth function

Function $t(x)$ is define as the autoregressive gamma process presented by Blaauw & Christen (2011) also known as _Bacon_.

\includemovie{1cm}{1cm}{./img/animasin.gif}

# Plum uses an MCM

visit: [Plum's Simulation animation](https://raw.githubusercontent.com/maquinolopez/PAGES-ECR-rPlum-/master/Presentation/img/animasin.gif)

# Benefits of _Plum_

1. Accurate age depth model
2. Realistic uncertainties
3. It is a Bayesian approach
4. Native integration of other dating information

# Benefits of _Plum_
## Accuracy 
\centering
\includegraphics[width=6.7cm]{./img/Simulation_paper.png}


# Benefits of _Plum_
## Realistic uncertainties
\centering
\includegraphics[width=7cm]{./img/SAMO14_2.png}



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

Plum on the other hand, has a dynamic age-limit which takes into account several factors and it is define as:

$$t_l= \frac{1}{\lambda}\log\left(\frac{\Phi}{A_l\lambda} \right)$$

$\Phi$ is the influx of $^{210}Pb$ to the site, and $A_l$ is the unobserved $^{210}Pb$. 


# Chronolgy limit
## Limit under simulations.
\centering
\includegraphics[width=7cm]{./img/SAMO14_2.png}

# Chronolgy limit
What happens when we have full data and remove the age limit.
\centering
\includegraphics[width=6.3cm]{./img/Absurde age-depth limit.png}


# Plum and sampling

\centering
\includegraphics[width=9.5cm]{./img/Chrono_ssize.png}

# Plum and sampling
\centering
\includegraphics[width=9.5cm]{./img/Chrono_ssize_dif.png}


# Plum on different scenarios 
\centering
\includegraphics[width=7.5cm]{./img/Sampling.png}

# Thank you
\centering
Thank you












