%Group Systems Intelligent
%Khalif Amir Bin Zakry 58683
%Ahmad Sufi Bin Abdul Hamid 58404
%Md Shekhanul Islam  55297
%Md Mortoza Minhaz  55270
%Rakibul Islam      55276
%Abu Sayed     59395

%This IS THE EXECUTOR FOR THE PROGRAM
go:-intro,mainmenu.


intro:-
write(' ---------------------------------------------------------------------------'),nl,
write('|                        Ads Recommending System                            |'),nl.


%Program Main Menu
mainmenu:-
write('|---------------------------------------------------------------------------|'),nl,
write('|                                Main Menu                                  |'),nl,
write('|---------------------------------------------------------------------------|'),nl,
write('|                         Please Choose Your Browser                        |'),nl,
write('|                                                                           |'),nl,
write('| 1. Google Chrome   (No Ad Blocker)                                        |'),nl,
write('| 2. Mozilla Firefox (Has Ad Blocker)                                       |'),nl,
write('|---------------------------------------------------------------------------|'),nl,
read(Menu),nl,menu(Menu),nl.

%MAIN MENU OPTIONS
menu(1):-
write(' ---------------------------------------------------------------------------'),nl,
write('|                                Browse Websites                            |'),nl,
write('|---------------------------------------------------------------------------|'),nl,
write('|                                                                           |'),nl,
write('|                     Enter a keyword into google search                    |'),nl,
write('|                                                                           |'),nl,
write('|  1. bank                                                                  |'),nl,
write('|  2. books                                                                 |'),nl,
write('|  3. brakes                                                                |'),nl,
write('|  4. bitcoin                                                               |'),nl,
write('|  5. cars                                                                  |'),nl,
write('|  6. camping                                                               |'),nl,
write('|  7. console                                                               |'),nl,
write('|  8. gaming                                                                |'),nl,
write('|  9. style                                                                 |'),nl,
write('| 10. finance                                                               |'),nl,
write(' ---------------------------------------------------------------------------'),nl,
read(OptionNoBlock),nl,optionnoblock(OptionNoBlock),nl.

menu(2):-
write(' ---------------------------------------------------------------------------'),nl,
write('|                                Browse Websites                            |'),nl,
write('|---------------------------------------------------------------------------|'),nl,
write('|                                                                           |'),nl,
write('|                     Enter a keyword into google search                    |'),nl,
write('|                                                                           |'),nl,
write('|  1. bank                                                                  |'),nl,
write('|  2. books                                                                 |'),nl,
write('|  3. brakes                                                                |'),nl,
write('|  4. bitcoin                                                               |'),nl,
write('|  5. cars                                                                  |'),nl,
write('|  6. camping                                                               |'),nl,
write('|  7. console                                                               |'),nl,
write('|  8. gaming                                                                |'),nl,
write('|  9. style                                                                 |'),nl,
write('| 10. finance                                                               |'),nl,
write(' ---------------------------------------------------------------------------'),nl,
read(OptionBlock),nl,optionblock(OptionBlock),nl.

%incase user enter wrongly during main menu phase
menu(_):-nl,write('Incorrect input, try again'),nl,mainmenu.




% HERE LIES ALL THE KNOWLEDGE BASES AND MOST OF THE RULES

%KNOWLEDGE BASE FOR AD BLOCKER
%this knowledge base is used because browser has ad block
blocks(1).
blocks(2).
blocks(3).
blocks(4).

%Rules for Optionoblock
optionnoblock(1):-bank.
optionnoblock(2):-books.
optionnoblock(3):-brakes.
optionnoblock(4):-bitcoin.
optionnoblock(5):-cars.
optionnoblock(6):-camping.
optionnoblock(7):-console.
optionnoblock(8):-gaming.
optionnoblock(9):-style.
optionnoblock(10):-finance.

%Rules for OptionBlock
optionblock(1):-bankblock.
optionblock(2):-booksblock.
optionblock(3):-brakesblock.
optionblock(4):-bitcoinblock.
optionblock(5):-carsblock.
optionblock(6):-campingblock.
optionblock(7):-consoleblock.
optionblock(8):-gamingblock.
optionblock(9):-styleblock.
optionblock(10):-financeblock.



