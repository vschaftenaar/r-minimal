options(java.parameters = "-Xmx8g")
options(scipen = 999)

# make sure the inputs from the .bat can be read
args <- commandArgs(trailingOnly = TRUE)

message(args[1])

.root <- getwd()

# load environment
.libPaths(file.path(.root,'env','lib'))


# load configuration
.config <- yaml::read_yaml(file.path(.root,'config.yml'))

.app.folder <- file.path(.root,'src','app')

# IP configuration
.ipPort=sample(c(1000:65535))[1]

.ip <- gsub(".*? ([[:digit:]])", "\\1", system("ipconfig", intern=T)[grep("IPv4", system("ipconfig", intern = T))])
.ip <- '127.0.0.1' #local host



# run app -----------------------------------------------------------------
shiny::runApp(appDir = .app.folder,port = .ipPort,launch.browser = shell(paste0('start msedge --app=http://',.ip,':',.ipPort)))
