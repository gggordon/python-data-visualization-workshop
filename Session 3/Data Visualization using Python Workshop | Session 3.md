

```python
import numpy as np # import numpy package as use the alias np
import pandas as pd # import  pandas package as use the alias pd
import matplotlib.pyplot as plt # import pyplot from matplotlib package as use the alias plt
# plot all graphs and images in the notebook
%matplotlib inline 
```


```python
# Before we create a dashboard for our data, let's take another look
data_file='./hr_data.csv' # store path of data file in variable `data_file`
# import data from file into python pandas.DataFrame and store in variable `data`
data = pd.read_csv(data_file) 
data.head(10) # view first 10 records from data frame 
```




<div>
<style>
    .dataframe thead tr:only-child th {
        text-align: right;
    }

    .dataframe thead th {
        text-align: left;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>satisfaction_level</th>
      <th>last_evaluation</th>
      <th>number_project</th>
      <th>average_montly_hours</th>
      <th>time_spend_company</th>
      <th>Work_accident</th>
      <th>left</th>
      <th>promotion_last_5years</th>
      <th>sales</th>
      <th>salary</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>0.38</td>
      <td>0.53</td>
      <td>2</td>
      <td>157</td>
      <td>3</td>
      <td>0</td>
      <td>1</td>
      <td>0</td>
      <td>sales</td>
      <td>low</td>
    </tr>
    <tr>
      <th>1</th>
      <td>0.80</td>
      <td>0.86</td>
      <td>5</td>
      <td>262</td>
      <td>6</td>
      <td>0</td>
      <td>1</td>
      <td>0</td>
      <td>sales</td>
      <td>medium</td>
    </tr>
    <tr>
      <th>2</th>
      <td>0.11</td>
      <td>0.88</td>
      <td>7</td>
      <td>272</td>
      <td>4</td>
      <td>0</td>
      <td>1</td>
      <td>0</td>
      <td>sales</td>
      <td>medium</td>
    </tr>
    <tr>
      <th>3</th>
      <td>0.72</td>
      <td>0.87</td>
      <td>5</td>
      <td>223</td>
      <td>5</td>
      <td>0</td>
      <td>1</td>
      <td>0</td>
      <td>sales</td>
      <td>low</td>
    </tr>
    <tr>
      <th>4</th>
      <td>0.37</td>
      <td>0.52</td>
      <td>2</td>
      <td>159</td>
      <td>3</td>
      <td>0</td>
      <td>1</td>
      <td>0</td>
      <td>sales</td>
      <td>low</td>
    </tr>
    <tr>
      <th>5</th>
      <td>0.41</td>
      <td>0.50</td>
      <td>2</td>
      <td>153</td>
      <td>3</td>
      <td>0</td>
      <td>1</td>
      <td>0</td>
      <td>sales</td>
      <td>low</td>
    </tr>
    <tr>
      <th>6</th>
      <td>0.10</td>
      <td>0.77</td>
      <td>6</td>
      <td>247</td>
      <td>4</td>
      <td>0</td>
      <td>1</td>
      <td>0</td>
      <td>sales</td>
      <td>low</td>
    </tr>
    <tr>
      <th>7</th>
      <td>0.92</td>
      <td>0.85</td>
      <td>5</td>
      <td>259</td>
      <td>5</td>
      <td>0</td>
      <td>1</td>
      <td>0</td>
      <td>sales</td>
      <td>low</td>
    </tr>
    <tr>
      <th>8</th>
      <td>0.89</td>
      <td>1.00</td>
      <td>5</td>
      <td>224</td>
      <td>5</td>
      <td>0</td>
      <td>1</td>
      <td>0</td>
      <td>sales</td>
      <td>low</td>
    </tr>
    <tr>
      <th>9</th>
      <td>0.42</td>
      <td>0.53</td>
      <td>2</td>
      <td>142</td>
      <td>3</td>
      <td>0</td>
      <td>1</td>
      <td>0</td>
      <td>sales</td>
      <td>low</td>
    </tr>
  </tbody>
</table>
</div>




```python
# import flask, this will help us to run a web app
from flask import Flask
```


```python
# This will assist us in generating a simple web dashboard using python
# NB. currently using gleam 0.1.3 available at https://github.com/gggordon/gleam
# Install using
# pip install https://github.com/gggordon/gleam/archive/0.1.3.zip
# import Page and panels from gleam
from gleam import Page, panels
```


```python
#importing packages to assist with creating web components in python
from wtforms import fields
```

Our aim is to to generate a dashboard that will allow persons to choose the data that they would like to view and the type of chart to be used. The dashboard will also allow persons to specify the title.


```python
# We will begin by creating a Dashboard Input class that will contain all our options/inputs
# to be specified
class DashboardInput(panels.InputPanel):
    
    # We will create a StringField/Text box to allow users to specifiy the title
    txtbox_title = fields.StringField(label="Chart Title:")
    
    # We will create a dropdown list to allow the user to specify the field they would 
    # like to inlcude
    ddl_data_column = fields.SelectField(label="Data to be displayed:",
                              # Choices contains a list of tuples (field_name, name displayed)
                              choices=[("sales","Department"),
                                       ("Work_accident","Had Accident at Work"),
                                       ("number_project", "Number of Projects"),
                                       ("average_montly_hours", "Average Monthly Hours")])
    
    # We will create a dropdown list to allow the user to specify the field they would 
    # like to inlcude
    ddl_chart_type = fields.SelectField(label="Chart Type:",
                              # Choices contains a list of tuples (field_name, name displayed)
                              choices=[("pie","Pie Chart"),
                                       ("bar","Bar Chart"),
                                       ("barh", "Horizontal Bar Chart")])
    
    # For more field types and more options/paramters
    # Visit https://wtforms.readthedocs.io/en/latest/fields.html
    
```


```python
# We will create a class to configure how our dashboard is plotted
class DashboardPlot(panels.PlotPanel):

    # Each time the user changes a value or chooses an option our dashboard,
    # The following python method will be called
    # This gives an opportunity to update our plot based on the options
    # specified by the user.
    # The function ends by returning the generated plot
    # This updates the plot/chart that the user sees
    def plot(self, inputs):
        
        # NB. We already imported the data and stored it in the variable data
        # We will extract the column from the data set based on the selected value
        #  stored inside   `inputs.ddl_data_column`
        # We will then count the unique values in the column
        data_to_plot = data[inputs.ddl_data_column].value_counts()
        
        # we will now plot the graph based on the type of plot specified
        
        # We will also check if the user specified a pie chart, if so, we will 
        # add the percentage to using the autopct parameter
        
        if inputs.ddl_chart_type == 'pie':
            fig = data_to_plot.plot.pie(title=inputs.txtbox_title,autopct="%.2f %%")
        else:
            fig = data_to_plot.plot(kind=inputs.ddl_chart_type, title=inputs.txtbox_title)
        
        # We must return the plot when complete
        return fig
```


```python
# We will create another class, that will group our inputs and outputs for our dashboard
# This class will also enable us to run our web dashboard as an application
class MyDashboard(Page):
    input = DashboardInput()
    output = DashboardPlot()
```


```python
# We will run our app using the following code on port 9000

MyDashboard.run(port=9000)
```

     * Running on http://127.0.0.1:9000/ (Press CTRL+C to quit)
    127.0.0.1 - - [29/Oct/2017 19:13:06] "GET / HTTP/1.1" 200 -
    127.0.0.1 - - [29/Oct/2017 19:13:06] "POST / HTTP/1.1" 200 -
    127.0.0.1 - - [29/Oct/2017 19:13:12] "POST / HTTP/1.1" 200 -
    127.0.0.1 - - [29/Oct/2017 19:13:15] "POST / HTTP/1.1" 200 -
    127.0.0.1 - - [29/Oct/2017 19:13:17] "POST / HTTP/1.1" 200 -
    127.0.0.1 - - [29/Oct/2017 19:14:04] "POST / HTTP/1.1" 200 -
    127.0.0.1 - - [29/Oct/2017 19:14:41] "POST / HTTP/1.1" 200 -
    127.0.0.1 - - [29/Oct/2017 19:14:49] "POST / HTTP/1.1" 200 -



![png](output_9_1.png)



```python

```