%This knowledge base for sites no block and the ads it shows.
bankkeyword(1).
bankkeyword(_):-nl,write('Incorrect Input, try again'),nl,bank.
bookkeyword(1).
bookkeyword(_):-nl,write('Incorrect Input, try again'),nl,books.
brakeskeyword(1).
brakeskeyword(2).
brakeskeyword(3).
brakeskeyword(_):-nl,write('Incorrect Input, try again'),nl,brakes.
bitcoinkeyword(1).
bitcoinkeyword(2).
bitcoinkeyword(_):-nl,write('Incorrect Input, try again'),nl,bitcoin.
carskeyword(1).
carskeyword(2).
carskeyword(3).
carskeyword(_):-nl,write('Incorrect Input, try again'),nl,cars.
campingkeyword(1).
campingkeyword(2).
campingkeyword(_):-nl,write('Incorrect Input, try again'),nl,camping.
consolekeyword(1).
consolekeyword(_):-nl,write('Incorrect Input, try again'),nl,console.
gamingkeyword(1).
gamingkeyword(_):-nl,write('Incorrect Input, try again'),nl,gaming.
stylekeyword(1).
stylekeyword(2).
stylekeyword(_):-nl,write('Incorrect Input, try again'),nl,style.
financekeyword(1).
financekeyword(2).
financekeyword(_):-nl,write('Incorrect Input, try again'),nl,finance.

%knowledge base for block site keywords
blocksbankkeyword(1).
blocksbankkeyword(_):-nl,write('Incorrect Input, try again'),nl,bankblock.
blocksbookkeyword(1).
blocksbookkeyword(_):-nl,write('Incorrect Input, try again'),nl,booksblock.
blocksbrakeskeyword(1).
blocksbrakeskeyword(2).
blocksbrakeskeyword(3).
blocksbrakeskeyword(_):-nl,write('Incorrect Input, try again'),nl,brakesblock.
blocksbitcoinkeyword(1).
blocksbitcoinkeyword(2).
blocksbitcoinkeyword(_):-nl,write('Incorrect Input, try again'),nl,bitcoinblock.
blockscarskeyword(1).
blockscarskeyword(2).
blockscarskeyword(3).
blockscarskeyword(_):-nl,write('Incorrect Input, try again'),nl,carsblock.
blockscampingkeyword(1).
blockscampingkeyword(2).
blockscampingkeyword(_):-nl,write('Incorrect Input, try again'),nl,campingblock.
blocksconsolekeyword(1).
blocksconsolekeyword(_):-nl,write('Incorrect Input, try again'),nl,consoleblock.
blocksgamingkeyword(1).
blocksgamingkeyword(_):-nl,write('Incorrect Input, try again'),nl,gamingblock.
blocksfashionkeyword(1).
blocksfashionkeyword(2).
blocksfashionkeyword(_):-nl,write('Incorrect Input, try again'),nl,styleblock.
blocksfinancekeyword(1).
blocksfinancekeyword(2).
blocksfinancekeyword(_):-nl,write('Incorrect Input, try again'),nl,financeblock.

%Rules for OptionNoblock
checka(Bank):-bankkeyword(Bank),write(' You visited this website and are shown ads related to the "bank" keyword'),nl,nl,mainmenu.
checkb(Books):-bookkeyword(Books),write(' You visited this website and are shown ads related to the "books" keyword'),nl,nl,mainmenu.
checkc(Brakes):-brakeskeyword(Brakes),write(' You visited this website and are shown ads related to the "brakes" keyword'),nl,nl,mainmenu.
checkd(Bitcoin):-bitcoinkeyword(Bitcoin),write(' You visited this website and are shown ads related to the "bitcoin" keyword '),nl,nl,mainmenu.
checke(Cars):-carskeyword(Cars),write(' You visited this website and are shown ads related to the "cars" keyword'),nl,nl,mainmenu.
checkf(Camping):-campingkeyword(Camping),write(' You visited this website and are shown ads related to the "camping" keyword '),nl,nl,mainmenu.
checkg(Console):-consolekeyword(Console),write(' You visited this website and are shown ads related to the "console" keyword'),nl,nl,mainmenu.
checkh(Gaming):-gamingkeyword(Gaming),write(' You visited this website and are shown ads related to the "gaming" keyword'),nl,nl,mainmenu.
checki(Fashion):-stylekeyword(Fashion),write(' You visited this website and are shown ads related to the "style" keyword'),nl,nl,mainmenu.
checkj(Finance):-financekeyword(Finance),write(' You visited this website and are shown ads related to the "finance" keyword'),nl,nl,mainmenu.

