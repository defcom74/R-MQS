OpenCPU App: R-MQS
-------------------

PLot the Histogram Chart for a data vector, also calculate the CPK values :


    #load the docker container
    #eter to the docker container
    docker exec -it <conteiner> bash
    
    #In R
    library(devtools)
    install_github("defcom74/R-MQS")

    #load the app
    library(opencpu)
    opencpu$browse("library/R-MQS")

Use the same function locally:

    

For more information about OpenCPU apps, see [opencpu.js](https://github.com/jeroenooms/opencpu.js#readme)

