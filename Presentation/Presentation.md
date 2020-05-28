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
   \pagestyle{fancy}
   \setlength\headheight{36pt}
   \fancyhead[L]{\includegraphics[height=1.1cm]{./img/MUlogo.png}}
   \fancyfoot[LE,RO]{GPIM}
---


# What is Plum?

* Plum is a Bayesian age-depth model for $^{210}Pb$
* It is a tool which allow us to obtained integrated chronologies without the need of pre-modelling $^{210}Pb$ dates.
* It is just simple and cool.

**What differenciates Plum from other 210Pb dating methods?**

# CRS 
logaritmic age-depth function.

\begin{center}
\begin{tabular}{p{7.51cm}p{2.51cm}}
This model assumes a constant rate of supply of 210Pb to the sediment in the period of interest.
$$t(x) = \frac{1}{\lambda}\log\left( \frac{A_0}{A_x} \right)$$ Appleby \& Oldfield (1979) \; Robbins (1979)   & \begin{minipage}{0.85\textwidth}\includegraphics[width=2.5cm]{./img/Core_CRS.png} \end{minipage}
\end{tabular}
\end{center}

# Plum flexible age-depth function

\begin{center}
\begin{tabular}{p{7.51cm}p{2.51cm}}
On the other hand, {\itshape Plum} works by implementing a statistical approach to creating the chronology. {\itshape Plum} defines the toral measured $^{210}Pb$ as $$y_i\sim \mathcal{N}\left(\mu_i^s +\mu_i^U \right)$$  & \begin{minipage}{0.85\textwidth}\includegraphics[width=2.5cm]{./img/Core_Plum.png} \end{minipage}
\end{tabular}
\end{center}


# Plum flexible age-depth function

\begin{center}
\begin{tabular}{p{7.51cm}p{2.51cm}}
Where $mu_i^s$ is the "true" levels of supported $^{210}Pb$ and $\mu_i^u$ the unsupported levels in sample $y_i$. By assuming a constant supply of $^{210}Pb$ ($\Phi$) we get that, $$\mu_i^u = \frac{\Phi}{\lambda} \left(e^{-\lambda t(x_i-\delta)}- e^{-\lambda t(x_i)} \right) $$ & \begin{minipage}{0.85\textwidth}\includegraphics[width=2.5cm]{./img/Core_Plum.png} \end{minipage}
\end{tabular}
\end{center}

# Plum flexible age-depth function

Function $t(x)$ is define as the autoregressive gamma process presented by Blaauw & Christen (2011) also known as _Bacon_.

# Benefits of _Plum_

1. 
