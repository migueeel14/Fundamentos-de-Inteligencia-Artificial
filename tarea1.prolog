/*:- dynamc male/1, female/1, house_member/2, house/1, color/1.*/


house(arryn).
house(stark).
house(tully).
house(targaryen).
house(baratheon).
house(lannister).
house(tyrell).
house(martell).

/*%1st house*/
house_member(jon, arryn).
house_member(robin, arryn).

/*%2nd house */
house_member(hoster, tully).
house_member(lysa, tully).
house_member(edmure, tully).
house_member(catelyn, tully).

/*3rd house*/
house_member(rickard, stark).
house_member(eddard, stark).
house_member(benjen, stark).
house_member(brandon, stark).
house_member(lyanna, stark).
house_member(brandon, stark).
house_member(rickon, stark).
house_member(arya, stark).
house_member(sansa, stark).
house_member(robb, stark). 

/*4th house*/
house_member(robert, baratheon).
house_member(stannis, baratheon).
house_member(renly, baratheon).
house_member(shireen, baratheon).
house_member(ormund, baratheon).
house_member(steffon, baratheon).

/*5th house*/
house_member(tywin, lannister).
house_member(joanna, lannister).
house_member(jaime, lannister).
house_member(cersei, lannister).
house_member(tyrion, lannister).

/*6th house*/
house_member(luthor, tyrell).
house_member(olenna, tyrell).
house_member(mace, tyrell).
house_member(margaery, tyrell).
house_member(loras, tyrell).

/*7th house*/
house_member(doran, martell).
house_member(oberyn, martell).
house_member(elia, martell).
house_member(trystane, martell).

/*8th house*/
house_member(masteramon,targaryen).
house_member(maekar1,   targaryen).
house_member(aegon5,    targaryen).
house_member(jaehaerys2,targaryen).
house_member(aerys2,    targaryen).
house_member(rhaegar,   targaryen).
house_member(viserys ,  targaryen).
house_member(jonsnow,   targaryen).
house_member(danaerys,  targaryen).

/*a)Nombre, color  y/o  líder  de  cada  casa*/
/*[>1st house<]*/
purple(jon,   jon).
purple(robin, jon).

/*[>2nd house<]*/
blue(hoster,  hoster).
blue(lysa,    hoster).
blue(edmure,  hoster).
blue(catelyn, hoster).

/*[>3rd house<]*/
gray(rickard,  rickard).
gray(brandon,  rickard).
gray(eddard,   rickard).
gray(benjen,   rickard).
gray(lyanna,   rickard).
gray(robb,     rickard).
gray(sansa,    rickard).
gray(arya,     rickard).
gray(brandoon, rickard).
gray(rickon,   rickard).
gray(talisa,   rickard).

/*[>4th house<]*/
yellow(ormund,   ormund).
yellow(steffon,  ormund).
yellow(robert,   ormund).
yellow(stannis,  ormund).
yellow(renly,    ormund).
yellow(shireen,  ormund).
yellow(joffrey,  ormund).
yellow(myrcella, ormund).
yellow(tommen,   ormund).
 
/*[>5th house<]*/
red(tywin,  tywin).
red(joanna, tywin).
red(jaime,  tywin).
red(cersei, tywin).
red(tyrion, tywin).

/*[>6th house<]*/
green(olenna,   olenna).
green(luthor,   olenna).
green(mace,     olenna).
green(margaery, olenna).
green(loras,    olenna).

/*[>7th house<]*/
orange(doran,    no).
orange(oberyn,   no).
orange(elia,     no).
orange(trystane, no).

/*[>8th house<]*/
black(masteramon,targaryen).
black(maekar1,   targaryen).
black(aegon5,    targaryen).
black(jaehaerys2,targaryen).
black(aerys2,    targaryen).
black(rhaegar,   targaryen).
black(viserys ,  targaryen).
black(jonsnow,   targaryen).
black(danaerys,  targaryen).

/*b) Nombre, género y casa de cada personaje*/
/*%Male*/
/*[>%1st house<]*/
male(jon,   arryn).
male(robin, arryn).

/*[>%2ndhouse<]*/
male(hoster, tully).
male(edmure, tully).

/*[>%3rd house<]*/
male(rickard, stark).
male(brandon, stark).
male(brandon, stark).
male(eddard,  stark).
male(benjen,  stark).
male(rickon,  stark).
male(robb,    stark).

