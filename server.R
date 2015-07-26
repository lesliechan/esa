# server.R
library(datasets)

shinyServer(function(input, output) {

        output$text1 <- renderText({
                selection <- ( esoph[,1]==input$age &
                               esoph[,2]==input$alcohol &
                               esoph[,3]==input$tobacco )
                paste("The ratio of cases:control is", 
                      mean(esoph[selection,4])/mean(esoph[selection,5]))
        })

})
