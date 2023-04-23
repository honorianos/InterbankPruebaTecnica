//
//  MookData.swift
//  InterbankPruebaTecnicaTests
//
//  Created by Oswaldo Escobar on 23/04/23.
//

import Foundation

enum FIFMoock {
    typealias JSONObject = [String: Any]
    case dataArray
    case errors
    var responseString: String {
        switch self {
        case .dataArray: return FIFMoock.DataString
        case .errors: return FIFMoock.errorsString
        }
    }
    var responseObject: JSONObject? {
        guard
            let data = responseString.data(using: .utf8),
            let object = try? JSONSerialization.jsonObject(with: data, options: []) as? JSONObject
        else {
            return nil
        }
        return object
    }
    private static let DataString =
    """
    {
        "meta": {
            "pagination": {
                "total": 1238,
                "pages": 124,
                "page": 1,
                "limit": 10,
                "links": {
                    "previous": null,
                    "current": "https://gorest.co.in/public/v1/posts?page=1",
                    "next": "https://gorest.co.in/public/v1/posts?page=2"
                }
            }
        },
        "data": [
            {
                "id": 14314,
                "user_id": 1168317,
                "title": "Volaticus vetus thesaurus umbra sustineo vigilo coadunatio.",
                "body": "Volutabrum depraedor clarus. Tempore pectus centum. Creber uter suadeo. Non confero cras. Canis aut vinco. Tabella clarus dens. Dens decumbo conspergo. Capio adopto tenax. Claro attollo deprimo. Spes possimus absens. Auctus allatus verecundia. Spargo provident omnis. Tero cubitum consuasor. Sint barba arma. Aperte vestrum curis. Via accendo tristis. Conforto taedium depraedor. Charisma sui libero. Adhaero vacuus vociferor."
            },
            {
                "id": 14313,
                "user_id": 1168315,
                "title": "Angulus crapula cerno volup explicabo nihil degenero pauper talio quia molestias vado adversus viduata repudiandae volo.",
                "body": "Tonsor cicuta officia. Delinquo certo pariatur. Deprecator voluptas dolorem. Vos expedita deduco. Vulgus somniculosus vacuus. Enim ater decipio. Thymbra audio victoria. Audentia sol tolero. Fuga possimus asporto. Depereo vel demitto. Calco abduco tantum. Peccatus ulciscor tego. Atque astrum clementia. Defero amo suffragium. Tibi delego et. Molestias quod trepide. Vito accedo tumultus. Cultura cur hic."
            },
            {
                "id": 14312,
                "user_id": 1168311,
                "title": "Eveniet conqueror deserunt conforto calculus tamen arto autem appello timor venio cibo et vespillo.",
                "body": "Stultus tener valens. Autem tricesimus cupio. Theca crustulum ventus. Aeger sunt repudiandae. Coaegresco agnosco ea. Benigne patruus substantia. Complectus undique defendo. Cerno molestiae video. Unde varius antepono. Molestiae delibero vel. Tego arbor pecco. Cunae aliquid advenio. Colo conforto curiositas. Admoveo accipio iste. Auris eos verumtamen. Canis alias ullam."
            },
            {
                "id": 14242,
                "user_id": 1161240,
                "title": "Creo viduata cohibeo non demoror conventus laborum timidus vindico atque sumptus denuncio vomito.",
                "body": "Tam veritatis claro. Somnus vix labore. Officiis adfero cogo. Tenuis vorago apud. Antiquus aestus cunae. Auditor dolorem bestia. Talis amplexus ulciscor. Animus doloribus speculum. Ante cursim umbra. Thorax accedo ea. Avoco denego suus. Asperiores conicio tamisium. Culpa sufficio quia. Patior temperantia adfero. Curto vos acidus. Cavus crapula et. Vilitas curso corpus. Consequuntur canis campana. Bibo natus et."
            },
            {
                "id": 14226,
                "user_id": 1158348,
                "title": "Quia tenetur degusto adstringo aro audentia trado curriculum caste terreo demonstro delectus taceo tendo consuasor repellat.",
                "body": "Comes demum modi. Occaecati defetiscor dens. Cruciamentum textor beneficium. Circumvenio derideo crustulum. Creta laborum tantum. Velit umbra clibanus. Antiquus vicinus et. Vesica urbs alter. Uredo quis tollo. In sequi corrigo. Aranea quos curriculum. Auris villa tribuo. Beneficium aspernatur depulso. Triginta vapulus qui. Cibo occaecati video. Virtus alius pecus. Vomica non dolorum. Et delectatio atque. At thesaurus sollicito."
            },
            {
                "id": 14225,
                "user_id": 1158348,
                "title": "Taedium cibus viscus conicio necessitatibus temptatio capillus eum cunctatio tantillus quos pax utrimque vehemens.",
                "body": "Incidunt pauci causa. Omnis sortitus auxilium. Super vulticulus vesper. Qui totus acsi. Vestrum ut harum. Blandior conforto curtus. Congregatio custodia cado. Arto decipio asporto. Antea officia aequus. Summisse umquam tristis. Succedo defigo summisse. Attero demum caritas. Dedecor statim vigilo. Adultus vel comitatus. Tener acceptus tactus. Unde adipisci stabilis. Volutabrum reiciendis canto. Sub coniuratio tripudio."
            },
            {
                "id": 14206,
                "user_id": 1153800,
                "title": "Dignissimos comes tendo arbustum texo certus pecunia.",
                "body": "Cinis aliqua vinco. Audeo candidus pariatur. Peior amissio avarus. Voluptatem texo blandior. Charisma cinis mollitia. Ut tribuo voluptatibus. Voluptatibus capto aetas. Causa cras antepono. Acsi vapulus ait. Et delectus verus. Amissio pecco socius. Admiratio ceno beatae. Vobis nostrum eligendi. Et alter blandior. Credo degusto theologus. Asper solitudo credo. Qui combibo conitor. Talus crapula terebro. Tolero dens recusandae. Aro trans contego."
            },
            {
                "id": 14205,
                "user_id": 1153800,
                "title": "Adulescens animus virgo clamo aranea acervus advenio cariosus tabesco alius capto.",
                "body": "Quo voluptates uxor. Corrupti consectetur ascisco. Sto viriliter quis. Accusantium accedo acerbitas. Colloco validus absconditus. Crur virtus crinis. Bene comitatus ultra. Tametsi vivo odit. Termes adipisci arceo. Creator acerbitas voluptatem. Dolores volaticus defleo. Custodia ducimus sed. Bestia aeger valetudo. Voluptas solio vinum. Accendo defaeco quibusdam. Socius ut tersus. Cibo tenuis decet."
            },
            {
                "id": 14203,
                "user_id": 1153798,
                "title": "Titulus amita tripudio tepesco pecunia ulciscor caritas valde curvus textus adficio currus vergo.",
                "body": "Congregatio admoneo autem. Suggero dolores deduco. Aegrotatio absque magnam. Et caput deserunt. Vergo cornu delectatio. Voluntarius spoliatio approbo. Tamdiu necessitatibus tam. Arbitro absens thymbra. Crastinus cado rerum. Vilicus sumptus alienus. Magnam vulticulus cariosus. Callide conservo apud. Cribro demergo concido. Volaticus cornu pariatur. Cubitum tactus qui. Caste sophismata verecundia. Approbo collum compello. Aggero tot teres."
            },
            {
                "id": 14202,
                "user_id": 1153794,
                "title": "Comedo acquiro virgo tamquam peior consequatur depono umbra adnuo demulceo auctor culpa clarus.",
                "body": "Alius vulpes spargo. Turba quas sit. Dapifer odio acquiro. Cernuus vulgivagus concedo. Blandior desolo vere. Ascisco sit vigilo. Crustulum consequatur amita. Bene adfero calamitas. Amitto triumphus eligendi. Vulariter statua altus. Comitatus texo ipsa. Cuppedia ara ver. Voluptas ambitus magni. Summopere depulso acer. Explicabo vos officia. Conculco eius tondeo. Thymbra paulatim cervus. Est error torqueo. Attero adsidue ea. Cruentus speciosus suggero."
            }
        ]
    }
    """
    private static let errorsString =
    """
    {
      "errors": [
        {
          "message": "Unexpected error value: Err products rest service: Error",
          "locations": [
            {
              "line": 16,
              "column": 3
            }
          ],
          "path": [
            "consolidated"
          ],
          "extensions": {
            "code": "INTERNAL_SERVER_ERROR"
          }
        }
      ],
      "data": null
    }
    """

}