%Rules for optionBLOCKS
check1(Bankblock):-blocksbankkeyword(Bankblock),write(' You visited this website and you did not see any ads'),nl,nl,nl,mainmenu.
check2(Booksblock):-blocksbookkeyword(Booksblock),write(' You visited this website and you did not see any ads'),nl,nl,nl,mainmenu.
check3(Brakesblock):-blocksbrakeskeyword(Brakesblock),write(' You visited this website and you did not see any ads'),nl,nl,nl,mainmenu.
check4(Bitcoinblock):-blocksbitcoinkeyword(Bitcoinblock),write(' You visited this website and you did not see any ads'),nl,nl,nl,mainmenu.
check5(Carsblock):-blockscarskeyword(Carsblock),write(' You visited this website and you did not see any ads'),nl,nl,nl,mainmenu.
check6(Campingblock):-blockscampingkeyword(Campingblock),write(' You visited this website and you did not see any ads'),nl,nl,nl,mainmenu.
check7(Consoleblock):-blocksconsolekeyword(Consoleblock),write(' You visited this website and you did not see any ads'),nl,nl,nl,mainmenu.
check8(Gamingblock):-blocksgamingkeyword(Gamingblock),write(' You visited this website and you did not see any ads'),nl,nl,nl,mainmenu.
check9(Fashionblock):-blocksfashionkeyword(Fashionblock),write(' You visited this website and you did not see any ads'),nl,nl,nl,mainmenu.
check10(Financeblock):-blocksfinancekeyword(Financeblock),write(' You visited this website and you did not see any ads'),nl,nl,nl,mainmenu.


%THE MENU FOR ALL THE GOOGLE CHROME LISTED SITES , WITH ADS
bank:-
write(' --------------------------------------------------------------------------- '),nl,
write('|                           Websites with keyword "bank ads"                |'),nl,
write(' --------------------------------------------------------------------------- '),nl,
write('|                                                                           |'),nl,
write('|                       Please Choose Available Website                     |'),nl,
write('|                                                                           |'),nl,
write('| 1. Finance Daily                                                          |'),nl,
write('|                                                                           |'),nl,
write('|---------------------------------------------------------------------------|'),nl,
write(' Please Enter Your Selection: '),read(Bank),checka(Bank).


books:-
write(' --------------------------------------------------------------------------- '),nl,
write('|                           Websites with keyword "books"                   |'),nl,
write(' --------------------------------------------------------------------------- '),nl,
write('|                                                                           |'),nl,
write('|                       Please Choose Available Website                     |'),nl,
write('|                                                                           |'),nl,
write('| 1. Book Shack                                                             |'),nl,
write('|                                                                           |'),nl,
write('|---------------------------------------------------------------------------|'),nl,
write(' Please Enter Your Selection: '),read(Books),checkb(Books).

brakes:-
write(' --------------------------------------------------------------------------- '),nl,
write('|                           Websites with keyword "brakes"                  |'),nl,
write(' --------------------------------------------------------------------------- '),nl,
write('|                                                                           |'),nl,
write('|                       Please Choose Available Website                     |'),nl,
write('|                                                                           |'),nl,
write('| 1. Automotive Corner                                                      |'),nl,
write('| 2. Book Shack                                                             |'),nl,
write('| 3. Guide to the Outdoors                                                  |'),nl,
write('|---------------------------------------------------------------------------|'),nl,
write(' Please Enter Your Selection: '),read(Brakes),checkc(Brakes).

bitcoin:-
write(' --------------------------------------------------------------------------- '),nl,
write('|                           Websites with keyword "bitcoin"                 |'),nl,
write(' --------------------------------------------------------------------------- '),nl,
write('|                                                                           |'),nl,
write('|                       Please Choose Available Website                     |'),nl,
write('|                                                                           |'),nl,
write('| 1. Finance Daily                                                          |'),nl,
write('| 2. Book Shack                                                             |'),nl,
write('|                                                                           |'),nl,
write('|---------------------------------------------------------------------------|'),nl,
write(' Please Enter Your Selection: '),read(Bitcoin),checkd(Bitcoin).


cars:-
write(' --------------------------------------------------------------------------- '),nl,
write('|                           Websites with keyword "cars"                    |'),nl,
write(' --------------------------------------------------------------------------- '),nl,
write('|                                                                           |'),nl,
write('|                       Please Choose Available Website                     |'),nl,
write('|                                                                           |'),nl,
write('| 1. Automotive Corner                                                      |'),nl,
write('| 2. Book Shack                                                             |'),nl,
write('| 3. Guide to the Outdoors                                                  |'),nl,
write('|---------------------------------------------------------------------------|'),nl,
write(' Please Enter Your selection: '),read(Cars),checke(Cars).


