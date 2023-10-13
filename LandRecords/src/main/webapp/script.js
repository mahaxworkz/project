 
   
         
        const districts = {
            "Mysore": ["mysore", "hunsur","nanjangudi","Heggada Devana kote"],
            "belguam": ["raibag", "ramdurg"  ,"gokak","khanapur"],
            "Shivmoga" :["sagara" ,"saroba" ,"hosanagara","THIRTHAHALLI"],
            "Mandya" :["maddur","krishnarajpet","nagamangala","pandavapura"]
        };

        const taluks = {
            "mysore": ["kasaba", "varuna"],
            "hunsur": ["Bilikere", "Gavadagere"],
            "nanjangudi": ["Chikkayyanachatra", "Hullahalli"],
            "Heggada Devana kote":["Antarasante","Hampapura"],
            "raibag": ["kudachi ", "raibaga"],
            "ramdurg": ["K Chandaragi", "katakola"],
            "gokak": ["gokak ", "kowjalagi"],
            "khanapur": ["Beedi", "Gunji"],
            "sagara": ["ANANDAPURA", "AVINAHALLI"],
            "saroba": ["JADE ", "ULAVI"],
            "hosanagara": ["HUNCHA", "NAGARA"],
            "THIRTHAHALLI": ["AGRAHARA", "AGUMBE"],
            "maddur": ["ATAGURU HOBLI", "KOPPA HOBLI"],
            "krishnarajpet": ["AKKIHEBBAL", "BUKINAKERE"],
            "nagamangala": ["Belluru", "Bindiganaville"],
            "pandavapura": ["chinakurali", "melukote"]
            

        };

        const hoblis={
            "kasaba":["Bogadi","Goruru","Kesare","Satagalli"],
            "varuna":["Dandikere","Hongate","Marashe","Yadakola"],
            "Bilikere":["Asvalu","Dallalu","Tippuru","Mudlapura"],
            "Gavadagere":["Agrahara","Attiguppe","Belatturu","Harave"],
            "Chikkayyanachatra":["Adakanahalli","Alatturu","Basavanapura","Bidaragudu"],
            "Hullahalli":["Akala","Amakalli","Ambale","Ariyuru"],
            "Antarasante":["Anagatti","Anemala","Hosuru","Jiyara"],
            "Hampapura":["Bettahalli","Devalapura","Karigala","Pura"],

            "kudachi":["mugalakhoda","neelaji","moraba","kudachi"],
            "raibaga":["bavachi","chinchali","devanakatti","jodatti"],
            "kowjalagi":["adibatti","betageri","kandrattti","mannikeri"],
            "katakola":["Aribenchi","bannura","bochabala","budanura"],
            "gokak":["balobal","budihala","dandapur","gokaka"],
            "K Chandaragi":["beedaki","bhagojikoppa","bijagupi","budanura"],
            "Beedi":["adi","balagunda","beedi","bhuranaki"],
            "Gunji":["Abanalle","Akralli","Ambevadi","Anagadi"],

            "ANANDAPURA":["ACHAPURA","ADURU","ATAVDI","BALLIBYELU"],
            "AVINAHALLI":["AMBARAGODLU","ARALEEKOPPA","BESURU","DEVASA"],
            "JADE":["ARETALAGADDE","BANKSANA","BANKAVALLI","BILAGALI"],
            "ULAVI":["AVALAGODU","BALAGODU","BARIGE","BHADRAPURA"],
            "HUNCHA":["AMRUTA","ANEGADDA","BILLODI","BORIKOPPA"],
            "NAGARA":["ANDAGADUDURU","BAISE","KABALE","KADIGERI"],
            "AGRAHARA":["AGALABAGILU","AGASADI","ALURU","ARALASURALI"],
            "AGUMBE":["AREHALLI","BALEHALLI","CHAKKODABILU","CHANGARA"],

            "ATAGURU HOBLI":["ALANSHETTIHALLI","ANKANATHAPURA","ATAGURU","BYALADAKERE"],
            "KOPPA HOBLI":["BEKKALALE","BOLARE","HOSAGALI","KIRANGURU"],
            "AKKIHEBBAL":["AIPANAHALLI","AKKIHEBBAL","ALAMBADI","ALENAHALLI"],
            "BUKINAKERE":["AGASARAHALLI","AICHANAHALLI","ARALAKUPPE","ATTUPPE"],
            "Belluru":["Adakatahalli","Agachahalli","Ambalajeerahalli","Anakanahalli"],
            "Bindiganaville":["A Chennapura","A Nagattihalli","Addihalli","Avverahalli"],
            "chinakurali":["Alpahalli","Antanahalli","Aralakuppe","Aralakuppenala"],
            "melukote":["Amruthi","Anunahalli","anuvallu","Arakanakere"]


        };

        $(document).ready(function() {
            // Populate the District dropdown based on the selected State
            $('#stateSelect').on('change', function() {
                const selectedState = $(this).val();
                const districtSelect = $('#districtSelect');
                districtSelect.html('<option value="">Select taluk</option>');

                if (selectedState !== "") {
                    districts[selectedState].forEach(function(district) {
                        districtSelect.append(`<option value="${district}">${district}</option>`);
                    });
                }
            });

            // Populate the Taluk dropdown based on the selected District
            $('#districtSelect').on('change', function() {
                const selectedDistrict = $(this).val();
                const talukSelect = $('#talukSelect');
                talukSelect.html('<option value="">Select hobli</option>');

                if (selectedDistrict !== "") {
                    taluks[selectedDistrict].forEach(function(taluk) {
                        talukSelect.append(`<option value="${taluk}">${taluk}</option>`);
                    });
                }
            });

             // Populate the Taluk dropdown based on the selected taluk
             $('#talukSelect').on('change', function() {
                const selectedTaluk = $(this).val();
                const hobliSelect = $('#hobliSelect');
                hobliSelect.html('<option value="">Select village</option>');

                if (selectedTaluk !== "") {
                    hoblis[selectedTaluk].forEach(function(hobli) {
                        hobliSelect.append(`<option value="${hobli}">${hobli}</option>`);
                    });
                }
            });


        });
    