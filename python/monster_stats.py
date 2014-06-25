import re
import os
import util

header = "\t//*******************\n\t// name\n\t//*******************\n"

header += "\tset m = AbstractMonster.create(name, family, 30, 10)\n"

header += "\t//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP\n"

header += "\tcall m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)\n"

header += "\tcall m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)\n"

header += "\tcall m.setAbilities(0, 1, 2)\n"

header += "\tset AbstractMonsterTable[m.index] = m\n"

getFamily = re.compile(r'(?<="unam", )[A-Z_]+')

getName = re.compile(r'(?<="properNames", ")[a-z ]+', re.IGNORECASE)

insert = util.find("monsters_insert.j", util.root)

w = open(insert, 'r')

t = w.read()

l = getFamily.findall(t)

r = getName.findall(t)

r = [x[:-1] for x in r]

w.close()

mDir = util.find("abstract_monster_merge", util.root)

for x in range(0, len(l)):
               famName = l[x]
               monName = r[x]
               monName = monName.replace(" ", "_")
               path = os.path.join(mDir, famName.lower())
               if not os.path.exists(path):
                   os.mkdir(path)
               w = open(os.path.join(path, monName.lower() + ".j"), 'w')
               newHeader = header
               newHeader = newHeader.replace("name", monName.upper())
               newHeader = newHeader.replace("family", famName)
               print>>w, newHeader
               w.close()


