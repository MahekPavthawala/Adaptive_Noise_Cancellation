# Adaptive_Noise_Cancellation
Adaptive Noise Cancellation is done on MATLAB with LMS &amp; NLMS algorithm. The Algorithm is adapted with weights of the each output sequence and updated as the filter order grows.

## About
This project explains with the implementation and performance evaluation of adaptive filtering algorithms for noise cancellation without reference signal. Noise cancellation is a technique of estimating a desired signal from a noise corrupted observation. If the signal and noise characteristics are unknown or change continuously over time, the need of adaptive filter arises. In contrast to the conventional digital filter design techniques, adaptive filters do not have constant filter parameters, they have the capability to continuously adjust their coefficients to their operating environment. To design an adaptive filter, that produces an optimum estimate of the desired signal from the noisy environment, different adaptive filtering algorithms are implemented and compared to each other. The Least Mean Square (LMS), the Normalized Least Mean Square (NLMS) and the Recursive Least Square (RLS) algorithms are investigated. Three performances criteria are used in the study of these algorithms: the rate of convergence, the error performance, and the signal-to-noise ratio SNR. The implementation results show that the adaptive noise cancellation application benefits more from the use of the NLMS algorithm instead of the LMS or the RLS.

## Requirements:

MUST need MATLAB 2015a or greater version with DSP-Communication Toolbox and Visualization Toolbox
Also, one can use the online MATLAB available.

**Note=** To use MATLAB, one might have to use institutional login or might have to work with free trial.

I advise to use the book of the Monson H. Hayes for the reference with the codes and the explaination. See <a href= 'https://bcs.wiley.com/he-bcs/Books?action=index&itemId=0471594318&bcsId=3698'> Statistical Digital Signal Processing and Modeling </a> for the more information.

## License:

Distributed under the GNU License. See <a href = "https://github.com/MahekPavthawala/Adaptive_Noise_Cancellation/blob/main/LICENSE"> LICENSE </a> for more information.

