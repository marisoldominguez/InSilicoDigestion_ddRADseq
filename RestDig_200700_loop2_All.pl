#!/usr/bin/perl
use strict;
use warnings;
use Try::Tiny qw(try catch);

use RestrictionDigest;
	my $double_digest=RestrictionDigest::SingleItem::Double->new();
	
	my $file_name = 'lista_enzimas_reduced_ed_commas.txt';
    open my $FILE, '<', $file_name or die "ERROR: Could not open file $!";
#Loop for reading the file and putting content in an array  
    my @array = ();
        while (my $line = <$FILE>){
        chomp $line;
        push @array, $line;
    }
    
#    print "$array[0]\n";
#    print "$array[1]\n";
#    print "$array[2]\n";
#     print "$#array"; #size of array
##    my $filesize = -s "lista_enzimas_reduced_ed2.txt";
##    print "Size: $filesize\n";
    close ($FILE);
    
   my $count= 0; 
   
   my $size = "$#array";
   for (my $i=0;$i<$size;$i++){
   #chomp $array;
   my @fields = split(',',"$array[$i]");
    for (my $j=$i+1;$j<$size;$j++){
        #chomp $array;
        my @fields2 = split(',',"$array[$j]");
        
        $double_digest->add_ref(-reference =>'/mnt/middleage/evo/mdominguez/RestrictionDigest-master/GCF_000277835.1_GeoFor_1.0_genomic.fasta');
        
        $double_digest->new_enzyme(-enzyme_name=>'AsiSI', -recognition_site =>'GCGAT|CGC');
        $double_digest->new_enzyme(-enzyme_name=>'BfaI', -recognition_site =>'C|TAG');
        $double_digest->new_enzyme(-enzyme_name=>'BglII', -recognition_site =>'A|GATCT');
        $double_digest->new_enzyme(-enzyme_name=>'BmtI', -recognition_site =>'GCTAG|C');
        $double_digest->new_enzyme(-enzyme_name=>'BspDI', -recognition_site =>'AT|CGAT');
        $double_digest->new_enzyme(-enzyme_name=>'BspEI', -recognition_site =>'T|CCGGA');
        $double_digest->new_enzyme(-enzyme_name=>'BspHI', -recognition_site =>'T|CATGA');
        $double_digest->new_enzyme(-enzyme_name=>'BsrGI', -recognition_site =>'T|GTACA');
        $double_digest->new_enzyme(-enzyme_name=>'ClaI', -recognition_site =>'AT|CGAT');
        $double_digest->new_enzyme(-enzyme_name=>'DraI', -recognition_site =>'TTT|AAA');
        $double_digest->new_enzyme(-enzyme_name=>'EagI', -recognition_site =>'C|GGCCG');
        $double_digest->new_enzyme(-enzyme_name=>'Eco53kI', -recognition_site =>'GAG|CTC');
        $double_digest->new_enzyme(-enzyme_name=>'EcoRV', -recognition_site =>'GAT|ATC');
        $double_digest->new_enzyme(-enzyme_name=>'FseI', -recognition_site =>'GGCCGG|CC');
        $double_digest->new_enzyme(-enzyme_name=>'FspI', -recognition_site =>'TGC|GCA');
        $double_digest->new_enzyme(-enzyme_name=>'HhaI', -recognition_site =>'GCG|C');
        $double_digest->new_enzyme(-enzyme_name=>'HinP1I', -recognition_site =>'G|CGC');
        $double_digest->new_enzyme(-enzyme_name=>'HpaI', -recognition_site =>'GTT|AAC');
        $double_digest->new_enzyme(-enzyme_name=>'HpaII', -recognition_site =>'C|CGG');
        $double_digest->new_enzyme(-enzyme_name=>'HpyCH4IV', -recognition_site =>'A|CGT');
        $double_digest->new_enzyme(-enzyme_name=>'KasI', -recognition_site =>'G|GCGCC');
        $double_digest->new_enzyme(-enzyme_name=>'KpnI', -recognition_site =>'GGTAC|C');
        $double_digest->new_enzyme(-enzyme_name=>'MfeI', -recognition_site =>'C|AATTG');
        $double_digest->new_enzyme(-enzyme_name=>'MluI', -recognition_site =>'A|CGCGT');
        $double_digest->new_enzyme(-enzyme_name=>'MscI', -recognition_site =>'TGG|CCA');
        $double_digest->new_enzyme(-enzyme_name=>'NaeI', -recognition_site =>'GCC|GGC');
        $double_digest->new_enzyme(-enzyme_name=>'NarI', -recognition_site =>'GG|CGCC');
        $double_digest->new_enzyme(-enzyme_name=>'NcoI', -recognition_site =>'C|CATGG');
        $double_digest->new_enzyme(-enzyme_name=>'NgoMIV', -recognition_site =>'G|CCGGC');
        $double_digest->new_enzyme(-enzyme_name=>'NheI', -recognition_site =>'G|CTAGC');
        $double_digest->new_enzyme(-enzyme_name=>'NotI', -recognition_site =>'GC|GGCCGC');
        $double_digest->new_enzyme(-enzyme_name=>'NruI', -recognition_site =>'TCG|CGA');
        $double_digest->new_enzyme(-enzyme_name=>'NsiI', -recognition_site =>'ATGCA|T');
        $double_digest->new_enzyme(-enzyme_name=>'PacI', -recognition_site =>'TTAAT|TAA');
        $double_digest->new_enzyme(-enzyme_name=>'PaeR7I', -recognition_site =>'C|TCGAG');
        $double_digest->new_enzyme(-enzyme_name=>'PciI', -recognition_site =>'A|CATGT');
        $double_digest->new_enzyme(-enzyme_name=>'PluTI', -recognition_site =>'GGCGC|C');
        $double_digest->new_enzyme(-enzyme_name=>'PmeI', -recognition_site =>'GTTT|AAAC');
        $double_digest->new_enzyme(-enzyme_name=>'PmlI', -recognition_site =>'CAC|GTG');
        $double_digest->new_enzyme(-enzyme_name=>'PsiI', -recognition_site =>'TTA|TAA');
        $double_digest->new_enzyme(-enzyme_name=>'PspOMI', -recognition_site =>'G|GGCCC');
        $double_digest->new_enzyme(-enzyme_name=>'PvuI', -recognition_site =>'CGAT|CG');
        $double_digest->new_enzyme(-enzyme_name=>'PvuII', -recognition_site =>'CAG|CTG');
        $double_digest->new_enzyme(-enzyme_name=>'SacI', -recognition_site =>'GAGCT|C');
        $double_digest->new_enzyme(-enzyme_name=>'SacII', -recognition_site =>'CCGC|GG');
        $double_digest->new_enzyme(-enzyme_name=>'SbfI', -recognition_site =>'CCTGCA|GG');
        $double_digest->new_enzyme(-enzyme_name=>'SfoI', -recognition_site =>'GGC|GCC');
        $double_digest->new_enzyme(-enzyme_name=>'SnaBI', -recognition_site =>'TAC|GTA');
        $double_digest->new_enzyme(-enzyme_name=>'SpeI', -recognition_site =>'A|CTAGT');
        $double_digest->new_enzyme(-enzyme_name=>'SphI', -recognition_site =>'GCATG|C');
        $double_digest->new_enzyme(-enzyme_name=>'SrfI', -recognition_site =>'GCCC|GGGC');
        $double_digest->new_enzyme(-enzyme_name=>'SspI', -recognition_site =>'AAT|ATT');
        $double_digest->new_enzyme(-enzyme_name=>'StuI', -recognition_site =>'AGG|CCT');
        $double_digest->new_enzyme(-enzyme_name=>'XmaI', -recognition_site =>'C|CCGGG');
        $double_digest->new_enzyme(-enzyme_name=>'ZraI', -recognition_site =>'GAC|GTC');

        #$double_digest->add_enzyme_pair(-front_enzyme =>'AsiSI', -behind_enzyme =>'BfaI');
               
        
        
        #my $Enzyme1cut=$fields[1];
        #my $Enzyme2cut=$fields2[1];
        
        chop $fields[1];
#        chop $fields2[1];
        
        
        try {        
        #$double_digest->new_enzyme(-enzyme_name=>$fields[0], -recognition_site =>$fields[1]);
        #$double_digest->new_enzyme(-enzyme_name=>$fields2[0], -recognition_site =>$fields2[1]);
        $double_digest->add_enzyme_pair(-front_enzyme =>$fields[0], -behind_enzyme =>$fields2[0]);
        
        $double_digest->change_range(-start =>301,-end =>500);
        $double_digest->change_lengths_distribution_parameters(-front =>200,-behind =>700,-step =>100);
        
               
        print "($fields[0])";
        print "($fields[1])";
        print "($fields2[0])";
        print "($fields2[1])";
        
        sub main {
            my $directory = "Output_RestrictionDigestion_GeoFort";
                unless(-e $directory or mkdir $directory) {
                    die "Unable to create folder $directory\n";
            }
        }
        main();
        $double_digest->add_output_dir(-output_dir=>'/mnt/middleage/evo/mdominguez/RestrictionDigest-master/Output_RestrictionDigestion_GeoFort');
        $double_digest->double_digest();
        
        `rm /mnt/middleage/evo/mdominguez/RestrictionDigest-master/Output_RestrictionDigestion_GeoFort/position*`;
        `rm /mnt/middleage/evo/mdominguez/RestrictionDigest-master/Output_RestrictionDigestion_GeoFort/seq*`;
        `rm /mnt/middleage/evo/mdominguez/RestrictionDigest-master/Output_RestrictionDigestion_GeoFort/coverage*`;
         }
              
         catch {
           print "($fields[0])";
           print "($fields2[0])";
           $count++;
           };         
        }
    }
#   }
    
print "Total number of enzymes failing is $count";
