# Base R Shiny image
FROM rocker/shiny:4.4.1

# Make a directory in the container
RUN mkdir /home/shiny-app

# Install R dependencies
RUN R -e "install.packages(c('dplyr', 'ggplot2', 'gapminder'), \
    repos='https://packagemanager.posit.co/cran/__linux__/jammy/2024-08-01')"

# Copy the Shiny app code
COPY ./shiny-app/app.R /home/shiny-app/app.R

# Expose the application port
EXPOSE 8180

# Run the R Shiny app
CMD Rscript /home/shiny-app/app.R

