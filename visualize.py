from Data import Data
import numpy as np
from matplotlib import pyplot as plt
data = Data("zh_redive_master_db_diff-master")
x = []
at = []
ub = []
buf = []
c = []
ubc = []
bufc = []
bufx = []
m = []
bufm = []
with open(".\\record\\record170344.txt", "r") as f:
    lines = f.readlines()
    for line in lines:
        a = line.strip().split()
        if(a[0]=='O'):
            at.append(float(a[8]))
            stage = int(a[3])
            step = int(a[4])
            id = a[2]
            act = data.unit_list[id]['atk_pattern'][stage][step]
            if(act=='1'):
                c.append('r')
            elif(act=='1001'):
                c.append('g')
            else:
                c.append('b')
            ub.append(float(a[7])/1000.0*4.0)
            ubc.append('y')
            m.append(',')
            x.append(int(a[1]))
        else:
            for i in range(1000):
                buf.append(5.0/500.0*i)
                bufx.append(int(a[1]))
                bufc.append('black')
                m.append('|')
lastC = ''
nowC = c[0]
for i in range(len(at)-2):
    index = i+1
    if(at[index]==at[i]==at[index+1] and lastC!=''):
        c[index] = lastC
    if(c[index]!=nowC):
        lastC = nowC
        nowC = c[index]
for i in range(len(at)-2):
    index = i+1
    if(c[index+1]==c[i] and c[index]!=c[i]):
        c[index] = c[i]
at.extend(ub)
at.extend(buf)
c.extend(ubc)
c.extend(bufc)
x.extend(x)
x.extend(bufx)
m.extend(m)
m.extend(bufm)
at = np.array(at)
plt.scatter(x, at, s=0.3, color=c, marker=',', linewidths=0)
plt.ylim(0, 5)
plt.savefig(".\\record\\record" + '.png', bbox_inches='tight', pad_inches=0, dpi=600)
