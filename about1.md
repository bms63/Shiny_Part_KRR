
### Introduction
This Shiny App was designed to help me understand and then demonstrate the power of kernel methods for linear regression.  Traditional Linear Regression has a difficult time modeling non-linear data. Kernel regualrized least squares (KRLS) is a method that allows us to model non-linear data with linear tools.  The power of KRLS lies in the kernel function where the data is projected into higher dimension in order to use our well-understood linear modeling tools.  However, studying these projections can be difficult and so we rely on the "kernel trick" to allow us just study the inner products of the observations.
                         
          
### KRLS algorithm

1.  Please see Resources slides for thorough explanation of Algorithm  
2.  A gaussian kernel, with a sigma value of your choosing, finds the inner products between each observation creating the kernel matrix
3.  Kernel matrix is used in the construction of the learner for the algorithm
4.  In order to allow the inverse to found in the learner a lambda value must be choosen, similar to Ridge Regression.

### Steps to use the App

Data has been simulated data from cos(x)+sin(x) curve.  

1.  Click tab marked y=cos(x)+sin(x)
2.  Move the sliders to find the optimal lambda and sigma values
3.  Algorithm is fitting a new model based on your choice of values.
4.  Click the checkbox to display the optimal lambda and sigma pair.
                        
### Resources

The code for this Shiny App is available in this [GitHub Repository](https://github.com/bms63/Shiny_Part_KRR)

For more information on KRLS check out these [lectures slides](http://homepages.rpi.edu/~bennek/class/mds/lecture/lecture6-06.pdf)
                        