/*[>4th house<]*/
male(ormund,   baratheon).
male(steffon,  baratheon).
male(robert,   baratheon).
male(stannis,  baratheon).
male(renly,    baratheon).
male(joffrey,  baratheon).
male(tommen,   baratheon).

/*[>5th house<]*/
male(tywin,  lannister).
male(jaime,  lannister).
male(tyrion, lannister).

/*[>6th house<]*/
male(luthor, tyrell).
male(mace,   tyrell).
male(loras,  tyrell).

/*[>7th house<]*/
male(doran,    martell).
male(oberyn,   martell).
male(trystane, martell).

/*[>8th house<]*/
male(masteramon,targaryen).
male(maekar1,   targaryen).
male(aegon5,    targaryen).
male(jaehaerys2,targaryen).
male(aerys2,    targaryen).
male(rhaegar,   targaryen).
male(viserys ,  targaryen).
male(jonsnow,   targaryen).
/*%Female%*/
 
/*[>2rd house<]*/
female(cately, tully).
female(lysa,   tully).

/*[>3rd house<]*/
female(sansa,  stark).
female(arya,   stark).
female(lyanna, stark).

/*[>4th house<]*/
female(shiren,   baratheon).
female(myrcella, baratheon).

/*[>5th house<]*/
female(joanna, lannister).
female(cersei, lannister).

/*[>6th house<]*/
female(olenna,   tyrell).
female(margaery, tyrell).

/*[>7th house<]*/
female(elia, martell).

/*[>8th house<]*/
female(danaerys, targaryen).
/*c) Marriage*/

couple(littlefinger, lisa).
couple(edmure,roslinfrey).
couple(eddard,catelyn).
couple(rhaelle,ormund).
couple(rhaegar,lyanna).
couple(robert,cersei).
couple(renly,margaery).
couple(tywin,joanna).
couple(luthor,olenna).
couple(joffrey,margaery).
couple(tome,margaery).
couple(rhaegar,elia).
couple(robb,talisa).
couple(ramsaybolton,sansa).

/*d) Mother, father, daughter, son*/
/*Father*/
father_jon(robin).
father_hoster(catelyn,edmure,lysa).
father_walderfrey(roslinfrey).
father_rickard(brandon,eddard,benjen,lyanna).
father_eddard(robb,sansa,arya,brandoon,rickon).
father_aegon1(maekar).
father_maekar(aemon, aegon5).
father_aegon5(jaehaerys2,rhaelle).
father_jaehaerys2(aerys2).
father_aerys2(rhaegar, viserys,daenerys).
father_rhaegar(jonsnow).
father_greyjoy(theon).
father_ormund(steffon).
father_steffon(robert,stannis,renly).
father_stannis(shireen).
father_tywin(jaime,cersei,tyron).
father_robert(joffrey,myrcella,tommen).
father_luthor(mace).
father_mace(margaery,loras).
father_no(doran,oberyn).
father_doran(trystane).
father_oberyn(sandsnakes).

/*Mother*/
mother_lysa(robin).
mother_catelyn(robb,sansa,arya,brandoon,rickon).
mother_lyanna(jonsnow).
mother_rhaelle(steffon).
mother_joanna(jaime,cersei,tyron).
mother_cersei(joffrey,myrcella,tommen).
mother_olenna(mace).

/*Son*/
son(robin).
son(edmure).
son(brandon).
son(eddard).
son(benjen).
son(robb).
son(sansa).
son(brandoon).
son(ramsaybolton).
son(theongreyjoy).
son(maekar1).
son(aegon5).
son(maesteraemon).
son(jaehaerys2).
son(aerys2).
son(rhaegar).
son(jonsnow).
son(steffon).
son(robert).
son(stannis).
son(renly).
son(tywin).
son(jaime).
son(tyron).
son(joffrey).
son(tommen).
son(mace).
son(loras).
son(trystane).
son(sandsnakes).

/*Daughter*/
daughter(catelyn).
daughter(lysa).
daughter(sansa).
daughter(talisa).
daughter(arya).
daughter(lyanna).
daughter(danaerys).
daughter(shireen).
daughter(rhaelle).
daughter(cersei).
daughter(margaery).
daughter(elia).



