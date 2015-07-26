library(shiny)

shinyUI(fluidPage(
  titlePanel("Smoking, Alcohol and (O)esophageal Cancer"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Select an age group, total alcohol and tobacco consumption."),
      
      selectInput("age", label = "Age Group (years)",
                  choices = list("25-34",
                                 "35-44",
                                 "45-54",
                                 "55-64",
                                 "65-74",
                                 "75+"),
                  selected = "25-34"),
      
      selectInput("alcohol", label = "Alcohol Consumption (g/day)",
                  choices = list("0-39g/day",
                                 "40-79",
                                 "80-119",
                                 "120+"),
                  selected = "0-39g/day"),
      
      selectInput("tobacco", label = "Tobacco Consumption (g/day)",
                  choices = list("0-9g/day",
                                 "10-19",
                                 "20-29",
                                 "30+"),
                  selected = "0-9g/day")
    ),
    
    mainPanel(
            h1("Introduction"),
            p("What is the ratio of people with esophageal cancer versus a control group given the average alcohol and tobacco consumption of a particular age group?"),
            p("The followin is a simplistic formulae based on Breslow et. al. Statistical Methods in Cancer Research (1980) data found in the R datasets library"),
            br(),
            h1("The Data and Instructions"),
            p("The data consists of records for 88 age/alcohol/tobacco combinations."),
            p("You can select the age/alcohol/tobacco sub-group on the sidebar,"),
            p("The formula below will calculate the ratio based on your selections"),
            br(),
            h2("Some additional things to notes"),
            p("* The higher the ratio (i.e. closer to 1), the higher the ratio of esophageal cancer"),
            p("* The data does show that high consumption of BOTH alcohol and tobacco increases the risk of esophageal cancer"),
            p("* Esophageal Cancers are higher in the older age group"),
            p("* Some data are missing for some age groups in the dataset and will return 'NaN'"),
            br(),
            textOutput("text1"))
  )
))
