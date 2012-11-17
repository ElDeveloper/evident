# QIIME hash 36cbf1f404725a307266a4379e951f446ca09f62
# current working directory: /Users/yoshiki/evident-data

# evident data directory
EVIDENTDD='/Users/yoshiki/evident-data/'

echo "hmp 35 rarification ..."
single_rarefaction.py -i ${EVIDENTDD}hmp-v35.biom -o ${EVIDENTDD}hmp-v35_1k.biom -d 1000

echo "#hmp 35" > parameters.txt
echo "make_rarefaction_plots:output_dir hmp-v35_arare/arp_stderr" >> parameters.txt
echo "make_rarefaction_plots:std_type stderr" >> parameters.txt
echo "make_rarefaction_plots:output_type memory" >> parameters.txt
echo "make_rarefaction_plots:colorby HMPbodysubsite,sex,visitno" >> parameters.txt

echo "hmp 35 stderr ..."
alpha_rarefaction.py -i ${EVIDENTDD}hmp-v35_1k.biom -m ${EVIDENTDD}hmp-v35_map.txt -o ${EVIDENTDD}hmp-v35_arare -t ${EVIDENTDD}gg_97_otus_4feb2011.tre -aO 8 -e 1000 -n 5 --min_rare_depth 200 -p parameters.txt

echo "hmp 35 stddev ..."
make_rarefaction_plots.py -i hmp-v35_arare/alpha_div_collated/ -m ${EVIDENTDD}hmp-v35_map.txt -o hmp-v35_arare/arp_stddev --output_type='memory' --std_type=stddev --colorby='HMPbodysubsite,sex,visitno'


echo "hmp 13 rarification ..."
single_rarefaction.py -i ${EVIDENTDD}hmp-v13.biom -o ${EVIDENTDD}hmp-v13_1k.biom -d 1000

echo "#hmp 13" > parameters.txt
echo "make_rarefaction_plots:output_dir hmp-v13_arare/arp_stderr" >> parameters.txt
echo "make_rarefaction_plots:std_type stderr" >> parameters.txt
echo "make_rarefaction_plots:output_type memory" >> parameters.txt
echo "make_rarefaction_plots:colorby HMPbodysubsite,sex,visitno" >> parameters.txt

echo "hmp 13 stderr ..."
alpha_rarefaction.py -i ${EVIDENTDD}hmp-v13_1k.biom -m ${EVIDENTDD}hmp-v13_map.txt -o ${EVIDENTDD}hmp-v13_arare -t ${EVIDENTDD}gg_97_otus_4feb2011.tre -aO 8 -e 1000 -n 5 --min_rare_depth 200 -p parameters.txt

echo "hmp 13 stddev ..."
make_rarefaction_plots.py -i hmp-v13_arare/alpha_div_collated/ -m ${EVIDENTDD}hmp-v13_map.txt -o hmp-v13_arare/arp_stddev --output_type='memory' --std_type=stddev --colorby='HMPbodysubsite,sex,visitno'

echo "keyboard rarification ..."
single_rarefaction.py -i ${EVIDENTDD}keyboard.biom -o ${EVIDENTDD}keyboard_1k.biom -d 1000

echo "#keyboard" > parameters.txt
echo "make_rarefaction_plots:output_dir keyboard_arare/arp_stderr" >> parameters.txt
echo "make_rarefaction_plots:std_type stderr" >> parameters.txt
echo "make_rarefaction_plots:output_type memory" >> parameters.txt
echo "make_rarefaction_plots:colorby AGE_IN_YEARS,ANONYMIZED_NAME,BODY_SITE,COMMON_NAME,Description,HOST_SUBJECT_ID,POOL_MEMBER_NAME" >> parameters.txt

echo "keyboard stderr ..."
alpha_rarefaction.py -i ${EVIDENTDD}keyboard_1k.biom -m ${EVIDENTDD}keyboard_map.txt -o ${EVIDENTDD}keyboard_arare -t ${EVIDENTDD}gg_97_otus_4feb2011.tre -aO 8 -e 1000 -n 5 --min_rare_depth 200 -p parameters.txt

echo "keyboard stddev ..."
make_rarefaction_plots.py -i keyboard_arare/alpha_div_collated/ -m ${EVIDENTDD}keyboard_map.txt -o keyboard_arare/arp_stddev --output_type='memory' --std_type=stddev --colorby='AGE_IN_YEARS,ANONYMIZED_NAME,BODY_SITE,COMMON_NAME,Description,HOST_SUBJECT_ID,POOL_MEMBER_NAME'


echo "turnbaugh-twins rarification ..."
single_rarefaction.py -i ${EVIDENTDD}turnbaugh-twins.biom -o ${EVIDENTDD}turnbaugh-twins_1k.biom -d 1000

echo "#turnbaugh-twins" > parameters.txt
echo "make_rarefaction_plots:output_dir turnbaugh-twins_arare/arp_stderr" >> parameters.txt
echo "make_rarefaction_plots:std_type stderr" >> parameters.txt
echo "make_rarefaction_plots:output_type memory" >> parameters.txt

echo "turnbaugh-twins stderr ..."
alpha_rarefaction.py -i ${EVIDENTDD}turnbaugh-twins_1k.biom -m ${EVIDENTDD}turnbaugh-twins_map.txt -o ${EVIDENTDD}turnbaugh-twins_arare -t ${EVIDENTDD}gg_97_otus_4feb2011.tre -aO 8 -e 1000 -n 5 --min_rare_depth 200 -p parameters.txt

echo "turnbaugh-twins stddev ..."
make_rarefaction_plots.py -i turnbaugh-twins_arare/alpha_div_collated/ -m ${EVIDENTDD}turnbaugh-twins_map.txt -o turnbaugh-twins_arare/arp_stddev --output_type='memory' --std_type=stddev


echo "wholebody rarification ..."
single_rarefaction.py -i ${EVIDENTDD}wholebody.biom -o ${EVIDENTDD}wholebody_1k.biom -d 1000

echo "#wholebody" > parameters.txt
echo "make_rarefaction_plots:output_dir wholebody_arare/arp_stderr" >> parameters.txt
echo "make_rarefaction_plots:std_type stderr" >> parameters.txt
echo "make_rarefaction_plots:output_type memory" >> parameters.txt
echo "make_rarefaction_plots:colorby BODY_HABITAT,BODY_SITE,COMMON_SAMPLE_SITE,Description_duplicate,SEX,Description" >> parameters.txt

echo "wholebody stderr ..."
alpha_rarefaction.py -i ${EVIDENTDD}wholebody_1k.biom -m ${EVIDENTDD}wholebody_map.txt -o ${EVIDENTDD}wholebody_arare -t ${EVIDENTDD}gg_97_otus_4feb2011.tre -aO 8 -e 1000 -n 5 --min_rare_depth 200 -p parameters.txt

echo "wholebody stddev ..."
make_rarefaction_plots.py -i wholebody_arare/alpha_div_collated/ -m ${EVIDENTDD}wholebody_map.txt -o wholebody_arare/arp_stddev --output_type='memory' --std_type=stddev --colorby='BODY_HABITAT,BODY_SITE,COMMON_SAMPLE_SITE,Description_duplicate,SEX,Description'
