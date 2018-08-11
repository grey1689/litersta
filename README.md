
See full project here: https://litersta.com

<a href="url"><img src="https://github.com/grey1689/litersta/blob/master/litersta/static/images/Logo.png?raw=true" align="left" height="40%" width="40%" ></a>

Complete application code is not loaded to this repository.<br>
Significate coding loops are displayed.<br>
<br>
<br>
<br>
<br>
<hr>
Similarity Scoring
<br>
for file in filelist:
                    f = open(file, "r")
                    lines = [line.strip() for line in f.readlines()]
                    #docu = glob.glob(mypath+ '\\*')
                    exemp = glob.glob(mypath2+ '\\*')
                    for exe in exemp:
                    	f2 = open(exe, "r")
                    	lines2 = [line.strip() for line in f2.readlines()]
                    	print(file,exe,cosine_sim(str(lines2),str(lines)))
                    	score0=cosine_sim(str(lines2),str(lines))
                    	score = round(100*score0)
                      cur = conn.cursor()
                      cur.execute("INSERT INTO litersta.scores (Document, Exemplar, Score) VALUES ('"+str(os.path.basename(file))+"','"+str(os.path.basename(exe))+"','"+str(score)+"');")
                      conn.commit()
