BEGIN;

TRUNCATE "user", "recipe" RESTART IDENTITY;

INSERT INTO "user" ("email","username", "password", "is_admin") 
    VALUES  ('admin@test.fr', 'Admin', '$2a$10$3ncnTtiyg959A9NHM/vvgeXh2e44mS.ofyyB7JMW0QqVJgyoa0mNi', 'true'),
            ('user@test.fr', 'User', '$2a$10$DPy.aIQLYOoUphojbL1xder6nnSLSvvOWRaA5FfgqH2OJ750Gw4aW', 'false');

INSERT INTO "recipe" ("title", "ingredients_list", "description", "steps", "cooking_time", "difficulty", "user_id","picture","type") 
    VALUES  ('BIMBIMBAP AU BOEUF', 
                'Riz,
                2 carottes,
                2 courgettes,
                200 g de pousses de soja,
                1 jeune pousse d’épinard,
                3 champignons de Paris,
                2 ou 3 gousses d’ail,
                1 morceau de gingembre râpé,
                500g de boeuf à braiser,
                Des oeufs (un par personne),
                Sauce soja,
                Cassonade ou sucre,
                Vinaigre de riz ou blanc,
                Huile de sésame,
                Pâte de piment coréen (Gochujang)', 

            ' Direction la Corée avec le fameux Bibimbap ! Un plat très populaire en Corée à base de riz, de légumes sautés (privilégiez les légumes de saison, et si vous trouvez des shiitake frais ou deshydratés c’est top), et de boeuf émincé ou haché mariné à l’ail, sucre et sauce soja.',
            
            'Étape 1
            Faites cuire le riz (1 volume de riz pour 2 volumes d’eau) : 10 minutes à feu vif, puis 10 minutes hors du feu, couvert,
            Étape 2          
            Préparez la marinade : mélangez 3 c. à soupe de cassonade, 3 c. à soupe d’huile de sésame, 3 c. à soupe de vinaigre de riz, une gousse d’ail écrasée et un morceau de gingembre émincé (environ 1 c. à café,
            Ajoutez les lamelles de boeuf bien fines ou du boeuf haché, laisser au frigo 20 minutes,
            Étape 3
            Préparez les légumes en lamelles fines : carottes, courgettes, émincez les champignons,
            Étape 4
            Faites cuire les légumes un par un à la poêle ou au wok  (carottes, champignons, épinards, soja, courgettes) avec à chaque fois une c. à café d’huile de tournesol, un peu d’ail émincé selon le goût, et au bout de 3 minutes, ajouter 1 c. à café de sauce soja à chaque légume,
            Faire cuire 2 minutes les lamelles de boeuf dans un peu d’huile bien chaude, et faire frire les oeufs (oeufs au plat),
            Servir dans des bols avec du riz au fond, des légumes tout autour, un peu de pâte de piment, et le boeuf et/ou l’oeuf au milieu!',
             45, 
             'Moyen', 1,
             'bimbimpap.jpg',
             'Plat'
             ),

            ('BRUSCHETTA ITALIENNE', 
            '8 tomates,
            2 c.à.s d’huile d’olive,
            sel,
            ail,
            1 gousse d’ail,
            8 tranches de pain de campagne un peu épaisses', 
            'La bruschetta est un plat ou antipasto issu de la cuisine italienne dite pauvre. 
            Originaire de Naples et désormais diffuse dans toute l’Italie et en dehors de ses frontières.',
            'Étape 1
            Découper les tomates en petits dés après avoir retiré la partie verte en haut, les mettre dans un petit saladier avec une bonne huile d’olive et du sel,
            Faire griller les tranches de pain de campagne, puis les frotter d’ail,
            Étape 2
            Disposer le mélange tomate/huile d’olive généreusement sur la tartine, à déguster aussitôt (tiède),',
             10, 
             'Facile', 1,
             'bruschetta.jpg',
             'Entrée'),

             ('LASAGNE BOLOGNAISE', 
            ' - Pour la bechamel : ,
                70g de buerre,
                70g de farine,
                50cl de lait,
                1 pincée Noix de muscade,
                Plaque de lasagnes (fraîche ou sèche spécial sans précuisson),
                8 Tomate,
                Pulpe de tomate en conserve (ou 500 g de tomates fraîches),
                800 g Boeuf hachée,
                300 g Oignon,
                1 gousse d’Ail,
                Huile d’olive,
                2 c à s Origan,
                Herbes aromatiques au choix (origan thym basilic),
                1 c à s Emmental râpé,
                100 g Sucre,
                Sel,
                Poivre', 
            ' Découvrez la recette des lasagnes, l’une des spécialités italiennes que tout le monde aime avec sa viande hachée et gratinée à l’emmental.',
            'Étape 1
            Couper un oignon et une gousse d’ail en petit morceaux.
            Les faire revenir à feu doux dans une casserole ou une sauteuse avec une cuillère à soupe d’huile d’olive, jusqu’à ce que les oignons soient devenus un peu translucides. Afin d’exhaler les saveurs de oignon, démarrer la cuisson à feu vif pendant 1 à 2 minutes. 
            Puis baisser le feu juste après pour ne pas que les oignons ne brûlent.
            Étape 2
            Une fois que les oignons ont pris une jolie couleur dorée, ajouter 800 g de pulpe de tomate. 
            Saler, poivrer et ajouter une bonne cuillère à soupe d’herbes aromatiques (au choix : origan, basilic, thym). Laisser réduire et mijoter à feu doux pendant 20 minutes, avant de mixer ou non selon les goûts. 
            Étape 3
            Contrairement aux tomates fraîches, la pulpe en conserve étant plutôt acide, penser à ajouter 2 morceaux de sucre pour adoucir la sauce.
            Pendant que la sauce mijote, faire chauffer un peu d’huile d’olive dans une poêle pour y faire revenir 300 g de viande de bœuf hachée à feu moyen pendant 3 à 5 minutes. Saler et poivrer, puis la mélanger à la sauce tomate réservée. 
            Penser à dégraisser la viande avant de la mélanger à la sauce tomate. 
            Pour cela, retirer la viande à l’aide d’une écumoire.',
             60, 
             'Moyen', 1,
             'lasagne.jpg',
             'Plat'),

             ('OSSO BUCCO', 
            ' Osso Buco 1.5 kg,
            Oignon 1,
            Tomate 5,
            Concentré de tomate,
            Champignon 200 g,
            Olive verte 1 boîte,
            Olive noire 1 boîte,
            Laurier 1 feuille,
            Vin blanc ½ verre,
            Huile d’olive,
            Sel,
            Poivre,
            Farine,
            Beurre 1 noix', 

            ' Découvrez la recette d’osso bucco de grand-mère, un incontournable de la cuisine italienne, encore meilleur réchauffé. L’osso bucco est un jarret de veau troué mijoté au vin blanc avec des champignons, oignons, tomates, olives et laurier. ',
            
            'Étape 1 
            Faire bouillir de l’eau dans une casserole et y mettre une tomate pendant 1 minute puis la retirer et enlever la peau. 
            Recommencer pour les autres tomates. Nettoyer et couper les champignons de Paris en 2 ou 4 suivant la grosseur. 
            Étape 2
            Dans une autre casserole, bouillir de l’eau et y mettre les champignons 10 minutes puis les sortir de l’eau, les égoutter et les réserver.
            Faire chauffer de l’huile et du beurre dans un faitout. Passer les morceaux d’osso buco dans la farine et les faire revenir dans l’huile et le beurre. 
            Saler et poivrer puis retourner les morceaux de viande et dorer la face crue. 
            Étape 3
            Une fois dorés, retirer les morceaux de viande du faitout et les réserver.
            Dans le faitout, faire dorer l’oignon préalablement coupé en petit morceaux. 
            Étape 4
            Ajouter les tomates coupées en 4 et les faire fondre en recouvrant le faitout d’un couvercle. 
            Une fois les tomates fondues, enlever le couvercle et ajouter ½ verre de vin blanc, saler et poivrer. 
            Étape 5
            Mettre la feuille de laurier. Ajouter les olives vertes et noires.
            Ajouter les champignons de Paris.
            Remettre les morceaux de viandes, recouvrir le faitout du couvercle et laisser cuire à feu moyen pendant 1 heure.',
             45, 
             'Difficile', 1,
             'osso-bucco.jpg',
             'Plat'),

             ('PANCAKES', 
            ' Farine 125 g,
            Sucre 38 g,
            Beurre 25 g,
            Oeufs 1,
            Lait entier 20 cl,
            Levure chimique 1,5 c à c,
            Sucre vanillé 0,5 sachet,
            Sel 0,5 pincée', 

            ' Découvrez la recette de pancakes à la japonaise au bon lait entier. Rapides à préparer, ces pancakes sont parfaits pour le petit-déjeuner, le goûter. ou un brunch. Une recette adaptée au végétariens et à petit prix. ',
            'Étape 1
            Tamisez la farine et la levure dans un saladier. Ajoutez le sucre, le sucre vanillé et le sel.
            Creusez un puits, ajoutez les oeufs, le beurre fondu et un peu de lait puis travaillez la pâte.
            Étape 2
            Mouillez progressivement avec le reste du lait jusqu’à ce que la pâte forme un ruban.
            Étape 3
            Faites cuire les pancakes dans une petite poêle beurrée bien chaude. 
            Versez une demi-louche de préparation et faites cuire 2 à 3 minutes le temps que des bulles se forment à la surface. 
            Étape 4            
            Retournez et faites cuire 2 minutes sur l’autre face.',
             15, 
             'Facile', 2,
             'pancakes.jpg',
             'Dessert'),

             ('PASTA PESTO ROSSO', 
            ' 100 g Pâtes (Rigatoni)
            2 cl Huile d’olive,
            10 g Pignons de pin,
            1/4 gousse d’ Ail,
            20 g Parmesan (morceaux),
            50 g Tomate séchée', 
            ' 10 min max pour préparer ces pâtes enrobées d’une délicieuse sauce aux oignons nouveaux et tomates séchées. Avec la mozzarella qui font sur vos Penne et le croquant de noix du Périgord, un régal instantané ! ',
            'Étape 1
            Dans une casserole d’eau bouillante, faites cuire les pâtes selon les instructions du paquet soit environ 10 minutes. 
            Égouttez-les en fin de cuisson.
            Étape 2
            Épluchez la gousse d’ail.
            Avant de réaliser votre pesto, gardez 1 càc de parmesan et de pignons de pin par personne pour le dressage.
            Étape 3
            Dans un mixeur, ajoutez les tomates séchées, l’huile d’olive, les pignons de pin, l’ail et le parmesan. 
            Salez et mixez.
            Étape 4
            Servez les pâtes avec le pesto, ajoutez le parmesan et les pignons de pin que vous aviez mis de côté. 
            Salez, poivrez!',
             15, 
             'Très facile', 2,
             'pasta-pesto-rosso.jpg',
             'Plat'),

             ('PASTA PESTO VERDE', 
            ' Parmigiano Reggiano AOP Giovanni Ferrari : 30 g,
            poivre noir 1 pincée,
            pignons de pin torréfiés 3 cuillères à soupe,
            roquette  30 g,
            basilic  40 g,
            huile d’olive vierge 10 cl,
            penne 250 g', 
            ' Les pâtes au fromage, une évidence ! Courtes ou longues, complètes ou aux œufs, les pâtes s’accommodent volontiers avec vos fromages préférés, comme dans cette recette de penne au pesto verde. Râpé ou fondu dans une sauce, le fromage a le don de twister tous vos plats de pâtes. ',
            'Étape 1
            Pour les penne au pesto verde, cuire les pâtes al dente dans de l’eau bouillante salée en suivant les conseils de préparation inscrits sur le paquet.
            Étape 2
            Laver la roquette et le basilic, les essuyer dans un torchon et les hacher grossièrement. 
            Torréfier les pignons de pin dans une poêle à feu doux pour qu’ils brunissent légèrement, en réserver une c.a.s pour la décoration. 
            Râper grossièrement le fromage. 
            Étape 3
            Mixer les ingrédients pour la sauce des penne avec le pesto verde et réduire en purée avec l’huile d’olive vierge, puis assaisonner avec du poivre fraichement moulu et un peu de sel.           
            Une fois le pesto terminé, le mélanger aux pâtes chaudes. 
            Étape 4
            Disposer dans deux assiettes à pâtes creuses et saupoudrer les penne au pesto verde de fromage râpé, à votre goût, et d’une demi-cuillère à soupe de pignons de pin torréfiés.',
            15, 
             'Facile', 2,
             'pasta-pesto-verde.jpg',
             'Plat'),

             ('SALADE DE PATES À LA FETA', 
            ' 240 g de pâtes selon votre choix,
            3 concombres,
            1 oignon rouge,
            12 tomates cerises,
            200 g de fromage feta,
            60 g olives noires dénoyautées', 
            ' Idéale au déjeuner lorsqu’il fait chaud, cette salade de pâtes avec ses tomates cerises et ses dés de féta se déguste fraîche accompagnée d’un petit verre de vin rosé et de charcuterie si on le souhaite. ',
            'Étape 1
            Faites cuire vos pâtes dans l’eau bouillante. Refroidissez-les dans l’eau froide après cuisson. 
            Mettez-les dans un saladier.
            Étape 2
            Épluchez et coupez le 1/2 concombre en brunoise. 
            Coupez les tomates cerises en deux. 
            Mélangez le concombre et les tomates avec les pâtes. 
            Étape 3
            Ajoutez l’huile d’olives, les morceaux de féta, la persillade. 
            Salez, poivrez et mélangez délicatement pour ne pas écraser les morceaux fromage.',
             20, 
             'Facile', 1,
             'pasta-salad-feta.jpg',
             'Plat'),

             ('POKEBOWL SAUMON', 
            ' 1 pavé de saumon,
            2 cuillère(s) à soupe de vinaigre de riz,
            2 cuillère(s) à soupe de sauce soja,
            graines de sésame,
            riz à sushi cuit et refroidi,
            2 cuillère(s) à soupe de ciboulette ciselée,
            tranches de concombre,
            radis émincés,
            tranches avocat,
            coriandre émincée', 
            ' Direction Hawaï pour le repas avec ce poké bowl au saumon, coloré et extra frais ! Un plat aussi facile qu’équilibré qui embellira votre journée ',
            'Étape 1
            Mélangez le pavé de saumon coupé en dés avec 1 cuil. à soupe de vinaigre de riz, 1 cuil. à soupe de sauce soja et des graines de sésame. 
            Étape 2
            Mélangez du riz à sushi cuit et refroidi avec 1 cuil. à soupe de vinaigre de riz, 1 cuil. à soupe de sauce soja, des graines de sésame, et 1 cuil. à soupe de ciboulette ciselée. 
            Étape 3
            Placez le riz au fond d’un bol, ajoutez des graines de sésame, des tranches de concombre, des radis émincés, des tranches d’avocat, le saumon assaisonné, 1 cuil. à soupe de ciboulette ciselée et de la coriandre émincée. 
            Servez.',
             15, 
             'Moyen', 2,
             'poke-bowls-salmon.jpg',
             'Plat'),

             ('SALADE COMPOSEE', 
            ' Sucrine,
            Salade sucrine 6,
            Blanc de poulet 3,
            Beurre 15 g,
            Avocat 3,
            Citron jaune 1,
            Poitrine fumée 6 tranches,
            Oeuf 3,
            Grosse tomate 3,
            Roquefort 60 g,
            Ciboulette 1 botte,
            Sel 3 pincées,student@yasmina-movileanu-oclock-student:/var/www/html/APOTHEOSE/projet-09-ofood/Back$ psql -U ofood -d ofood -f /data/data.sql
            Poivre,
            Moutarde forte 1 c à s,
            Vinaigre de cidre 3 c à s,
            Huile d’olive 9 c à s,
            Sauce Worcestershire 1 c à s', 
            ' En hiver, en automne, au printemps ou en été, la salade composée se savoure à n’’importe quelle saison à condition d’y mettre des fruits et légumes de saison ',
            '
            Étape 1
            Préparation de la salade. Faire cuire les œufs Matines dans l’eau bouillante pendant 10 minutes à partir de la reprise de l’ébullition.
            Les plonger dans l’eau froide et ensuite les écaler. 
            Étape 2
            Couper les œufs durs Matines en rondelles.
            Faire dorer les tranches de poitrine fumée dans une poêle à sec. 
            Étape 3
            Égoutter sur un papier absorbant et les émietter grossièrement. 
            Saler et poivrer les blancs de poulet et les faire cuire dans cette même poêle dans un peu de beurre mousseux pendant 12 minutes environ. 
            Laisser refroidir puis tailler en tranches.',
             15, 
             'Facile', 2,
             'salade-composee.jpg',
             'Entrée'),

             ('SALADE CRISPY CHICKEN Gaulois', 
            ' 1 étui de Crousty Chicken Long Filet’s Le Gaulois,
            1 petite laitue ou bathavia,
            2 œufs durs,
            2 tomates,
            1 gousse d’ail,
            1 jaune d’œuf,
            50g de parmesan,
            10 cl d’huile de tournesol,
            20 cl de crème,
            3 c. à soupe de vinaigre ,
            Quelques croutons ,
            Sel, poivre', 

            ' Croustillante, croquante et fraîche.
             Cette salade se distingue par ses tendres morceaux de poulet pané déposés sur un lit de salade, ses tomates et ses délicieux copeaux de fromage. ',
            
            'Étape 1
            Préchauffez le four à 210°C. 
            Enfournez les Crousty Chicken Long Filet’s Le Gaulois pendant 12 minutes une fois le four chaud. 
            Étape2
            Pendant ce temps, préparez la sauce en mixant le jaune d’œuf, la gousse d’ail, 30g de parmesan, l’huile de tournesol, le vinaigre, le sel et le poivre. 
            Mêlez la laitue romaine à la sauce et ajoutez-y le reste de parmesan en copeaux, les croûtons, les œufs durs et les tomates en morceaux.
            Disposez la salade dans des coupelles. 
            Émincez les Crousty Chicken Long Filet’s Le Gaulois et disposez-les sur la salade.',
             25, 
             'Facile', 2,
             'salade-crispy-chicken.jpg',
             'Entrée'),

             ('SALADE EPINARD POULET', 
            '3 blancs de poulet,
            2 citrons verts,
            1 gousse d’ail,
            200 g de pousses d’épinards,
            1 mangue bien mûre,
            50g de noix de cajou,
            Quelques feuilles de basilic et de coriandre,
            2 cuillère(s) à soupe d’huile,
            Sel,
            Piment', 
            'Une salade à la fois fraîche, croquante et fondante. ',
            'Étape 1
            Faites mariner 30 mn 3 blancs de poulet dans le jus et le zeste de 1 citron vert avec 1 gousse d’ail hachée. 
            Faites griller puis découpez les en lamelles.
            Étape 2
            Mélangez 200 g de pousses d’épinards avec 1 mangue bien mûre coupée en lamelles, 50 g de noix de cajou dorées à la poêle, quelques feuilles de basilic et de coriandre, ainsi que le poulet.
            Étape 3
            Mélangez 2 c.à.s d’huile, le jus de 1 citron vert, sel, piment selon votre goût et assaisonnez la salade.',
             20, 
             'Facile', 1,
             'salade-epinard-poulet.jpg',
             'Entrée'),

             ('PAVE DE SAUMON GRILLEE', 
            '2 pavés de saumon frais
            De l’huile d’olive
            1 citron
            Du sel
            Du poivre noir', 
            'Préparez cette recette de pavé de saumon grillé: une recette de cuisine facile, assaisonnée avec le jus d’un citron fraîchement pressé. ',
            'Étape 1 
            D’abord, chauffez une planche ou une grande poêle, à feu très vif. 
            Versez-y un petit filet d’huile d’olive.
            Ensuite, salez et poivrez les pavés de saumon et faites-les cuire à la poêle.
            Étape 2
            En fonction de l’épaisseur des pavés, la cuisson du saumon peut prendre plus longtemps. 
            En principe, calculez 2 minutes de chaque côté.
            Étape 3
            Une fois le temps écoulé, vous pouvez réduire la température du feu à la moitié et le laisser un peu plus de temps de cuisson pour le poisson. 
            Etant donné que le saumon est un poisson gras , il va cuire dans son jus ou dans sa propre graisse.
            Une fois les pavés de saumons prêts, retirez-les de la poêle ou planche, et déposez les sur une assiette.
            Étape 4
            Coupez le citron et mettez le jus de celui-ci sur les pavés, de manière généreuse.',
             50, 
             'Moyen', 2,
             'saumon_grillé.jpg',
             'Plat'),

             ('SOUPE POMMES DE TERRE', 
            '5 oignons
            4 pommes de terre
            3 c.à.s de sucre en poudre
            1 c.à.s de maïzena
            50cl bouillon de légumes
            125g fromage râpé
            25g beurre
            Sel, poivre', 
            ' Une recette nature et onctueuse, qui revisite la préparation des pommes de terre dans un potage relevé de cerfeuil, avec la douceur incomparable née de la crème fleurette et du bouillon de volaille ',
            'Étape 1
            Pelez et émincez les oignons. Épluchez et coupez les pommes de terre en cubes.
            Faites dorer 10 min en mode dorer les oignons avec le sucre dans le beurre.
            Étape 2
            Mélangez avec la maïzena.
            Ajoutez les pommes de terre, le bouillon de légumes, salez et poivrez puis lancez la cuisson sous pression pour 8 min.
            Placez la soupe dans des assiettes creuses, servez avec le fromage râpé.',
             35, 
             'Difficile', 1,

             'soupe-potato.jpg',
             'Plat'),

             ('VERRINE  DE FRAISES AUX SPECULOOS', 
            '300g de fraises
            300g de fromage blanc
            1 paquert de spéculos', 
            ' Délicieux, très frais avec des saveurs qui se marient très bien. ',
            'Étape 1
            Mixez puis déposez la moitié des spéculoos au fond de chaque verrine.
            Recouvrez de fromage blanc sur environ 3 cm de hauteur.
            Étape 2
            Mixez les fraises (en garder 2) et répartissez-les dans chaque verrine.
            Recouvrez avec le reste des spéculos puis terminez par 1/2 fraise.
            Étape 3
            Mettez au frais avant de servir.',
             20, 
             'Très facile', 1,
             'speculos_fraise.jpg',
             'Dessert'),


             ('TARTE AUX POMMES', 
            'Pâte sablée,
            Pâte sablée 1 rouleau,
            Pomme Golden 3,
            Oeuf 3,
            Sucre 3 c.à.s,
            Crème liquide 20 cl,
            Cannelle 1 pincée,
            Sucre vanillé 1 sachet', 
            ' Découvrez cette recette de tarte aux pommes, grand classique des tartes sucrées française ! 
            Succombez à ces pommes fondantes sur une pâte sablée croustillante. ',
            'Étape 1
            Déroulez, étalez et piquez la pâte dans un moule à tarte. 
            Pelez, videz et coupez en fines tranches les pommes.
            Posez-les sur la pâte en rosace.
            Étape 2
            Dans un saladier, battez les œufs avec le sucre, puis ajoutez la crème et la cannelle. Versez le mélange sur les pommes.
            Mettez au four à 210°C (thermostat 7) pour 40 minutes environ. 
            Vers la fin de la cuisson, répartissez sur la tarte le sucre vanillé et remettez au four pour caramélisé.',
             35, 
             'Facile', 2,
             'tarte-pommes.jpg',
             'Dessert'),

             ('FAJITAS AU POULET', 
            '2 poivrons, rouge ou jaune de préférence, coupés en lanières,
            1/4 tasse d’huile d’olive,
            2 à 3 oignons, émincés,
            1 c.à.s de beurre,
            2 demi-poitrines de poulet désossées et sans la peau, émincées,
            1 c.à.s d’assaisonnement au chili,
            1 c.à.s d’origan séché,
            8 tortillas moyennes,
            Sel et poivre,
            Garnitures au choix,
            Tomates en dés,
            Guacamole du commerce ou maison,
            Salsa du commerce,
            Crème sure,
            Cheddar orange fort râpé,
            Quartiers de lime,
            Coriandre fraîche', 
            ' Découvrez notre recette de fajitas au poulet et aux légumes, pour un repas croustillant et plein de bonne humeur ! ',
            'Étape 1
            Dans une grande poêle à feu moyen, dorer les poivrons dans 15 ml (1 c.à.s) de l’huile. 
            Saler et poivrer. 
            Dans la même poêle, caraméliser les oignons dans 15 ml (1 c.à.s) d’huile ainsi que du beurre. 
            Saler et poivrer. 
            Étape 2
            Dans la même poêle, dorer le poulet dans le reste dhuile avec les épices.
            Saler et poivrer. 
            Mettre les légumes dans la poêle.
            Étape 3 
            Poursuivre la cuisson 1 minute en remuant.
            Retirer la poêle du four. 
            Y verser la préparation à fajitas.',
             35, 
             'Difficile', 2,
             'tortilla.jpg',
             'Plat'),

             ('POIVRON FARCIS AU BOEUF', 
            ' 600g steaks hachés,
            4 poivrons,
            2 échalotes,
            1 petit oignon,
            2 gousses ail,
            bouquet persil,
            bouquet ciboulette,
            c.à.c paprika,
            1 oeuf,
            2 c.à.s chapelure,
            sel,
            poivre', 
            ' Changez des traditionnelles tomates farcies au porc. Confectionnez de beaux poivrons farcis à la viande de bœuf. 
            Agrémenté d’herbes fraîches, d’oignon, d’échalote et d’ail, le bœuf haché se parfumera délicatement. ',
        'Étape 1
        Préchauffez le four à th.6 (180 °C).
        Dorez la viande hachée avec les oignons et les ailes dans une poêle anti-adhésive.
        Étape 2
        Tailler un oignon.
        En même temps, lavez et enlevez l’intérieur des poivrons.
        Étape 3
        Remplissez les poivrons de viande hachée.
        Refermez-les avec les couvercles.
        Graissez un plat à four et disposez-les dessus.
        Enfournez pendant 25 min.',
        60, 
        'Difficile', 2,
        'poivron-farci.jpg',
        'Plat'),
                
          ('SOUPE MISO', 
            '1/4 c.à.c d’huile de tournesol, 
            1/4 c.à.c de gingembre râpé,
            1/4 d’eau,
            1/3 gousse d’ail hachées,
            16.5g de champignon coupés finement,
            1.5 c.à.s de miso (le miso est un condiment végétarien qu on achète dans les épiceries asiatiques)', 
            'La soupe miso est souvent servie en accompagnement d’autres plats ou en entrée dans les restaurants japonais, mais elle peut également être préparée à la maison pour une délicieuse et réconfortante collation ou repas léger.',
        'Étape 1
       Faire chauffer l’huile dans une casserole sur feu moyen. Ajouter l’ail et les oignons et faire revenir à feu doux.
       Étape 2 
       Ajouter le gingembre, les carottes et les champignons. Laisser cuire de 5 à 10 minutes jusqu’à ce que les légumes soient tendres.
       Étape 3
       Dissoudre le miso dans 100ml d’eau et l’ajouter ainsi que l’eau restante aux légumes.
       Étape 4
       Faire cuire quelques minutes (attention, la soupe ne doit pas bouillir une fois le miso ajouté !) et servir.',
        35, 
        'Facile', 2,
        'Soupe_miso.jpeg',
        'Entrée'),
 
          ('ROULEAUX DE PRINTEMPS CRUS', 
            '3 oignons, 
            De la coriandre fraiche,
            Oignon en tige,
            10 cl de sauce soja,
            1 c.à.s de sucre,
            Du piment frais (facultatif),
            Du poivre et du sel selon votre préférence,
            Une dizaine de galettes de riz,
            3 tranches de viandes que vous préférez(porc, poulet etc..),
            1 gousse d’ail,
            1 concombre,
            1 salade verte', 
            'Le rouleau de printemps cru est un plat frais et sain qui offre une alternative légère et délicieuse aux versions frites ou cuites à la vapeur des rouleaux de printemps traditionnels.',
        'Étape 1
       Faire frire les côtelettes a la poêle, avec sauce soja et poivre puis couper en petits dés.
       Étape 2 
       Faire dorer les oignons coupés en dés et l’ail pressé dans le jus de la viande (sauf s’il y a un végétarien parmi les dégustateurs).
       Couper le concombre en allumettes, l’oignon en tige en petites rondelles, effeuiller salade, coriandre et menthe. Présenter les piments entiers.
       Étape 3
       Préparer la sauce en mixant les cacahuètes avec la sauce soja diluée avec un peu d’eau et le sucre. La sauce doit être épaisse, mais pas trop.
       Étape 4
       Mettre tous les ingrédients sur la table ainsi qu’un plat rempli d’eau tiède.
       Chacun peut ainsi faire son propre rouleau: tremper une galette dans l’eau chaude pour la ramollir, poser un morceau de salade au centre, remplir avec un peu de chaque ingrédient, arroser de sauce.
       Étape 5 
       Arranger la garniture en forme de saucisse, fermer le rouleau en commençant par replier chaque bord, puis enrouler la galette autour de la garniture.',
        120, 
        'Moyen', 2,
        'rouleaux-de-printemps.jpeg',
        'Entrée'),

        ('CHOUQUETTE FOURRÉES À LA CHANTILLY AU MASCARPONE ET À LA VANILLE', 
            '250 g Mascarpone bien froid,
        25 cl Crème liquide bien froide,
        12,5 cl Lait entier,
        110 g Beurre,
        4 à 5 Oeufs,
        150 g Farine T55 tamisée,
        10 g Sucre,
        50 g Sucre en grains,
        1 Gousse de vanille,
        100 g Sucre glace,
        3 g Sel',
        'La chouquette à la mascarpone est une petite merveille de gourmandise qui va vous faire craquer dès la première bouchée. Imaginez une petite pâte à chou légère et aérienne, saupoudrée de grains de sucre croquants sur le dessus et fourrée d’une délicieuse crème au mascarpone.',
        'Étape 1
       Préchauffez le four à 200 °C.Dans une casserole à fond épais, chauffez à feu moyen 12,5 cl d’eau, le lait entier, le beurre en dés, le sel et le sucre. Lorsque le beurre est fondu, portez à ébullition puis baissez le feu au minimum.
       Étape 2 
       Versez dun coup la farine tamisée et mélangez vigoureusement à la spatule ou avec une cuillère en bois. Laissez dessécher cette panade pendant 2 à 3 min sur feu moyen, puis débarrassez dans un cul-de-poule. Ajoutez 4 oeufs un par un à l’aide d’un fouet, en mélangeant énergiquement jusqu’à complète absorption.Versez dans la poche avec la douille de 15 mm.
       Étape 3
       Posez une pointe de pâte sur chaque coin de la plaque et mettez du papier cuisson. Dressez les chouquettes en les espaçant. Saupoudrez-les de sucre en grains et enfournez-les pour 30 min sans ouvrir le four. Laissez les chouquettes refroidir sur une grille.
       Étape 4
       Fouettez à grande vitesse le mascarpone, la crème liquide, les grains de la vanille et 50 g de sucre glace pour obtenir une chantilly ferme. Débarrassez-la dans la poche munie de la douille plus petite.
       Étape 5 
       Percez le dessous des chouquettes avec la douille. Garnissez-les de chantilly puis saupoudrez de sucre glace et servez.',
        60, 
        'Difficile', 2,
        'chouquette-mascarpone.jpeg',
        'Dessert'),

        ('VERRINES DE PURÉE D’AVOCAT AU TOURTEAU', 
          '400 g Chair de tourteau cuit
          4 Avocats,
          1 Citron vert,
          4 brins Coriandre,
          1 Échalote,
          1 c. à café paprika fumé,
          Sel et poivre',
          'Cette verrine est un choix parfait pour une entrée légère et élégante ou pour un apéritif raffiné.', 
        'Étape 1
       Commencez cette recette de petites verrines apéro d’avocat au crabe, en pressant le citron vert. Émincez très finement l’échalote et ciselez la coriandre.
       Étape 2 
       Coupez les avocats en deux, retirez le noyau et enlevez la peau. Coupez 4 tranches pour la décoration et écrasez le reste de la chair à la fourchette. Ajoutez le jus de citron vert, l’échalote, la coriandre (réservez-en un peu pour le dressage) et le paprika fumé. Salez, poivrez et mélangez.
       Étape 3
       Remplissez les verrines de purée d’avocat et de chair de tourteau en disposant les plus gros morceaux au-dessus. Ajoutez une tranche d’avocat et parsemez de coriandre.
       Étape 4
       Conservez au frais avant dégustation.',
        20, 
        'Facile', 2,
        'verrine.jpeg',
        'Entrée'),

         ('THON MI-CUIT, VINAIGRETTE À LA MANGUE',
          '600 g Thon rouge,
           1 Avocat,
           1/2 Mangue,
           2 Cébettes,
           2 Citrons verts,
           3 c. à soupe Sauce soja,
           1 c. à soupe Huile de sésame,
           3 c. à soupe Huile de tournesol,
           1 c. à soupe Graines de sésame,
           Quelques feuilles Coriandre,
           Piment d’Espelette,
           Fleur de sel',
           'Le filet de thon se marie parfaitement avec la douceur de la mangue, créant une expérience gustative à la fois riche et rafraîchissante.',
        'Étape 1
       Commencez cette recette de thon mi-cuit en coupant l’avocat et la mangue en cubes. Émincez finement les cébettes. Pressez les citrons verts puis mélangez le jus avec la sauce soja, les deux huiles (1 c. à soupe d’huile de tournesol seulement), du piment d’Espelette et la coriandre ciselée. Ajoutez l’avocat et la mangue.
       Étape 2 
       Huilez légèrement le thon (d’un diamètre de 6 cm environ) au pinceau puis roulez-le dans les graines de sésame et un peu de fleur de sel.
       Étape 3
       Huilez (2 c. à soupe d’huile de tournesol) et chauffez la plancha à feu moyen. Saisissez le thon à peine 1 min sur toutes les faces en le tournant rapidement. Il doit être doré avec une légère croûte à l’extérieur et être cru à coeur. Tranchez-le et servez-le arrosé de vinaigrette fruitée.',
        20, 
        'Facile', 2,
        'ton-mi-cuit-vinaigrette.jpeg',
        'Plat'),

        ('CHILI CON CARNE',
'400 g de viande de boeuf hachée,
1 oignon,
1 poivron rouge,
2 gousses d’ail,
1 boîte de haricots rouges (400g),
1 boîte de tomates pelées (400g),
1 c. à soupe de concentré de tomates,
1 c. à café de cumin en poudre,
1 c. à café de paprika en poudre,
1 pincée de piment de Cayenne,
Sel, poivre,
1 c. à soupe d’huile d’olive',

'Un plat typique du Texas : le Chili Con Carne ! Une recette simple et savoureuse à base de viande hachée, de haricots rouges, de tomates, d’épices et d’un peu de piment pour les amateurs de sensations fortes.',

'Étape 1
Faites chauffer l’huile dans une grande poêle.
Étape 2
Ajoutez l’oignon émincé et le poivron coupé en dés et faites revenir pendant 5 minutes.
Ajoutez l’ail haché et les épices (cumin, paprika, piment) et mélangez bien.
Étape 3
Ajoutez la viande hachée et faites-la cuire jusqu’à ce qu’elle soit dorée.
Étape 4
Ajoutez la boîte de tomates pelées et le concentré de tomates, ainsi qu’une pincée de sel et de poivre.
Laissez mijoter à feu doux pendant 20 minutes.
Étape 5
Ajoutez les haricots rouges égouttés et rincés et laissez cuire encore 5 minutes.
Servez chaud avec du riz ou des tortillas !',
35,
'Facile',
2,
'chilconcarne.jpeg',
'Plat'
),

('POULET TANDOORI',
'4 cuisses de poulet,
200g de yaourt nature,
2 cuillères à soupe d’huile d’olive,
1 oignon haché,
4 gousses d’ail hachées,
1 pouce de gingembre frais râpé,
2 cuillères à soupe de jus de citron,
2 cuillères à soupe de pâte de tandoori,
1 cuillère à café de garam masala,
Sel et poivre noir moulu',
'Le poulet tandoori est une spécialité indienne populaire. Ce plat est préparé en marinade à base de yaourt, de jus de citron, d’épices et de pâte de tandoori, puis grillé pour une saveur délicieusement fumée.',
'Étape 1 
Dans un bol, mélangez le yaourt, l’huile d’olive, l’oignon, l’ail, le gingembre, le jus de citron, la pâte de tandoori, le garam masala, le sel et le poivre noir moulu.
Étape 2
Ajoutez les cuisses de poulet à la marinade, enrobez-les bien et réfrigérez-les pendant au moins 2 heures, ou toute une nuit si possible.
Étape 3
Préchauffez le grill à feu moyen-élevé. Retirez les cuisses de poulet de la marinade et secouez l’excès de marinade. Placez les cuisses de poulet sur le grill et faites-les cuire pendant environ 30 minutes, en les retournant toutes les 5 à 7 minutes, jusqu’à ce qu’elles soient cuites à cœur.
Étape 4
Retirez les cuisses de poulet du grill et laissez-les reposer pendant quelques minutes avant de les servir chaudes, avec une garniture de votre choix (par exemple, du riz pilaf, des légumes sautés, ou une salade).',
120,
'Moyen',
2,
'poulet-tandoori.jpeg',
'Plat'
),

('BIRYANI DE POULET',
'2 tasses de riz basmati,
500g de poulet découpé en morceaux,
2 oignons hachés,
4 gousses d’ail émincées,
1 morceau de gingembre râpé,
2 tomates coupées en dés,
2 cuillères à soupe de yaourt nature,
2 cuillères à soupe d’huile végétale,
2 cuillères à soupe de beurre,
2 bâtons de cannelle,
4 gousses de cardamome,
2 feuilles de laurier,
2 cuillères à café de cumin en poudre,
2 cuillères à café de coriandre en poudre,
1 cuillère à café de curcuma,
1 cuillère à café de garam masala,
1 cuillère à café de sel,
2 tasses d’eau chaude',
'Le biryani est un plat indien traditionnel à base de riz et de viande. Voici une version classique de biryani de poulet',
'Étape 1
Rincez le riz plusieurs fois à l’eau froide jusqu’à ce que l’eau devienne claire. Laissez-le tremper dans de l’eau froide pendant 30 minutes. Égouttez et réservez.
Étape 2
Dans un grand bol, mélangez le yaourt, le curcuma, le cumin en poudre, la coriandre en poudre, le garam masala et le sel. Ajoutez les morceaux de poulet et mélangez bien pour que chaque morceau soit enrobé de marinade. Laissez mariner pendant 30 minutes.
Étape 3
Dans une grande casserole, faites chauffer l’huile végétale et le beurre à feu moyen. Ajoutez les bâtons de cannelle, les gousses de cardamome et les feuilles de laurier. Faites revenir les épices pendant environ une minute jusqu’à ce qu’elles commencent à libérer leur parfum.
Étape 4
Ajoutez les oignons hachés, l’ail émincé et le gingembre râpé. Faites revenir pendant environ 5 minutes jusqu’à ce que les oignons soient translucides.
Étape 5
Ajoutez les tomates coupées en dés et continuez à faire revenir pendant 5 minutes supplémentaires.
Étape 6
Ajoutez les morceaux de poulet marinés et faites-les revenir pendant environ 10 minutes jusqu’à ce qu’ils soient dorés.
Étape 7
Ajoutez le riz égoutté et mélangez bien pour qu’il soit enrobé des épices. Ajoutez l’eau chaude et portez à ébullition.
Étape 8
Réduisez le feu à moyen-doux, couvrez la casserole et laissez mijoter pendant environ 20 minutes ou jusqu’à ce que le riz soit cuit et l’eau ait été absorbée.',
 50, 
             'Moyen', 2,
             'biryani-poulet.jpeg',
             'Plat'),

('BUTTER CHICKEN',
'4 blancs de poulet,
2 oignons,
3 gousses d’ail,
1 morceau de gingembre,
1 boîte de tomates pelées,
25 cl de crème fraîche,
2 c. à soupe de ghee ou d’huile,
2 c. à soupe de concentré de tomates,
1 c. à café de coriandre moulue,
1 c. à café de cumin moulu,
1 c. à café de paprika,
1 c. à café de garam masala,
Sel et poivre',
'Le butter chicken est un plat traditionnel indien de poulet mijoté dans une sauce crémeuse et épicée à base de tomates. C’est un plat riche en saveurs et très apprécié des amateurs de cuisine indienne.',

        'Étape 1
        Coupez les blancs de poulet en morceaux.
        Étape 2
        Faites chauffer le ghee ou l’huile dans une grande poêle ou une cocotte.
        Ajoutez les oignons émincés, l’ail écrasé et le gingembre râpé, laissez cuire quelques minutes jusqu’à ce que les oignons soient translucides.
        Étape 3
        Ajoutez les épices : coriandre, cumin, paprika, garam masala et faites cuire 1 minute en remuant.
        Ajoutez le concentré de tomates et laissez cuire 1 minute de plus.
        Ajoutez les tomates pelées avec leur jus, salez et poivrez et laissez mijoter à feu moyen pendant 10 minutes environ.
        Étape 4
        Ajoutez les morceaux de poulet dans la sauce et laissez cuire à feu moyen pendant 15-20 minutes, en remuant de temps en temps.
        Ajoutez la crème fraîche en fin de cuisson, remuez bien et laissez mijoter encore 2-3 minutes avant de servir avec du riz basmati.',
         40, 
         'Facile', 1,
         'butter-chicken.jpeg',
         'Plat'
         ),

('POULET TIKKA MASALA',
'4 blancs de poulet,
2 oignons,
3 gousses d’ail,
1 morceau de gingembre,
2 tomates,
25 cl de crème fraîche,
2 c. à soupe d’huile,
2 c. à soupe de concentré de tomates,
1 c. à café de coriandre moulue,
1 c. à café de cumin moulu,
1 c. à café de curcuma,
1 c. à café de garam masala,
1 pincée de piment de Cayenne,
Sel et poivre',
'Le poulet tikka masala est un plat traditionnel indien de poulet mariné dans une sauce crémeuse et épicée à base de tomates',

'Étape 1
Dans un saladier, mélangez le yaourt, l’ail écrasé, le jus de citron, le gingembre, le curcuma, le paprika, le cumin, la coriandre et le garam masala. Salez et poivrez.
Étape 2
Ajoutez les morceaux de poulet et mélangez bien pour que tous les morceaux soient bien enrobés de marinade. Couvrez le saladier de film plastique et réservez au réfrigérateur pendant au moins 2 heures (ou une nuit).
Étape 3
Préchauffez le four à 220°C (thermostat 7-8) et tapissez une plaque de cuisson de papier sulfurisé.
Étape 4
Disposez les morceaux de poulet sur la plaque de cuisson, en veillant à ce qu’ils ne se touchent pas.
Étape 5
Enfournez et laissez cuire pendant environ 20 minutes, jusqu’à ce que le poulet soit cuit et légèrement doré.
Étape 6
Servez chaud, accompagné de riz basmati et de naans chauds. Vous pouvez également ajouter un peu de coriandre fraîche pour la décoration.',
60,
'Facile', 2,
'poulet-tikka-masala.jpeg',
'Plat'
);
COMMIT;