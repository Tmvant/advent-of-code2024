datafile = './data/day1/puzzle1.txt'
df <- read.csv(file=datafile, header=FALSE, sep=" ")
df = subset( df, select = -V2:-V3)
names(df) <- c('GroupA', 'GroupB')
deltas = df[order(df[,1] ),1] - df[order(df[,2] ),2]
total_difference = sum(abs(deltas))

occurances = table(df$GroupB)
occurances = occurances[as.character(df$GroupA)]
multiplied_occurances = as.integer(names(occurances))*occurances
similarity_score = sum(multiplied_occurances, na.rm=TRUE)

