JEMDOC=./jemdoc.py
WEBSITE=../
PAPERS=../papers/
CSS=./css/*

SRC=$(find ./${1} -maxdepth 1 -name "*.jemdoc")

for f in ${SRC}; do
  base=`basename -s .jemdoc ${f}`
	python ${JEMDOC} ./${1}/${base}.jemdoc
	mv ./${1}/${base}.html ../${1}
	cp -r ${CSS} ../${1}
done
