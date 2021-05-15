# title: Create tables with CV information
# author: Jose C. Garcia Alanis
# encoding: utf-8
# r version:4.0.3 (2020-10-10) - "Bunny-Wunnies Freak Out"
# date: March 2021

# --- 1) create experience .tsv
# current
a1 <- c('Philipps-Universität Marburg',
       'Research Fellow',
       'Marburg (Germany)',
       'October 2019',
       'Present',
       'Build robust data cleaning and preprocessing pipelines 
       that work reliably across multiple data sets.')
a2 <- c('Philipps-Universität Marburg',
       'Research Fellow', 
       'Marburg (Germany)',
       'October 2019',
       'Present',
       'Optimise statistical analysis, data visualisation, and report process 
       for multiple scientific projects.')

# GSoC
b1 <- c('Python Software Foundation',
        'Google Summer of Code Student Developer', 
        'Remote',
        'May 2019',
        'September 2019',
        'Enhance statistical inference capabilities of the Python package MNE-Python.')

# Montreal
c1 <- c('McConnell Brain Imaging Centre, Montreal Neurological Institute',
        'Visiting Researcher', 
        'Montreal (Canada)',
        'January 2016',
        'April 2016',
        'Multivariate analysis of large clinical data sets (e.g., HCP).')

# Research in Marburg
d1 <- c('Philipps-Universität Marburg',
        'Research and Teaching Assistant', 
        'Marburg (Germany)',
        'October 2014',
        'September 2019',
        'Plan, conduct, and evaluate psychological / neuroscientific experiments (e.g., using EEG).')
d2 <- c('Philipps-Universität Marburg',
        'Research and Teaching Assistant',
        'Marburg (Germany)',
        'October 2014',
        'September 2019',
        'Design study protocols, develop methods to assess compliance and behavioral performnace.')
d3 <- c('Philipps-Universität Marburg',
        'Research and Teaching Assistant', 
        'Marburg (Germany)',
        'October 2014',
        'September 2019',
        'Programming of experiment interfaces, real-time experimental control.')
d4 <- c('Philipps-Universität Marburg',
        'Research and Teaching Assistant', 
        'Marburg (Germany)',
        'October 2014',
        'September 2019',
        'Teaching of undergraduate students (experimental design, data anaylsis plans, data visualisation).')

experience <- data.frame(rbind(a1, a2, 
                               b1,
                               c1,
                               d1, d2, d3, d4))
names(experience) <- c('role', 'company', 'where', 'start_date', 'end_date', 'details')
write.table(experience, file = './data/experience.tsv', sep = '\t', row.names = F)


# --- 2) create education .tsv
ed1 <- c('Philipps-Universität Marburg',
        'Dr. rer. nat. (PhD) in Psychology', 
         'Marburg (Germany)',
         'Jan 2015',
         'Present',
         'Doctoral Thesis: The electrophysiology of individual differences in 
         executive-dependent descision making.')
ed2 <- c('Philipps-Universität Marburg',
         'German Diplom in Psychology (M.Sc. equivalent)', 
         'Marburg (Germany)',
         'October 2008',
         'September 2014',
         'Majors: Clinical psychology, biological and experimental psychology.')

education <- data.frame(rbind(ed1, ed2))
names(education) <- c('degree', 'uni', 'loc', 'start_date', 'end_date', 'details')
write.table(education, file = './data/education.tsv', sep = '\t', row.names = F)


# --- 3) create clinical .tsv
cl1 <- c('Child and Adolescent Psychology, Philipps-Universität Marburg',
         'Scientist-Practicioner (Marburg Model)', 
         'Marburg (Germany)',
         'October 2019',
         'Present',
         'Carry out diagnostics and intervetions within clinical reserach projects.')
cl2 <- c('Dep. of Psychotherapy, Schön Klinik',
         'Clinical Research Intern', 
         'Bad Arolsen (Germany)',
         'May 2014',
         'September 2014',
         'Database and project management.')
cl3 <- c('Dep. of Psychiatry and Psychotherapy, Charité Universitätsmedizin',
         'Clinical Intern', 
         'Berlin (Germany)',
         'September 2013',
         'Dezember 2013',
         'Patient recruitment, diagnostics.')

clinical <- data.frame(rbind(cl1, cl2, cl3))
names(clinical) <- c('role', 'uni', 'loc', 'start_date', 'end_date', 'details')
write.table(clinical, file = './data/clinical.tsv', sep = '\t', row.names = F)


# --- 4) create skills .tsv
an1 <- c('Analytics', 'Statistical modelling')
an2 <- c('Analytics', 'data science')
an3 <- c('Analytics', 'reproducible research')

pr1 <- c('Programming', 'Python (advanced)')
pr2 <- c('Programming', 'R (advanced)')
pr3 <- c('Programming', 'Git (advanced)')
pr4 <- c('Programming', 'MATLAB (advanced)')
pr5 <- c('Programming', 'SQL (intermidiate)')

pk1 <- c('Packages', 'NumPy')
pk2 <- c('Packages', 'Pandas')
pk3 <- c('Packages', 'SciPy')
pk4 <- c('Packages', 'scikit-learn')
pk5 <- c('Packages', 'tidyverse')
pk6 <- c('Packages', 'lme4')

lan1 <- c('Languages', 'German')
lan2 <- c('Languages', 'English')
lan3 <- c('Languages', 'Spanish')

skills <- data.frame(rbind(an1, an2, an3,
                           pr1, pr2, pr3, pr4, pr5,
                           pk1, pk2, pk3, pk4, pk5, pk6,
                           lan1, lan2, lan3))
names(skills) <- c('category', 'skill')
write.table(skills, file = './data/skills.tsv', sep = '\t', row.names = F)