camping:-
write(' --------------------------------------------------------------------------- '),nl,
write('|                           Websites with keyword "camping"                 |'),nl,
write(' --------------------------------------------------------------------------- '),nl,
write('|                                                                           |'),nl,
write('|                       Please Choose Available Website                     |'),nl,
write('|                                                                           |'),nl,
write('| 1. Book Shack                                                             |'),nl,
write('| 2. Guide to the Outdoors                                                  |'),nl,
write('|                                                                           |'),nl,
write('|---------------------------------------------------------------------------|'),nl,
write(' Please Enter Your Selection: '),read(Camping),checkf(Camping).


console:-
write(' --------------------------------------------------------------------------- '),nl,
write('|                           Websites with keyword "console"                 |'),nl,
write(' --------------------------------------------------------------------------- '),nl,
write('|                                                                           |'),nl,
write('|                       Please Choose Available Website                     |'),nl,
write('|                                                                           |'),nl,
write('| 1. Gaming Central                                                         |'),nl,
write('|                                                                           |'),nl,
write('|---------------------------------------------------------------------------|'),nl,
write(' Please Enter Your Selection: '),read(Console),checkg(Console).

gaming:-
write(' --------------------------------------------------------------------------- '),nl,
write('|                           Websites with keyword "gaming"                  |'),nl,
write(' --------------------------------------------------------------------------- '),nl,
write('|                                                                           |'),nl,
write('|                       Please Choose Available Website                     |'),nl,
write('|                                                                           |'),nl,
write('| 1. Gaming Central                                                         |'),nl,
write('|                                                                           |'),nl,
write('|---------------------------------------------------------------------------|'),nl,
write(' Please Enter Your Selection: '),read(Gaming),checkh(Gaming).



style:-
write(' --------------------------------------------------------------------------- '),nl,
write('|                           Websites with keyword "style"                   |'),nl,
write(' --------------------------------------------------------------------------- '),nl,
write('|                                                                           |'),nl,
write('|                       Please Choose Available Website                     |'),nl,
write('|                                                                           |'),nl,
write('| 1. Fashion Fiesta                                                         |'),nl,
write('| 2. Book Shack                                                             |'),nl,
write('|---------------------------------------------------------------------------|'),nl,
write(' Please Enter Your Selection: '),read(Fashion),checki(Fashion).

finance:-
write(' --------------------------------------------------------------------------- '),nl,
write('|                           Websites with keyword "finance"                 |'),nl,
write(' --------------------------------------------------------------------------- '),nl,
write('|                                                                           |'),nl,
write('|                       Please Choose Available Website                     |'),nl,
write('|                                                                           |'),nl,
write('| 1. Finance Daily                                                          |'),nl,
write('| 2. Book Shack                                                             |'),nl,
write('|---------------------------------------------------------------------------|'),nl,
write(' Please enter a selection'),read(Finance),checkj(Finance).





%THE MENU FOR MOZILLA FIREFOX WHICH RUNS NO ADS
bankblock:-
write(' --------------------------------------------------------------------------- '),nl,
write('|                           Websites with keyword "bank"                    |'),nl,
write(' --------------------------------------------------------------------------- '),nl,
write('|                                                                           |'),nl,
write('|                       Please Choose Available Website                     |'),nl,
write('|                                                                           |'),nl,
write('| 1. Finance Daily                                                          |'),nl,
write('|                                                                           |'),nl,
write('|---------------------------------------------------------------------------|'),nl,
write(' Please Enter Your Selection: '),read(Bankblock),check1(Bankblock).


booksblock:-
write(' --------------------------------------------------------------------------- '),nl,
write('|                           Websites with keyword "books"                   |'),nl,
write(' --------------------------------------------------------------------------- '),nl,
write('|                                                                           |'),nl,
write('|                       Please Choose Available Website                     |'),nl,
write('|                                                                           |'),nl,
write('| 1. Book Shack                                                             |'),nl,
write('|                                                                           |'),nl,
write('|---------------------------------------------------------------------------|'),nl,
write(' Please Enter Your Selection: '),read(BooksBlock),check2(BooksBlock).

brakesblock:-
write(' --------------------------------------------------------------------------- '),nl,
write('|                           Websites with keyword "brakes"                  |'),nl,
write(' --------------------------------------------------------------------------- '),nl,
write('|                                                                           |'),nl,
write('|                       Please Choose Available Website                     |'),nl,
write('|                                                                           |'),nl,
write('| 1. Automotive Corner                                                      |'),nl,
write('| 2. Book Shack                                                             |'),nl,
write('| 3. Guide to the Outdoors                                                  |'),nl,
write('|---------------------------------------------------------------------------|'),nl,
write(' Please Enter Your Selection'),read(BrakesBlock),check3(BrakesBlock).

