# Jordan Pappas, Andrew Boslett, Elaine Hill, Alina Denham, Meredrith Adams
# University of Rochester Medical Center, Hill Lab for Health Economics
# jordan.pappas@rochester.edu



# (7) Variation in age, sex, race, and ethnicity of decedents from both types of deaths vary from 1999-2018. 





# Import data

all_deaths <- readRDS("Opioids_CCs/Scratch/Deaths_with_F1_code.rds")
overdose_deaths <- readRDS("Opioids_CCs/Scratch/Overdoses.rds")



# Clean data

  # all_deaths

    # Group by year and aggregate by mean of race
    all_deaths %>% 
      group_by(year) %>% 
      summarise_at(vars(black, hispanic, indian, white, female), funs(mean(., na.rm = TRUE))) %>% 
      ungroup() -> summary_disorders
    
    # Format data-long
    summary_disorders %>% 
      select(year, black, indian, white, hispanic, female) %>% 
      gather(variable, value, -year) %>% 
      mutate(variable = str_to_title(variable)) -> summary_disorders_long
    
    summary_disorders_long %<>% mutate(variable = factor(variable, levels = c('White', 'Black', 'Indian', 'Hispanic', 'Female')))
    summary_disorders_long %<>% mutate(death_type = 'Drug-Related Disorders')

  # overdose_deaths

    # Group by year and aggregate by mean of race
    overdose_deaths %>% 
      group_by(year) %>% 
      summarise_at(vars(black, hispanic, indian, white, female), funs(mean(., na.rm = TRUE))) %>% 
      ungroup() -> summary_overdose
    
    # Format data-long
    summary_overdose %>% 
      select(year, black, indian, white, hispanic, female) %>% 
      gather(variable, value, -year) %>% 
      mutate(variable = str_to_title(variable)) -> summary_overdose_long
    
    summary_overdose_long %<>% mutate(variable = factor(variable, levels = c('White', 'Black', 'Indian', 'Hispanic', 'Female')))
    summary_overdose_long %<>% mutate(death_type = 'Drug Overdose')


    
# Bind data

temp <- bind_rows(summary_disorders_long,summary_overdose_long)



# Plot data

png('Opioids_CCs/Figures/Figure_(7)_1.png',width=600,height=600)

race_plot <- ggplot(data = temp, aes(x = year, y = value, colour = variable, linetype = death_type)) + 
  geom_point() + geom_line() + theme_classic() + 
  labs(x = 'Year', y = '% of drug overdoses') + 
  scale_colour_manual(values=c("#999999", "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2", "#D55E00", "#CC79A7","#000000")) +
  theme(legend.justification=c(1,1), legend.position=c(1,0.8)) + theme(legend.title=element_blank())

race_plot

dev.off()