bitcoinblock:-
write(' --------------------------------------------------------------------------- '),nl,
write('|                           Websites with keyword "bitcoin"                 |'),nl,
write(' --------------------------------------------------------------------------- '),nl,
write('|                                                                           |'),nl,
write('|                       Please Choose Available Website                     |'),nl,
write('|                                                                           |'),nl,
write('| 1. Finance Daily                                                          |'),nl,
write('| 2. Book Shack                                                             |'),nl,
write('|                                                                           |'),nl,
write('|---------------------------------------------------------------------------|'),nl,
write(' Please Enter Your Selection: '),read(BitcoinBlock),check4(BitcoinBlock).


carsblock:-
write(' --------------------------------------------------------------------------- '),nl,
write('|                           Websites with keyword "cars"                    |'),nl,
write(' --------------------------------------------------------------------------- '),nl,
write('|                                                                           |'),nl,
write('|                       Please Choose Available Website                     |'),nl,
write('|                                                                           |'),nl,
write('| 1. Automotive Corner                                                      |'),nl,
write('| 2. Book Shack                                                             |'),nl,
write('| 3. Guide to the Outdoors                                                  |'),nl,
write('|---------------------------------------------------------------------------|'),nl,
write(' Please Enter Your Selection: '),read(CarsBlock),check5(CarsBlock).


campingblock:-
write(' --------------------------------------------------------------------------- '),nl,
write('|                           Websites with keyword "camping"                 |'),nl,
write(' --------------------------------------------------------------------------- '),nl,
write('|                                                                           |'),nl,
write('|                       Please Choose Available Website                     |'),nl,
write('|                                                                           |'),nl,
write('| 1. Book Shack                                                             |'),nl,
write('| 2. Guide to the Outdoors                                                  |'),nl,
write('|                                                                           |'),nl,
write('|---------------------------------------------------------------------------|'),nl,
write(' Please Enter Your Selection'),read(CampingBlock),check6(CampingBlock).


consoleblock:-
write(' --------------------------------------------------------------------------- '),nl,
write('|                           Websites with keyword "console"                 |'),nl,
write(' --------------------------------------------------------------------------- '),nl,
write('|                                                                           |'),nl,
write('|                       Please Choose Available Website                     |'),nl,
write('|                                                                           |'),nl,
write('| 1. Gaming Central                                                         |'),nl,
write('|                                                                           |'),nl,
write('|---------------------------------------------------------------------------|'),nl,
write(' Please Enter Your Selection'),read(ConsoleBlock),check7(ConsoleBlock).

gamingblock:-
write(' --------------------------------------------------------------------------- '),nl,
write('|                           Websites with keyword "gaming"                  |'),nl,
write(' --------------------------------------------------------------------------- '),nl,
write('|                                                                           |'),nl,
write('|                       Please Choose Available Website                     |'),nl,
write('|                                                                           |'),nl,
write('| 1. Gaming Central                                                         |'),nl,
write('|                                                                           |'),nl,
write('|---------------------------------------------------------------------------|'),nl,
write(' Please Enter Your Selection'),read(GamingBlock),check8(GamingBlock).



styleblock:-
write(' --------------------------------------------------------------------------- '),nl,
write('|                           Websites with keyword "style"                   |'),nl,
write(' --------------------------------------------------------------------------- '),nl,
write('|                                                                           |'),nl,
write('|                       Please Choose Available Website                     |'),nl,
write('|                                                                           |'),nl,
write('| 1. Fashion Fiesta                                                         |'),nl,
write('| 2. Book Shack                                                             |'),nl,
write('|---------------------------------------------------------------------------|'),nl,
write(' Please Enter Your Selection: '),read(FashionBlock),check9(FashionBlock).

financeblock:-
write(' --------------------------------------------------------------------------- '),nl,
write('|                           Websites with keyword "finance"                 |'),nl,
write(' --------------------------------------------------------------------------- '),nl,
write('|                                                                           |'),nl,
write('|                       Please Choose Available Website                     |'),nl,
write('|                                                                           |'),nl,
write('| 1. Finance Daily                                                          |'),nl,
write('| 2. Book Shack                                                             |'),nl,
write('|---------------------------------------------------------------------------|'),nl,
write(' Please Enter Your Selection: '),read(FinanceBlock),check10(FinanceBlock).







