//
//  CalculatorBrain.swift
//  三國志戰略版抽卡模擬器
//
//  Created by Fubon Chu on 13/7/2021.
//

import UIKit

struct CalculatorBrain {
    
    var firstCard: CharactorAll?
    var secondCard: CharactorAll?
    var thirdCard: CharactorAll?
    var fourthCard: CharactorAll?
    var fifthCard: CharactorAll?
    var cardID: Int = 0
    var cardIDOne: Int = 0
    var cardIDTwo: Int = 0
    var cardIDThree: Int = 0
    var cardIDFour: Int = 0
    var cardIDFive: Int = 0
    
    var curCharPool = [
        CharactorAll(name: "SuenKuen", cname: "孫權", rarity: "5S", season: 1),
        CharactorAll(name: "LauBei", cname: "劉備", rarity: "5S", season: 1),
        CharactorAll(name: "ChoCho", cname: "曹操", rarity: "5S", season: 1),
        CharactorAll(name: "CheungFei", cname: "張飛", rarity: "5S", season: 1),
        CharactorAll(name: "KwanYu", cname: "關羽", rarity: "5S", season: 1),
        CharactorAll(name: "LuiBo", cname: "呂布", rarity: "5S", season: 1),
        CharactorAll(name: "ChiuWan", cname: "趙雲", rarity: "5S", season: 1),
        CharactorAll(name: "ChowYu", cname: "周瑜", rarity: "5S", season: 1),
        CharactorAll(name: "ChuGeLeung", cname: "諸葛亮", rarity: "5S", season: 1),
        CharactorAll(name: "LukSun", cname: "陸遜", rarity: "5S", season: 1),
        CharactorAll(name: "TaiSiChi", cname: "太史慈", rarity: "5S", season: 1),
        CharactorAll(name: "LokChun", cname: "樂進", rarity: "5S", season: 1),
        CharactorAll(name: "DinWai", cname: "典韋", rarity: "5S", season: 1),
        CharactorAll(name: "HuiChu", cname: "許褚", rarity: "5S", season: 1),
        CharactorAll(name: "MaChiu", cname: "馬超", rarity: "5S", season: 1),
        //        CharactorAll(name: "CMaYi", cname: "司馬懿", rarity: "5S", season: 2),
        //        CharactorAll(name: "CheungLiu", cname: "張遼", rarity: "5S", season: 2),
        //        CharactorAll(name: "PongTong", cname: "龐統", rarity: "5S", season: 2),
        //        CharactorAll(name: "SuenSheungHeung", cname: "孫尚香", rarity: "5S", season: 2),
        //        CharactorAll(name: "CheungWan", cname: "張紘", rarity: "5S", season: 2),
        //        CharactorAll(name: "MaWanLuk", cname: "馬雲䘵", rarity: "5S", season: 2),
        //        CharactorAll(name: "CheungKei", cname: "張姬", rarity: "5S", season: 2),
        //        CharactorAll(name: "ChanKung", cname: "陳宮", rarity: "5S", season: 2),
        //        CharactorAll(name: "GaHui", cname: "賈詡", rarity: "5S", season: 3),
        //        CharactorAll(name: "LoSuk", cname: "魯肅", rarity: "5S", season: 3),
        //        CharactorAll(name: "KwokChiu", cname: "郝昭", rarity: "5S", season: 3),
        //        CharactorAll(name: "CheungYun", cname: "蔣琬", rarity: "5S", season: 3),
        //        CharactorAll(name: "LingTung", cname: "凌統", rarity: "5S", season: 3),
        //        CharactorAll(name: "MokLukKing", cname: "木鹿大王", rarity: "5S", season: 3),
        //        CharactorAll(name: "LukKwong", cname: "陸抗", rarity: "5S", season: 4),
        //        CharactorAll(name: "ChowTai", cname: "周泰", rarity: "5S", season: 4),
        //        CharactorAll(name: "SunYao", cname: "荀攸", rarity: "5S", season: 4),
        //        CharactorAll(name: "KeungWai", cname: "姜維", rarity: "5S", season: 4),
        //        CharactorAll(name: "KoNam", cname: "高覽", rarity: "5S", season: 4),
        //        CharactorAll(name: "CheungChunWa", cname: "張春華", rarity: "5S", season: 4),
        //        CharactorAll(name: "YimNgan", cname: "嚴顏", rarity: "5S", season: 4),
        //        CharactorAll(name: "YuenSuk", cname: "袁術", rarity: "5S", season: 4),
        //        CharactorAll(name: "YuenSiuSP", cname: "袁紹SP", rarity: "5S", season: 5),
        //        CharactorAll(name: "KwanNganPing", cname: "關銀屏", rarity: "5S", season: 5),
        CharactorAll(name: "SuenKin", cname: "孫堅", rarity: "5S", season: 1),
        CharactorAll(name: "SuenChak", cname: "孫策", rarity: "5S", season: 1),
        CharactorAll(name: "LuiMung", cname: "呂蒙", rarity: "5S", season: 1),
        CharactorAll(name: "KwokGa", cname: "郭嘉", rarity: "5S", season: 1),
        CharactorAll(name: "ChongWui", cname: "鍾會", rarity: "5S", season: 1),
        CharactorAll(name: "PongTak", cname: "龐德", rarity: "5S", season: 1),
        CharactorAll(name: "WongChong", cname: "黃忠", rarity: "5S", season: 1),
        CharactorAll(name: "TungCheuk", cname: "董卓", rarity: "5S", season: 1),
        CharactorAll(name: "JorChi", cname: "左慈", rarity: "5S", season: 1),
        CharactorAll(name: "KamLing", cname: "甘寧", rarity: "5S", season: 1),
        CharactorAll(name: "HaHaoTong", cname: "夏侯惇", rarity: "5S", season: 1),
        CharactorAll(name: "ChuiFong", cname: "徐晃", rarity: "5S", season: 1),
        CharactorAll(name: "FaChing", cname: "法正", rarity: "5S", season: 1),
        CharactorAll(name: "WongYuetYing", cname: "黃月英", rarity: "5S", season: 1),
        CharactorAll(name: "WaTur", cname: "華陀", rarity: "5S", season: 1),
        CharactorAll(name: "NganLeung", cname: "顏良", rarity: "5S", season: 1),
        CharactorAll(name: "CMaFai", cname: "司馬徽", rarity: "5S", season: 1),
        CharactorAll(name: "YuGut", cname: "于吉", rarity: "5S", season: 1),
        CharactorAll(name: "CheungKok", cname: "張角", rarity: "5S", season: 1),
        CharactorAll(name: "CheungChiu", cname: "張昭", rarity: "5S", season: 1),
        CharactorAll(name: "TaiKiu", cname: "大喬", rarity: "5S", season: 1),
        CharactorAll(name: "SiuKiu", cname: "小喬", rarity: "5S", season: 1),
        CharactorAll(name: "ChangPo", cname: "程普", rarity: "5S", season: 1),
        CharactorAll(name: "WaHung", cname: "華雄", rarity: "5S", season: 1),
        CharactorAll(name: "SunYuk", cname: "荀彧", rarity: "5S", season: 1),
        CharactorAll(name: "ChangYuk", cname: "程昱", rarity: "5S", season: 1),
        CharactorAll(name: "YenKei", cname: "甄姬", rarity: "5S", season: 1),
        CharactorAll(name: "HaHaoYuen", cname: "夏侯惇", rarity: "5S", season: 1),
        CharactorAll(name: "ChoYen", cname: "曹仁", rarity: "5S", season: 1),
        CharactorAll(name: "TangAi", cname: "鄧艾", rarity: "5S", season: 1),
        CharactorAll(name: "YuKum", cname: "于禁", rarity: "5S", season: 1),
        CharactorAll(name: "CheungHap", cname: "張郃", rarity: "5S", season: 1),
        CharactorAll(name: "ChuiShu", cname: "徐庶", rarity: "5S", season: 1),
        CharactorAll(name: "YuenSiu", cname: "袁紹", rarity: "5S", season: 1),
        CharactorAll(name: "DiuSim", cname: "貂禪", rarity: "5S", season: 1),
        CharactorAll(name: "ChoiManKei", cname: "蔡文姬", rarity: "5S", season: 1),
        CharactorAll(name: "ManWok", cname: "孟獲", rarity: "5S", season: 1),
        CharactorAll(name: "ManChow", cname: "文醜", rarity: "5S", season: 1),
        CharactorAll(name: "KungSuenChan", cname: "公孫瓚", rarity: "5S", season: 1),
        CharactorAll(name: "MaTeng", cname: "馬騰", rarity: "5S", season: 1),
        CharactorAll(name: "ChoSun", cname: "曹純", rarity: "5S", season: 1),
        CharactorAll(name: "ChanDou", cname: "陳到", rarity: "5S", season: 1),
        CharactorAll(name: "WongPing", cname: "王平", rarity: "5S", season: 1),
        CharactorAll(name: "UkTukGuik", cname: "兀突骨", rarity: "5S", season: 1),
        CharactorAll(name: "KoShun", cname: "高順", rarity: "5S", season: 1),
        CharactorAll(name: "ChoPei", cname: "曹丕", rarity: "5S", season: 1),
        CharactorAll(name: "ChoChik", cname: "曹植", rarity: "5S", season: 1),
        CharactorAll(name: "ChanKun", cname: "陳群", rarity: "5S", season: 1),
        CharactorAll(name: "WongGui", cname: "黃蓋", rarity: "5S", season: 1),
        CharactorAll(name: "LeeYu", cname: "李儒", rarity: "5S", season: 1),
        CharactorAll(name: "ChokYung", cname: "祝融夫人", rarity: "5S", season: 1),
        CharactorAll(name: "LuiLingYee", cname: "呂玲綺", rarity: "5S", season: 1),
        CharactorAll(name: "TinFung", cname: "田豐", rarity: "5S", season: 1),
        CharactorAll(name: "WongKuen", cname: "黃權", rarity: "4S", season: 1),
        CharactorAll(name: "MeiJok", cname: "糜竺", rarity: "4S", season: 1),
        CharactorAll(name: "TungWan", cname: "董允", rarity: "4S", season: 1),
        CharactorAll(name: "ChowChon", cname: "周倉", rarity: "4S", season: 1),
        CharactorAll(name: "LauFung", cname: "劉封", rarity: "4S", season: 1),
        CharactorAll(name: "KwanPing", cname: "關平", rarity: "4S", season: 1),
        CharactorAll(name: "FaiYi", cname: "費褘", rarity: "4S", season: 1),
        CharactorAll(name: "KanYung", cname: "簡雍", rarity: "4S", season: 1),
        CharactorAll(name: "MaSuk", cname: "馬謖", rarity: "4S", season: 1),
        CharactorAll(name: "LiuFa", cname: "廖化", rarity: "4S", season: 1),
        CharactorAll(name: "MaLeung", cname: "馬良", rarity: "4S", season: 1),
        CharactorAll(name: "SaMoHo", cname: "沙摩柯", rarity: "4S", season: 1),
        CharactorAll(name: "LeeYim", cname: "李嚴", rarity: "4S", season: 1),
        CharactorAll(name: "YeungSao", cname: "楊修", rarity: "4S", season: 1),
        CharactorAll(name: "LauYip", cname: "劉曄", rarity: "4S", season: 1),
        CharactorAll(name: "ManPing", cname: "文聘", rarity: "4S", season: 1),
        CharactorAll(name: "ChoCheung", cname: "曹彰", rarity: "4S", season: 1),
        CharactorAll(name: "ChanLam", cname: "陳琳", rarity: "4S", season: 1),
        CharactorAll(name: "ChoHung", cname: "曹洪", rarity: "4S", season: 1),
        CharactorAll(name: "ChungYiu", cname: "鍾繇", rarity: "4S", season: 1),
        CharactorAll(name: "ChoChun", cname: "曹真", rarity: "4S", season: 1),
        CharactorAll(name: "WongLong", cname: "王朗", rarity: "4S", season: 1),
        CharactorAll(name: "ChongBa", cname: "臧霸", rarity: "4S", season: 1),
        CharactorAll(name: "KwokRai", cname: "郭淮", rarity: "4S", season: 1),
        CharactorAll(name: "LeeDin", cname: "李典", rarity: "4S", season: 1),
        CharactorAll(name: "ChanMo", cname: "陳武", rarity: "4S", season: 1),
        CharactorAll(name: "ChuWoon", cname: "朱桓", rarity: "4S", season: 1),
        CharactorAll(name: "HonDon", cname: "韓當", rarity: "4S", season: 1),
        CharactorAll(name: "BoLinShi", cname: "步練師", rarity: "4S", season: 1),
        CharactorAll(name: "TungChap", cname: "董襲", rarity: "4S", season: 1),
        CharactorAll(name: "CheungYum", cname: "蔣欽", rarity: "4S", season: 1),
        CharactorAll(name: "DingFung", cname: "丁奉", rarity: "4S", season: 1),
        CharactorAll(name: "LuiFan", cname: "呂範", rarity: "4S", season: 1),
        CharactorAll(name: "PoonCheung", cname: "潘璋", rarity: "4S", season: 1),
        CharactorAll(name: "ChuGeGun", cname: "諸葛瑾", rarity: "4S", season: 1),
        CharactorAll(name: "KuYun", cname: "顧雍", rarity: "4S", season: 1),
        CharactorAll(name: "ChuiShing", cname: "徐盛", rarity: "4S", season: 1),
        CharactorAll(name: "WuGuiYi", cname: "胡車兒", rarity: "4S", season: 1),
        CharactorAll(name: "FungKei", cname: "逢紀", rarity: "4S", season: 1),
        CharactorAll(name: "KeiLing", cname: "紀靈", rarity: "4S", season: 1),
        CharactorAll(name: "CheungSao", cname: "張繡", rarity: "4S", season: 1),
        CharactorAll(name: "ChuChun", cname: "朱儁", rarity: "4S", season: 1),
        CharactorAll(name: "HungYung", cname: "孔融", rarity: "4S", season: 1),
        CharactorAll(name: "KwokChi", cname: "郭汜", rarity: "4S", season: 1),
        CharactorAll(name: "CheungLo", cname: "張魯", rarity: "4S", season: 1),
        CharactorAll(name: "HonShui", cname: "韓遂", rarity: "4S", season: 1),
        CharactorAll(name: "CheungYin", cname: "張燕", rarity: "4S", season: 1),
        CharactorAll(name: "CheungManShing", cname: "張曼成", rarity: "4S", season: 1),
        CharactorAll(name: "LeeHok", cname: "李傕", rarity: "4S", season: 1),
        CharactorAll(name: "ShumPui", cname: "審配", rarity: "4S", season: 1),
        CharactorAll(name: "WongPoSung", cname: "皇甫嵩", rarity: "4S", season: 1),
        CharactorAll(name: "CheungLeung", cname: "張梁", rarity: "4S", season: 1),
        CharactorAll(name: "CheungYumg", cname: "張任", rarity: "4S", season: 1),
        CharactorAll(name: "MaTit", cname: "馬鐵", rarity: "4S", season: 1),
        CharactorAll(name: "LoChik", cname: "盧植", rarity: "4S", season: 1),
        CharactorAll(name: "KwokTo", cname: "郭圖", rarity: "4S", season: 1),
        CharactorAll(name: "GoonHoi", cname: "管亥", rarity: "4S", season: 1),
        CharactorAll(name: "LauBiu", cname: "劉表", rarity: "4S", season: 1),
        CharactorAll(name: "CheungBo", cname: "張寶", rarity: "4S", season: 1),
        CharactorAll(name: "HeungChong", cname: "向寵", rarity: "3S", season: 1),
        CharactorAll(name: "NgYi", cname: "吳懿", rarity: "3S", season: 1),
        CharactorAll(name: "FuSiYan", cname: "傅士仁", rarity: "3S", season: 1),
        CharactorAll(name: "FaiSi", cname: "費詩", rarity: "3S", season: 1),
        CharactorAll(name: "LauSim", cname: "劉襌", rarity: "3S", season: 1),
        CharactorAll(name: "LauBa", cname: "劉巴", rarity: "3S", season: 1),
        CharactorAll(name: "TangChi", cname: "鄧芝", rarity: "3S", season: 1),
        CharactorAll(name: "ChuGeJim", cname: "諸葛詹", rarity: "3S", season: 1),
        CharactorAll(name: "SuenKeen", cname: "孫乾", rarity: "3S", season: 1),
        CharactorAll(name: "MeiFong", cname: "糜芳", rarity: "3S", season: 1),
        CharactorAll(name: "CheJau", cname: "車胄", rarity: "3S", season: 1),
        CharactorAll(name: "HaHaoYan", cname: "夏侯恩", rarity: "3S", season: 1),
        CharactorAll(name: "ChoYau", cname: "曹休", rarity: "3S", season: 1),
        CharactorAll(name: "PinHei", cname: "卞喜", rarity: "3S", season: 1),
        CharactorAll(name: "LuiKin", cname: "呂虔", rarity: "3S", season: 1),
        CharactorAll(name: "WaYum", cname: "華歆", rarity: "3S", season: 1),
        CharactorAll(name: "MoKai", cname: "毛玠", rarity: "3S", season: 1),
        CharactorAll(name: "TungChiu", cname: "董昭", rarity: "3S", season: 1),
        CharactorAll(name: "ChuYin", cname: "朱然", rarity: "3S", season: 1),
        CharactorAll(name: "YuFan", cname: "虞翻", rarity: "3S", season: 1),
        CharactorAll(name: "ChuenChung", cname: "全琮", rarity: "3S", season: 1),
        CharactorAll(name: "HumChak", cname: "闞澤", rarity: "3S", season: 1),
        CharactorAll(name: "PoonYui", cname: "潘濬", rarity: "3S", season: 1),
        CharactorAll(name: "BoAnk", cname: "步騭", rarity: "3S", season: 1),
        CharactorAll(name: "SuenHo", cname: "孫皓", rarity: "3S", season: 1),
        CharactorAll(name: "ToHim", cname: "陶謙", rarity: "3S", season: 1),
        CharactorAll(name: "SungHin", cname: "宋憲", rarity: "3S", season: 1),
        CharactorAll(name: "PoonFung", cname: "潘鳳", rarity: "3S", season: 1),
        CharactorAll(name: "HoChun", cname: "何進", rarity: "3S", season: 1),
        CharactorAll(name: "DingYuen", cname: "丁原", rarity: "3S", season: 1),
        CharactorAll(name: "WongWun", cname: "王允", rarity: "3S", season: 1),
        CharactorAll(name: "LauYiu", cname: "孫繇", rarity: "3S", season: 1),
    ]
    
    
    let charPoolOne = [
        CharactorAll(name: "SuenKuen", cname: "孫權", rarity: "5S", season: 1),
        CharactorAll(name: "LauBei", cname: "劉備", rarity: "5S", season: 1),
        CharactorAll(name: "ChoCho", cname: "曹操", rarity: "5S", season: 1),
        CharactorAll(name: "CheungFei", cname: "張飛", rarity: "5S", season: 1),
        CharactorAll(name: "KwanYu", cname: "關羽", rarity: "5S", season: 1),
        CharactorAll(name: "LuiBo", cname: "呂布", rarity: "5S", season: 1),
        CharactorAll(name: "ChiuWan", cname: "趙雲", rarity: "5S", season: 1),
        CharactorAll(name: "ChowYu", cname: "周瑜", rarity: "5S", season: 1),
        CharactorAll(name: "ChuGeLeung", cname: "諸葛亮", rarity: "5S", season: 1),
        CharactorAll(name: "LukSun", cname: "陸遜", rarity: "5S", season: 1),
        CharactorAll(name: "TaiSiChi", cname: "太史慈", rarity: "5S", season: 1),
        CharactorAll(name: "LokChun", cname: "樂進", rarity: "5S", season: 1),
        CharactorAll(name: "DinWai", cname: "典韋", rarity: "5S", season: 1),
        CharactorAll(name: "HuiChu", cname: "許褚", rarity: "5S", season: 1),
        CharactorAll(name: "MaChiu", cname: "馬超", rarity: "5S", season: 1),
        //        CharactorAll(name: "CMaYi", cname: "司馬懿", rarity: "5S", season: 2),
        //        CharactorAll(name: "CheungLiu", cname: "張遼", rarity: "5S", season: 2),
        //        CharactorAll(name: "PongTong", cname: "龐統", rarity: "5S", season: 2),
        //        CharactorAll(name: "SuenSheungHeung", cname: "孫尚香", rarity: "5S", season: 2),
        //        CharactorAll(name: "CheungWan", cname: "張紘", rarity: "5S", season: 2),
        //        CharactorAll(name: "MaWanLuk", cname: "馬雲䘵", rarity: "5S", season: 2),
        //        CharactorAll(name: "CheungKei", cname: "張姬", rarity: "5S", season: 2),
        //        CharactorAll(name: "ChanKung", cname: "陳宮", rarity: "5S", season: 2),
        //        CharactorAll(name: "GaHui", cname: "賈詡", rarity: "5S", season: 3),
        //        CharactorAll(name: "LoSuk", cname: "魯肅", rarity: "5S", season: 3),
        //        CharactorAll(name: "KwokChiu", cname: "郝昭", rarity: "5S", season: 3),
        //        CharactorAll(name: "CheungYun", cname: "蔣琬", rarity: "5S", season: 3),
        //        CharactorAll(name: "LingTung", cname: "凌統", rarity: "5S", season: 3),
        //        CharactorAll(name: "MokLukKing", cname: "木鹿大王", rarity: "5S", season: 3),
        //        CharactorAll(name: "LukKwong", cname: "陸抗", rarity: "5S", season: 4),
        //        CharactorAll(name: "ChowTai", cname: "周泰", rarity: "5S", season: 4),
        //        CharactorAll(name: "SunYao", cname: "荀攸", rarity: "5S", season: 4),
        //        CharactorAll(name: "KeungWai", cname: "姜維", rarity: "5S", season: 4),
        //        CharactorAll(name: "KoNam", cname: "高覽", rarity: "5S", season: 4),
        //        CharactorAll(name: "CheungChunWa", cname: "張春華", rarity: "5S", season: 4),
        //        CharactorAll(name: "YimNgan", cname: "嚴顏", rarity: "5S", season: 4),
        //        CharactorAll(name: "YuenSuk", cname: "袁術", rarity: "5S", season: 4),
        //        CharactorAll(name: "YuenSiuSP", cname: "袁紹SP", rarity: "5S", season: 5),
        //        CharactorAll(name: "KwanNganPing", cname: "關銀屏", rarity: "5S", season: 5),
        CharactorAll(name: "SuenKin", cname: "孫堅", rarity: "5S", season: 1),
        CharactorAll(name: "SuenChak", cname: "孫策", rarity: "5S", season: 1),
        CharactorAll(name: "LuiMung", cname: "呂蒙", rarity: "5S", season: 1),
        CharactorAll(name: "KwokGa", cname: "郭嘉", rarity: "5S", season: 1),
        CharactorAll(name: "ChongWui", cname: "鍾會", rarity: "5S", season: 1),
        CharactorAll(name: "PongTak", cname: "龐德", rarity: "5S", season: 1),
        CharactorAll(name: "WongChong", cname: "黃忠", rarity: "5S", season: 1),
        CharactorAll(name: "TungCheuk", cname: "董卓", rarity: "5S", season: 1),
        CharactorAll(name: "JorChi", cname: "左慈", rarity: "5S", season: 1),
        CharactorAll(name: "KamLing", cname: "甘寧", rarity: "5S", season: 1),
        CharactorAll(name: "HaHaoTong", cname: "夏侯惇", rarity: "5S", season: 1),
        CharactorAll(name: "ChuiFong", cname: "徐晃", rarity: "5S", season: 1),
        CharactorAll(name: "FaChing", cname: "法正", rarity: "5S", season: 1),
        CharactorAll(name: "WongYuetYing", cname: "黃月英", rarity: "5S", season: 1),
        CharactorAll(name: "WaTur", cname: "華陀", rarity: "5S", season: 1),
        CharactorAll(name: "NganLeung", cname: "顏良", rarity: "5S", season: 1),
        CharactorAll(name: "CMaFai", cname: "司馬徽", rarity: "5S", season: 1),
        CharactorAll(name: "YuGut", cname: "于吉", rarity: "5S", season: 1),
        CharactorAll(name: "CheungKok", cname: "張角", rarity: "5S", season: 1),
        CharactorAll(name: "CheungChiu", cname: "張昭", rarity: "5S", season: 1),
        CharactorAll(name: "TaiKiu", cname: "大喬", rarity: "5S", season: 1),
        CharactorAll(name: "SiuKiu", cname: "小喬", rarity: "5S", season: 1),
        CharactorAll(name: "ChangPo", cname: "程普", rarity: "5S", season: 1),
        CharactorAll(name: "WaHung", cname: "華雄", rarity: "5S", season: 1),
        CharactorAll(name: "SunYuk", cname: "荀彧", rarity: "5S", season: 1),
        CharactorAll(name: "ChangYuk", cname: "程昱", rarity: "5S", season: 1),
        CharactorAll(name: "YenKei", cname: "甄姬", rarity: "5S", season: 1),
        CharactorAll(name: "HaHaoYuen", cname: "夏侯惇", rarity: "5S", season: 1),
        CharactorAll(name: "ChoYen", cname: "曹仁", rarity: "5S", season: 1),
        CharactorAll(name: "TangAi", cname: "鄧艾", rarity: "5S", season: 1),
        CharactorAll(name: "YuKum", cname: "于禁", rarity: "5S", season: 1),
        CharactorAll(name: "CheungHap", cname: "張郃", rarity: "5S", season: 1),
        CharactorAll(name: "ChuiShu", cname: "徐庶", rarity: "5S", season: 1),
        CharactorAll(name: "YuenSiu", cname: "袁紹", rarity: "5S", season: 1),
        CharactorAll(name: "DiuSim", cname: "貂禪", rarity: "5S", season: 1),
        CharactorAll(name: "ChoiManKei", cname: "蔡文姬", rarity: "5S", season: 1),
        CharactorAll(name: "ManWok", cname: "孟獲", rarity: "5S", season: 1),
        CharactorAll(name: "ManChow", cname: "文醜", rarity: "5S", season: 1),
        CharactorAll(name: "KungSuenChan", cname: "公孫瓚", rarity: "5S", season: 1),
        CharactorAll(name: "MaTeng", cname: "馬騰", rarity: "5S", season: 1),
        CharactorAll(name: "ChoSun", cname: "曹純", rarity: "5S", season: 1),
        CharactorAll(name: "ChanDou", cname: "陳到", rarity: "5S", season: 1),
        CharactorAll(name: "WongPing", cname: "王平", rarity: "5S", season: 1),
        CharactorAll(name: "UkTukGuik", cname: "兀突骨", rarity: "5S", season: 1),
        CharactorAll(name: "KoShun", cname: "高順", rarity: "5S", season: 1),
        CharactorAll(name: "ChoPei", cname: "曹丕", rarity: "5S", season: 1),
        CharactorAll(name: "ChoChik", cname: "曹植", rarity: "5S", season: 1),
        CharactorAll(name: "ChanKun", cname: "陳群", rarity: "5S", season: 1),
        CharactorAll(name: "WongGui", cname: "黃蓋", rarity: "5S", season: 1),
        CharactorAll(name: "LeeYu", cname: "李儒", rarity: "5S", season: 1),
        CharactorAll(name: "ChokYung", cname: "祝融夫人", rarity: "5S", season: 1),
        CharactorAll(name: "LuiLingYee", cname: "呂玲綺", rarity: "5S", season: 1),
        CharactorAll(name: "TinFung", cname: "田豐", rarity: "5S", season: 1),
        CharactorAll(name: "WongKuen", cname: "黃權", rarity: "4S", season: 1),
        CharactorAll(name: "MeiJok", cname: "糜竺", rarity: "4S", season: 1),
        CharactorAll(name: "TungWan", cname: "董允", rarity: "4S", season: 1),
        CharactorAll(name: "ChowChon", cname: "周倉", rarity: "4S", season: 1),
        CharactorAll(name: "LauFung", cname: "劉封", rarity: "4S", season: 1),
        CharactorAll(name: "KwanPing", cname: "關平", rarity: "4S", season: 1),
        CharactorAll(name: "FaiYi", cname: "費褘", rarity: "4S", season: 1),
        CharactorAll(name: "KanYung", cname: "簡雍", rarity: "4S", season: 1),
        CharactorAll(name: "MaSuk", cname: "馬謖", rarity: "4S", season: 1),
        CharactorAll(name: "LiuFa", cname: "廖化", rarity: "4S", season: 1),
        CharactorAll(name: "MaLeung", cname: "馬良", rarity: "4S", season: 1),
        CharactorAll(name: "SaMoHo", cname: "沙摩柯", rarity: "4S", season: 1),
        CharactorAll(name: "LeeYim", cname: "李嚴", rarity: "4S", season: 1),
        CharactorAll(name: "YeungSao", cname: "楊修", rarity: "4S", season: 1),
        CharactorAll(name: "LauYip", cname: "劉曄", rarity: "4S", season: 1),
        CharactorAll(name: "ManPing", cname: "文聘", rarity: "4S", season: 1),
        CharactorAll(name: "ChoCheung", cname: "曹彰", rarity: "4S", season: 1),
        CharactorAll(name: "ChanLam", cname: "陳琳", rarity: "4S", season: 1),
        CharactorAll(name: "ChoHung", cname: "曹洪", rarity: "4S", season: 1),
        CharactorAll(name: "ChungYiu", cname: "鍾繇", rarity: "4S", season: 1),
        CharactorAll(name: "ChoChun", cname: "曹真", rarity: "4S", season: 1),
        CharactorAll(name: "WongLong", cname: "王朗", rarity: "4S", season: 1),
        CharactorAll(name: "ChongBa", cname: "臧霸", rarity: "4S", season: 1),
        CharactorAll(name: "KwokRai", cname: "郭淮", rarity: "4S", season: 1),
        CharactorAll(name: "LeeDin", cname: "李典", rarity: "4S", season: 1),
        CharactorAll(name: "ChanMo", cname: "陳武", rarity: "4S", season: 1),
        CharactorAll(name: "ChuWoon", cname: "朱桓", rarity: "4S", season: 1),
        CharactorAll(name: "HonDon", cname: "韓當", rarity: "4S", season: 1),
        CharactorAll(name: "BoLinShi", cname: "步練師", rarity: "4S", season: 1),
        CharactorAll(name: "TungChap", cname: "董襲", rarity: "4S", season: 1),
        CharactorAll(name: "CheungYum", cname: "蔣欽", rarity: "4S", season: 1),
        CharactorAll(name: "DingFung", cname: "丁奉", rarity: "4S", season: 1),
        CharactorAll(name: "LuiFan", cname: "呂範", rarity: "4S", season: 1),
        CharactorAll(name: "PoonCheung", cname: "潘璋", rarity: "4S", season: 1),
        CharactorAll(name: "ChuGeGun", cname: "諸葛瑾", rarity: "4S", season: 1),
        CharactorAll(name: "KuYun", cname: "顧雍", rarity: "4S", season: 1),
        CharactorAll(name: "ChuiShing", cname: "徐盛", rarity: "4S", season: 1),
        CharactorAll(name: "WuGuiYi", cname: "胡車兒", rarity: "4S", season: 1),
        CharactorAll(name: "FungKei", cname: "逢紀", rarity: "4S", season: 1),
        CharactorAll(name: "KeiLing", cname: "紀靈", rarity: "4S", season: 1),
        CharactorAll(name: "CheungSao", cname: "張繡", rarity: "4S", season: 1),
        CharactorAll(name: "ChuChun", cname: "朱儁", rarity: "4S", season: 1),
        CharactorAll(name: "HungYung", cname: "孔融", rarity: "4S", season: 1),
        CharactorAll(name: "KwokChi", cname: "郭汜", rarity: "4S", season: 1),
        CharactorAll(name: "CheungLo", cname: "張魯", rarity: "4S", season: 1),
        CharactorAll(name: "HonShui", cname: "韓遂", rarity: "4S", season: 1),
        CharactorAll(name: "CheungYin", cname: "張燕", rarity: "4S", season: 1),
        CharactorAll(name: "CheungManShing", cname: "張曼成", rarity: "4S", season: 1),
        CharactorAll(name: "LeeHok", cname: "李傕", rarity: "4S", season: 1),
        CharactorAll(name: "ShumPui", cname: "審配", rarity: "4S", season: 1),
        CharactorAll(name: "WongPoSung", cname: "皇甫嵩", rarity: "4S", season: 1),
        CharactorAll(name: "CheungLeung", cname: "張梁", rarity: "4S", season: 1),
        CharactorAll(name: "CheungYumg", cname: "張任", rarity: "4S", season: 1),
        CharactorAll(name: "MaTit", cname: "馬鐵", rarity: "4S", season: 1),
        CharactorAll(name: "LoChik", cname: "盧植", rarity: "4S", season: 1),
        CharactorAll(name: "KwokTo", cname: "郭圖", rarity: "4S", season: 1),
        CharactorAll(name: "GoonHoi", cname: "管亥", rarity: "4S", season: 1),
        CharactorAll(name: "LauBiu", cname: "劉表", rarity: "4S", season: 1),
        CharactorAll(name: "CheungBo", cname: "張寶", rarity: "4S", season: 1),
        CharactorAll(name: "HeungChong", cname: "向寵", rarity: "3S", season: 1),
        CharactorAll(name: "NgYi", cname: "吳懿", rarity: "3S", season: 1),
        CharactorAll(name: "FuSiYan", cname: "傅士仁", rarity: "3S", season: 1),
        CharactorAll(name: "FaiSi", cname: "費詩", rarity: "3S", season: 1),
        CharactorAll(name: "LauSim", cname: "劉襌", rarity: "3S", season: 1),
        CharactorAll(name: "LauBa", cname: "劉巴", rarity: "3S", season: 1),
        CharactorAll(name: "TangChi", cname: "鄧芝", rarity: "3S", season: 1),
        CharactorAll(name: "ChuGeJim", cname: "諸葛詹", rarity: "3S", season: 1),
        CharactorAll(name: "SuenKeen", cname: "孫乾", rarity: "3S", season: 1),
        CharactorAll(name: "MeiFong", cname: "糜芳", rarity: "3S", season: 1),
        CharactorAll(name: "CheJau", cname: "車胄", rarity: "3S", season: 1),
        CharactorAll(name: "HaHaoYan", cname: "夏侯恩", rarity: "3S", season: 1),
        CharactorAll(name: "ChoYau", cname: "曹休", rarity: "3S", season: 1),
        CharactorAll(name: "PinHei", cname: "卞喜", rarity: "3S", season: 1),
        CharactorAll(name: "LuiKin", cname: "呂虔", rarity: "3S", season: 1),
        CharactorAll(name: "WaYum", cname: "華歆", rarity: "3S", season: 1),
        CharactorAll(name: "MoKai", cname: "毛玠", rarity: "3S", season: 1),
        CharactorAll(name: "TungChiu", cname: "董昭", rarity: "3S", season: 1),
        CharactorAll(name: "ChuYin", cname: "朱然", rarity: "3S", season: 1),
        CharactorAll(name: "YuFan", cname: "虞翻", rarity: "3S", season: 1),
        CharactorAll(name: "ChuenChung", cname: "全琮", rarity: "3S", season: 1),
        CharactorAll(name: "HumChak", cname: "闞澤", rarity: "3S", season: 1),
        CharactorAll(name: "PoonYui", cname: "潘濬", rarity: "3S", season: 1),
        CharactorAll(name: "BoAnk", cname: "步騭", rarity: "3S", season: 1),
        CharactorAll(name: "SuenHo", cname: "孫皓", rarity: "3S", season: 1),
        CharactorAll(name: "ToHim", cname: "陶謙", rarity: "3S", season: 1),
        CharactorAll(name: "SungHin", cname: "宋憲", rarity: "3S", season: 1),
        CharactorAll(name: "PoonFung", cname: "潘鳳", rarity: "3S", season: 1),
        CharactorAll(name: "HoChun", cname: "何進", rarity: "3S", season: 1),
        CharactorAll(name: "DingYuen", cname: "丁原", rarity: "3S", season: 1),
        CharactorAll(name: "WongWun", cname: "王允", rarity: "3S", season: 1),
        CharactorAll(name: "LauYiu", cname: "孫繇", rarity: "3S", season: 1),
    ]
    
    let charPoolTwo = [
        CharactorAll(name: "SuenKuen", cname: "孫權", rarity: "5S", season: 1),
        CharactorAll(name: "LauBei", cname: "劉備", rarity: "5S", season: 1),
        CharactorAll(name: "ChoCho", cname: "曹操", rarity: "5S", season: 1),
        CharactorAll(name: "CheungFei", cname: "張飛", rarity: "5S", season: 1),
        CharactorAll(name: "KwanYu", cname: "關羽", rarity: "5S", season: 1),
        CharactorAll(name: "LuiBo", cname: "呂布", rarity: "5S", season: 1),
        CharactorAll(name: "ChiuWan", cname: "趙雲", rarity: "5S", season: 1),
        CharactorAll(name: "ChowYu", cname: "周瑜", rarity: "5S", season: 1),
        CharactorAll(name: "ChuGeLeung", cname: "諸葛亮", rarity: "5S", season: 1),
        CharactorAll(name: "LukSun", cname: "陸遜", rarity: "5S", season: 1),
        CharactorAll(name: "TaiSiChi", cname: "太史慈", rarity: "5S", season: 1),
        CharactorAll(name: "LokChun", cname: "樂進", rarity: "5S", season: 1),
        CharactorAll(name: "DinWai", cname: "典韋", rarity: "5S", season: 1),
        CharactorAll(name: "HuiChu", cname: "許褚", rarity: "5S", season: 1),
        CharactorAll(name: "MaChiu", cname: "馬超", rarity: "5S", season: 1),
        CharactorAll(name: "CMaYi", cname: "司馬懿", rarity: "5S", season: 2),
        CharactorAll(name: "CheungLiu", cname: "張遼", rarity: "5S", season: 2),
        CharactorAll(name: "PongTong", cname: "龐統", rarity: "5S", season: 2),
        CharactorAll(name: "SuenSheungHeung", cname: "孫尚香", rarity: "5S", season: 2),
        CharactorAll(name: "CheungWan", cname: "張紘", rarity: "5S", season: 2),
        CharactorAll(name: "MaWanLuk", cname: "馬雲䘵", rarity: "5S", season: 2),
        CharactorAll(name: "CheungKei", cname: "張姬", rarity: "5S", season: 2),
        CharactorAll(name: "ChanKung", cname: "陳宮", rarity: "5S", season: 2),
        //        CharactorAll(name: "GaHui", cname: "賈詡", rarity: "5S", season: 3),
        //        CharactorAll(name: "LoSuk", cname: "魯肅", rarity: "5S", season: 3),
        //        CharactorAll(name: "KwokChiu", cname: "郝昭", rarity: "5S", season: 3),
        //        CharactorAll(name: "CheungYun", cname: "蔣琬", rarity: "5S", season: 3),
        //        CharactorAll(name: "LingTung", cname: "凌統", rarity: "5S", season: 3),
        //        CharactorAll(name: "MokLukKing", cname: "木鹿大王", rarity: "5S", season: 3),
        //        CharactorAll(name: "LukKwong", cname: "陸抗", rarity: "5S", season: 4),
        //        CharactorAll(name: "ChowTai", cname: "周泰", rarity: "5S", season: 4),
        //        CharactorAll(name: "SunYao", cname: "荀攸", rarity: "5S", season: 4),
        //        CharactorAll(name: "KeungWai", cname: "姜維", rarity: "5S", season: 4),
        //        CharactorAll(name: "KoNam", cname: "高覽", rarity: "5S", season: 4),
        //        CharactorAll(name: "CheungChunWa", cname: "張春華", rarity: "5S", season: 4),
        //        CharactorAll(name: "YimNgan", cname: "嚴顏", rarity: "5S", season: 4),
        //        CharactorAll(name: "YuenSuk", cname: "袁術", rarity: "5S", season: 4),
        //        CharactorAll(name: "YuenSiuSP", cname: "袁紹SP", rarity: "5S", season: 5),
        //        CharactorAll(name: "KwanNganPing", cname: "關銀屏", rarity: "5S", season: 5),
        CharactorAll(name: "SuenKin", cname: "孫堅", rarity: "5S", season: 1),
        CharactorAll(name: "SuenChak", cname: "孫策", rarity: "5S", season: 1),
        CharactorAll(name: "LuiMung", cname: "呂蒙", rarity: "5S", season: 1),
        CharactorAll(name: "KwokGa", cname: "郭嘉", rarity: "5S", season: 1),
        CharactorAll(name: "ChongWui", cname: "鍾會", rarity: "5S", season: 1),
        CharactorAll(name: "PongTak", cname: "龐德", rarity: "5S", season: 1),
        CharactorAll(name: "WongChong", cname: "黃忠", rarity: "5S", season: 1),
        CharactorAll(name: "TungCheuk", cname: "董卓", rarity: "5S", season: 1),
        CharactorAll(name: "JorChi", cname: "左慈", rarity: "5S", season: 1),
        CharactorAll(name: "KamLing", cname: "甘寧", rarity: "5S", season: 1),
        CharactorAll(name: "HaHaoTong", cname: "夏侯惇", rarity: "5S", season: 1),
        CharactorAll(name: "ChuiFong", cname: "徐晃", rarity: "5S", season: 1),
        CharactorAll(name: "FaChing", cname: "法正", rarity: "5S", season: 1),
        CharactorAll(name: "WongYuetYing", cname: "黃月英", rarity: "5S", season: 1),
        CharactorAll(name: "WaTur", cname: "華陀", rarity: "5S", season: 1),
        CharactorAll(name: "NganLeung", cname: "顏良", rarity: "5S", season: 1),
        CharactorAll(name: "CMaFai", cname: "司馬徽", rarity: "5S", season: 1),
        CharactorAll(name: "YuGut", cname: "于吉", rarity: "5S", season: 1),
        CharactorAll(name: "CheungKok", cname: "張角", rarity: "5S", season: 1),
        CharactorAll(name: "CheungChiu", cname: "張昭", rarity: "5S", season: 1),
        CharactorAll(name: "TaiKiu", cname: "大喬", rarity: "5S", season: 1),
        CharactorAll(name: "SiuKiu", cname: "小喬", rarity: "5S", season: 1),
        CharactorAll(name: "ChangPo", cname: "程普", rarity: "5S", season: 1),
        CharactorAll(name: "WaHung", cname: "華雄", rarity: "5S", season: 1),
        CharactorAll(name: "SunYuk", cname: "荀彧", rarity: "5S", season: 1),
        CharactorAll(name: "ChangYuk", cname: "程昱", rarity: "5S", season: 1),
        CharactorAll(name: "YenKei", cname: "甄姬", rarity: "5S", season: 1),
        CharactorAll(name: "HaHaoYuen", cname: "夏侯惇", rarity: "5S", season: 1),
        CharactorAll(name: "ChoYen", cname: "曹仁", rarity: "5S", season: 1),
        CharactorAll(name: "TangAi", cname: "鄧艾", rarity: "5S", season: 1),
        CharactorAll(name: "YuKum", cname: "于禁", rarity: "5S", season: 1),
        CharactorAll(name: "CheungHap", cname: "張郃", rarity: "5S", season: 1),
        CharactorAll(name: "ChuiShu", cname: "徐庶", rarity: "5S", season: 1),
        CharactorAll(name: "YuenSiu", cname: "袁紹", rarity: "5S", season: 1),
        CharactorAll(name: "DiuSim", cname: "貂禪", rarity: "5S", season: 1),
        CharactorAll(name: "ChoiManKei", cname: "蔡文姬", rarity: "5S", season: 1),
        CharactorAll(name: "ManWok", cname: "孟獲", rarity: "5S", season: 1),
        CharactorAll(name: "ManChow", cname: "文醜", rarity: "5S", season: 1),
        CharactorAll(name: "KungSuenChan", cname: "公孫瓚", rarity: "5S", season: 1),
        CharactorAll(name: "MaTeng", cname: "馬騰", rarity: "5S", season: 1),
        CharactorAll(name: "ChoSun", cname: "曹純", rarity: "5S", season: 1),
        CharactorAll(name: "ChanDou", cname: "陳到", rarity: "5S", season: 1),
        CharactorAll(name: "WongPing", cname: "王平", rarity: "5S", season: 1),
        CharactorAll(name: "UkTukGuik", cname: "兀突骨", rarity: "5S", season: 1),
        CharactorAll(name: "KoShun", cname: "高順", rarity: "5S", season: 1),
        CharactorAll(name: "ChoPei", cname: "曹丕", rarity: "5S", season: 1),
        CharactorAll(name: "ChoChik", cname: "曹植", rarity: "5S", season: 1),
        CharactorAll(name: "ChanKun", cname: "陳群", rarity: "5S", season: 1),
        CharactorAll(name: "WongGui", cname: "黃蓋", rarity: "5S", season: 1),
        CharactorAll(name: "LeeYu", cname: "李儒", rarity: "5S", season: 1),
        CharactorAll(name: "ChokYung", cname: "祝融夫人", rarity: "5S", season: 1),
        CharactorAll(name: "LuiLingYee", cname: "呂玲綺", rarity: "5S", season: 1),
        CharactorAll(name: "TinFung", cname: "田豐", rarity: "5S", season: 1),
        CharactorAll(name: "WongKuen", cname: "黃權", rarity: "4S", season: 1),
        CharactorAll(name: "MeiJok", cname: "糜竺", rarity: "4S", season: 1),
        CharactorAll(name: "TungWan", cname: "董允", rarity: "4S", season: 1),
        CharactorAll(name: "ChowChon", cname: "周倉", rarity: "4S", season: 1),
        CharactorAll(name: "LauFung", cname: "劉封", rarity: "4S", season: 1),
        CharactorAll(name: "KwanPing", cname: "關平", rarity: "4S", season: 1),
        CharactorAll(name: "FaiYi", cname: "費褘", rarity: "4S", season: 1),
        CharactorAll(name: "KanYung", cname: "簡雍", rarity: "4S", season: 1),
        CharactorAll(name: "MaSuk", cname: "馬謖", rarity: "4S", season: 1),
        CharactorAll(name: "LiuFa", cname: "廖化", rarity: "4S", season: 1),
        CharactorAll(name: "MaLeung", cname: "馬良", rarity: "4S", season: 1),
        CharactorAll(name: "SaMoHo", cname: "沙摩柯", rarity: "4S", season: 1),
        CharactorAll(name: "LeeYim", cname: "李嚴", rarity: "4S", season: 1),
        CharactorAll(name: "YeungSao", cname: "楊修", rarity: "4S", season: 1),
        CharactorAll(name: "LauYip", cname: "劉曄", rarity: "4S", season: 1),
        CharactorAll(name: "ManPing", cname: "文聘", rarity: "4S", season: 1),
        CharactorAll(name: "ChoCheung", cname: "曹彰", rarity: "4S", season: 1),
        CharactorAll(name: "ChanLam", cname: "陳琳", rarity: "4S", season: 1),
        CharactorAll(name: "ChoHung", cname: "曹洪", rarity: "4S", season: 1),
        CharactorAll(name: "ChungYiu", cname: "鍾繇", rarity: "4S", season: 1),
        CharactorAll(name: "ChoChun", cname: "曹真", rarity: "4S", season: 1),
        CharactorAll(name: "WongLong", cname: "王朗", rarity: "4S", season: 1),
        CharactorAll(name: "ChongBa", cname: "臧霸", rarity: "4S", season: 1),
        CharactorAll(name: "KwokRai", cname: "郭淮", rarity: "4S", season: 1),
        CharactorAll(name: "LeeDin", cname: "李典", rarity: "4S", season: 1),
        CharactorAll(name: "ChanMo", cname: "陳武", rarity: "4S", season: 1),
        CharactorAll(name: "ChuWoon", cname: "朱桓", rarity: "4S", season: 1),
        CharactorAll(name: "HonDon", cname: "韓當", rarity: "4S", season: 1),
        CharactorAll(name: "BoLinShi", cname: "步練師", rarity: "4S", season: 1),
        CharactorAll(name: "TungChap", cname: "董襲", rarity: "4S", season: 1),
        CharactorAll(name: "CheungYum", cname: "蔣欽", rarity: "4S", season: 1),
        CharactorAll(name: "DingFung", cname: "丁奉", rarity: "4S", season: 1),
        CharactorAll(name: "LuiFan", cname: "呂範", rarity: "4S", season: 1),
        CharactorAll(name: "PoonCheung", cname: "潘璋", rarity: "4S", season: 1),
        CharactorAll(name: "ChuGeGun", cname: "諸葛瑾", rarity: "4S", season: 1),
        CharactorAll(name: "KuYun", cname: "顧雍", rarity: "4S", season: 1),
        CharactorAll(name: "ChuiShing", cname: "徐盛", rarity: "4S", season: 1),
        CharactorAll(name: "WuGuiYi", cname: "胡車兒", rarity: "4S", season: 1),
        CharactorAll(name: "FungKei", cname: "逢紀", rarity: "4S", season: 1),
        CharactorAll(name: "KeiLing", cname: "紀靈", rarity: "4S", season: 1),
        CharactorAll(name: "CheungSao", cname: "張繡", rarity: "4S", season: 1),
        CharactorAll(name: "ChuChun", cname: "朱儁", rarity: "4S", season: 1),
        CharactorAll(name: "HungYung", cname: "孔融", rarity: "4S", season: 1),
        CharactorAll(name: "KwokChi", cname: "郭汜", rarity: "4S", season: 1),
        CharactorAll(name: "CheungLo", cname: "張魯", rarity: "4S", season: 1),
        CharactorAll(name: "HonShui", cname: "韓遂", rarity: "4S", season: 1),
        CharactorAll(name: "CheungYin", cname: "張燕", rarity: "4S", season: 1),
        CharactorAll(name: "CheungManShing", cname: "張曼成", rarity: "4S", season: 1),
        CharactorAll(name: "LeeHok", cname: "李傕", rarity: "4S", season: 1),
        CharactorAll(name: "ShumPui", cname: "審配", rarity: "4S", season: 1),
        CharactorAll(name: "WongPoSung", cname: "皇甫嵩", rarity: "4S", season: 1),
        CharactorAll(name: "CheungLeung", cname: "張梁", rarity: "4S", season: 1),
        CharactorAll(name: "CheungYumg", cname: "張任", rarity: "4S", season: 1),
        CharactorAll(name: "MaTit", cname: "馬鐵", rarity: "4S", season: 1),
        CharactorAll(name: "LoChik", cname: "盧植", rarity: "4S", season: 1),
        CharactorAll(name: "KwokTo", cname: "郭圖", rarity: "4S", season: 1),
        CharactorAll(name: "GoonHoi", cname: "管亥", rarity: "4S", season: 1),
        CharactorAll(name: "LauBiu", cname: "劉表", rarity: "4S", season: 1),
        CharactorAll(name: "CheungBo", cname: "張寶", rarity: "4S", season: 1),
        CharactorAll(name: "HeungChong", cname: "向寵", rarity: "3S", season: 1),
        CharactorAll(name: "NgYi", cname: "吳懿", rarity: "3S", season: 1),
        CharactorAll(name: "FuSiYan", cname: "傅士仁", rarity: "3S", season: 1),
        CharactorAll(name: "FaiSi", cname: "費詩", rarity: "3S", season: 1),
        CharactorAll(name: "LauSim", cname: "劉襌", rarity: "3S", season: 1),
        CharactorAll(name: "LauBa", cname: "劉巴", rarity: "3S", season: 1),
        CharactorAll(name: "TangChi", cname: "鄧芝", rarity: "3S", season: 1),
        CharactorAll(name: "ChuGeJim", cname: "諸葛詹", rarity: "3S", season: 1),
        CharactorAll(name: "SuenKeen", cname: "孫乾", rarity: "3S", season: 1),
        CharactorAll(name: "MeiFong", cname: "糜芳", rarity: "3S", season: 1),
        CharactorAll(name: "CheJau", cname: "車胄", rarity: "3S", season: 1),
        CharactorAll(name: "HaHaoYan", cname: "夏侯恩", rarity: "3S", season: 1),
        CharactorAll(name: "ChoYau", cname: "曹休", rarity: "3S", season: 1),
        CharactorAll(name: "PinHei", cname: "卞喜", rarity: "3S", season: 1),
        CharactorAll(name: "LuiKin", cname: "呂虔", rarity: "3S", season: 1),
        CharactorAll(name: "WaYum", cname: "華歆", rarity: "3S", season: 1),
        CharactorAll(name: "MoKai", cname: "毛玠", rarity: "3S", season: 1),
        CharactorAll(name: "TungChiu", cname: "董昭", rarity: "3S", season: 1),
        CharactorAll(name: "ChuYin", cname: "朱然", rarity: "3S", season: 1),
        CharactorAll(name: "YuFan", cname: "虞翻", rarity: "3S", season: 1),
        CharactorAll(name: "ChuenChung", cname: "全琮", rarity: "3S", season: 1),
        CharactorAll(name: "HumChak", cname: "闞澤", rarity: "3S", season: 1),
        CharactorAll(name: "PoonYui", cname: "潘濬", rarity: "3S", season: 1),
        CharactorAll(name: "BoAnk", cname: "步騭", rarity: "3S", season: 1),
        CharactorAll(name: "SuenHo", cname: "孫皓", rarity: "3S", season: 1),
        CharactorAll(name: "ToHim", cname: "陶謙", rarity: "3S", season: 1),
        CharactorAll(name: "SungHin", cname: "宋憲", rarity: "3S", season: 1),
        CharactorAll(name: "PoonFung", cname: "潘鳳", rarity: "3S", season: 1),
        CharactorAll(name: "HoChun", cname: "何進", rarity: "3S", season: 1),
        CharactorAll(name: "DingYuen", cname: "丁原", rarity: "3S", season: 1),
        CharactorAll(name: "WongWun", cname: "王允", rarity: "3S", season: 1),
        CharactorAll(name: "LauYiu", cname: "孫繇", rarity: "3S", season: 1),
    ]
    
    let charPoolThree = [
        CharactorAll(name: "SuenKuen", cname: "孫權", rarity: "5S", season: 1),
        CharactorAll(name: "LauBei", cname: "劉備", rarity: "5S", season: 1),
        CharactorAll(name: "ChoCho", cname: "曹操", rarity: "5S", season: 1),
        CharactorAll(name: "CheungFei", cname: "張飛", rarity: "5S", season: 1),
        CharactorAll(name: "KwanYu", cname: "關羽", rarity: "5S", season: 1),
        CharactorAll(name: "LuiBo", cname: "呂布", rarity: "5S", season: 1),
        CharactorAll(name: "ChiuWan", cname: "趙雲", rarity: "5S", season: 1),
        CharactorAll(name: "ChowYu", cname: "周瑜", rarity: "5S", season: 1),
        CharactorAll(name: "ChuGeLeung", cname: "諸葛亮", rarity: "5S", season: 1),
        CharactorAll(name: "LukSun", cname: "陸遜", rarity: "5S", season: 1),
        CharactorAll(name: "TaiSiChi", cname: "太史慈", rarity: "5S", season: 1),
        CharactorAll(name: "LokChun", cname: "樂進", rarity: "5S", season: 1),
        CharactorAll(name: "DinWai", cname: "典韋", rarity: "5S", season: 1),
        CharactorAll(name: "HuiChu", cname: "許褚", rarity: "5S", season: 1),
        CharactorAll(name: "MaChiu", cname: "馬超", rarity: "5S", season: 1),
        //        CharactorAll(name: "CMaYi", cname: "司馬懿", rarity: "5S", season: 2),
        //        CharactorAll(name: "CheungLiu", cname: "張遼", rarity: "5S", season: 2),
        //        CharactorAll(name: "PongTong", cname: "龐統", rarity: "5S", season: 2),
        //        CharactorAll(name: "SuenSheungHeung", cname: "孫尚香", rarity: "5S", season: 2),
        //        CharactorAll(name: "CheungWan", cname: "張紘", rarity: "5S", season: 2),
        //        CharactorAll(name: "MaWanLuk", cname: "馬雲䘵", rarity: "5S", season: 2),
        //        CharactorAll(name: "CheungKei", cname: "張姬", rarity: "5S", season: 2),
        //        CharactorAll(name: "ChanKung", cname: "陳宮", rarity: "5S", season: 2),
        CharactorAll(name: "GaHui", cname: "賈詡", rarity: "5S", season: 3),
        CharactorAll(name: "LoSuk", cname: "魯肅", rarity: "5S", season: 3),
        CharactorAll(name: "KwokChiu", cname: "郝昭", rarity: "5S", season: 3),
        CharactorAll(name: "CheungYun", cname: "蔣琬", rarity: "5S", season: 3),
        CharactorAll(name: "LingTung", cname: "凌統", rarity: "5S", season: 3),
        CharactorAll(name: "MokLukKing", cname: "木鹿大王", rarity: "5S", season: 3),
        //        CharactorAll(name: "LukKwong", cname: "陸抗", rarity: "5S", season: 4),
        //        CharactorAll(name: "ChowTai", cname: "周泰", rarity: "5S", season: 4),
        //        CharactorAll(name: "SunYao", cname: "荀攸", rarity: "5S", season: 4),
        //        CharactorAll(name: "KeungWai", cname: "姜維", rarity: "5S", season: 4),
        //        CharactorAll(name: "KoNam", cname: "高覽", rarity: "5S", season: 4),
        //        CharactorAll(name: "CheungChunWa", cname: "張春華", rarity: "5S", season: 4),
        //        CharactorAll(name: "YimNgan", cname: "嚴顏", rarity: "5S", season: 4),
        //        CharactorAll(name: "YuenSuk", cname: "袁術", rarity: "5S", season: 4),
        //        CharactorAll(name: "YuenSiuSP", cname: "袁紹SP", rarity: "5S", season: 5),
        //        CharactorAll(name: "KwanNganPing", cname: "關銀屏", rarity: "5S", season: 5),
        CharactorAll(name: "SuenKin", cname: "孫堅", rarity: "5S", season: 1),
        CharactorAll(name: "SuenChak", cname: "孫策", rarity: "5S", season: 1),
        CharactorAll(name: "LuiMung", cname: "呂蒙", rarity: "5S", season: 1),
        CharactorAll(name: "KwokGa", cname: "郭嘉", rarity: "5S", season: 1),
        CharactorAll(name: "ChongWui", cname: "鍾會", rarity: "5S", season: 1),
        CharactorAll(name: "PongTak", cname: "龐德", rarity: "5S", season: 1),
        CharactorAll(name: "WongChong", cname: "黃忠", rarity: "5S", season: 1),
        CharactorAll(name: "TungCheuk", cname: "董卓", rarity: "5S", season: 1),
        CharactorAll(name: "JorChi", cname: "左慈", rarity: "5S", season: 1),
        CharactorAll(name: "KamLing", cname: "甘寧", rarity: "5S", season: 1),
        CharactorAll(name: "HaHaoTong", cname: "夏侯惇", rarity: "5S", season: 1),
        CharactorAll(name: "ChuiFong", cname: "徐晃", rarity: "5S", season: 1),
        CharactorAll(name: "FaChing", cname: "法正", rarity: "5S", season: 1),
        CharactorAll(name: "WongYuetYing", cname: "黃月英", rarity: "5S", season: 1),
        CharactorAll(name: "WaTur", cname: "華陀", rarity: "5S", season: 1),
        CharactorAll(name: "NganLeung", cname: "顏良", rarity: "5S", season: 1),
        CharactorAll(name: "CMaFai", cname: "司馬徽", rarity: "5S", season: 1),
        CharactorAll(name: "YuGut", cname: "于吉", rarity: "5S", season: 1),
        CharactorAll(name: "CheungKok", cname: "張角", rarity: "5S", season: 1),
        CharactorAll(name: "CheungChiu", cname: "張昭", rarity: "5S", season: 1),
        CharactorAll(name: "TaiKiu", cname: "大喬", rarity: "5S", season: 1),
        CharactorAll(name: "SiuKiu", cname: "小喬", rarity: "5S", season: 1),
        CharactorAll(name: "ChangPo", cname: "程普", rarity: "5S", season: 1),
        CharactorAll(name: "WaHung", cname: "華雄", rarity: "5S", season: 1),
        CharactorAll(name: "SunYuk", cname: "荀彧", rarity: "5S", season: 1),
        CharactorAll(name: "ChangYuk", cname: "程昱", rarity: "5S", season: 1),
        CharactorAll(name: "YenKei", cname: "甄姬", rarity: "5S", season: 1),
        CharactorAll(name: "HaHaoYuen", cname: "夏侯惇", rarity: "5S", season: 1),
        CharactorAll(name: "ChoYen", cname: "曹仁", rarity: "5S", season: 1),
        CharactorAll(name: "TangAi", cname: "鄧艾", rarity: "5S", season: 1),
        CharactorAll(name: "YuKum", cname: "于禁", rarity: "5S", season: 1),
        CharactorAll(name: "CheungHap", cname: "張郃", rarity: "5S", season: 1),
        CharactorAll(name: "ChuiShu", cname: "徐庶", rarity: "5S", season: 1),
        CharactorAll(name: "YuenSiu", cname: "袁紹", rarity: "5S", season: 1),
        CharactorAll(name: "DiuSim", cname: "貂禪", rarity: "5S", season: 1),
        CharactorAll(name: "ChoiManKei", cname: "蔡文姬", rarity: "5S", season: 1),
        CharactorAll(name: "ManWok", cname: "孟獲", rarity: "5S", season: 1),
        CharactorAll(name: "ManChow", cname: "文醜", rarity: "5S", season: 1),
        CharactorAll(name: "KungSuenChan", cname: "公孫瓚", rarity: "5S", season: 1),
        CharactorAll(name: "MaTeng", cname: "馬騰", rarity: "5S", season: 1),
        CharactorAll(name: "ChoSun", cname: "曹純", rarity: "5S", season: 1),
        CharactorAll(name: "ChanDou", cname: "陳到", rarity: "5S", season: 1),
        CharactorAll(name: "WongPing", cname: "王平", rarity: "5S", season: 1),
        CharactorAll(name: "UkTukGuik", cname: "兀突骨", rarity: "5S", season: 1),
        CharactorAll(name: "KoShun", cname: "高順", rarity: "5S", season: 1),
        CharactorAll(name: "ChoPei", cname: "曹丕", rarity: "5S", season: 1),
        CharactorAll(name: "ChoChik", cname: "曹植", rarity: "5S", season: 1),
        CharactorAll(name: "ChanKun", cname: "陳群", rarity: "5S", season: 1),
        CharactorAll(name: "WongGui", cname: "黃蓋", rarity: "5S", season: 1),
        CharactorAll(name: "LeeYu", cname: "李儒", rarity: "5S", season: 1),
        CharactorAll(name: "ChokYung", cname: "祝融夫人", rarity: "5S", season: 1),
        CharactorAll(name: "LuiLingYee", cname: "呂玲綺", rarity: "5S", season: 1),
        CharactorAll(name: "TinFung", cname: "田豐", rarity: "5S", season: 1),
        CharactorAll(name: "WongKuen", cname: "黃權", rarity: "4S", season: 1),
        CharactorAll(name: "MeiJok", cname: "糜竺", rarity: "4S", season: 1),
        CharactorAll(name: "TungWan", cname: "董允", rarity: "4S", season: 1),
        CharactorAll(name: "ChowChon", cname: "周倉", rarity: "4S", season: 1),
        CharactorAll(name: "LauFung", cname: "劉封", rarity: "4S", season: 1),
        CharactorAll(name: "KwanPing", cname: "關平", rarity: "4S", season: 1),
        CharactorAll(name: "FaiYi", cname: "費褘", rarity: "4S", season: 1),
        CharactorAll(name: "KanYung", cname: "簡雍", rarity: "4S", season: 1),
        CharactorAll(name: "MaSuk", cname: "馬謖", rarity: "4S", season: 1),
        CharactorAll(name: "LiuFa", cname: "廖化", rarity: "4S", season: 1),
        CharactorAll(name: "MaLeung", cname: "馬良", rarity: "4S", season: 1),
        CharactorAll(name: "SaMoHo", cname: "沙摩柯", rarity: "4S", season: 1),
        CharactorAll(name: "LeeYim", cname: "李嚴", rarity: "4S", season: 1),
        CharactorAll(name: "YeungSao", cname: "楊修", rarity: "4S", season: 1),
        CharactorAll(name: "LauYip", cname: "劉曄", rarity: "4S", season: 1),
        CharactorAll(name: "ManPing", cname: "文聘", rarity: "4S", season: 1),
        CharactorAll(name: "ChoCheung", cname: "曹彰", rarity: "4S", season: 1),
        CharactorAll(name: "ChanLam", cname: "陳琳", rarity: "4S", season: 1),
        CharactorAll(name: "ChoHung", cname: "曹洪", rarity: "4S", season: 1),
        CharactorAll(name: "ChungYiu", cname: "鍾繇", rarity: "4S", season: 1),
        CharactorAll(name: "ChoChun", cname: "曹真", rarity: "4S", season: 1),
        CharactorAll(name: "WongLong", cname: "王朗", rarity: "4S", season: 1),
        CharactorAll(name: "ChongBa", cname: "臧霸", rarity: "4S", season: 1),
        CharactorAll(name: "KwokRai", cname: "郭淮", rarity: "4S", season: 1),
        CharactorAll(name: "LeeDin", cname: "李典", rarity: "4S", season: 1),
        CharactorAll(name: "ChanMo", cname: "陳武", rarity: "4S", season: 1),
        CharactorAll(name: "ChuWoon", cname: "朱桓", rarity: "4S", season: 1),
        CharactorAll(name: "HonDon", cname: "韓當", rarity: "4S", season: 1),
        CharactorAll(name: "BoLinShi", cname: "步練師", rarity: "4S", season: 1),
        CharactorAll(name: "TungChap", cname: "董襲", rarity: "4S", season: 1),
        CharactorAll(name: "CheungYum", cname: "蔣欽", rarity: "4S", season: 1),
        CharactorAll(name: "DingFung", cname: "丁奉", rarity: "4S", season: 1),
        CharactorAll(name: "LuiFan", cname: "呂範", rarity: "4S", season: 1),
        CharactorAll(name: "PoonCheung", cname: "潘璋", rarity: "4S", season: 1),
        CharactorAll(name: "ChuGeGun", cname: "諸葛瑾", rarity: "4S", season: 1),
        CharactorAll(name: "KuYun", cname: "顧雍", rarity: "4S", season: 1),
        CharactorAll(name: "ChuiShing", cname: "徐盛", rarity: "4S", season: 1),
        CharactorAll(name: "WuGuiYi", cname: "胡車兒", rarity: "4S", season: 1),
        CharactorAll(name: "FungKei", cname: "逢紀", rarity: "4S", season: 1),
        CharactorAll(name: "KeiLing", cname: "紀靈", rarity: "4S", season: 1),
        CharactorAll(name: "CheungSao", cname: "張繡", rarity: "4S", season: 1),
        CharactorAll(name: "ChuChun", cname: "朱儁", rarity: "4S", season: 1),
        CharactorAll(name: "HungYung", cname: "孔融", rarity: "4S", season: 1),
        CharactorAll(name: "KwokChi", cname: "郭汜", rarity: "4S", season: 1),
        CharactorAll(name: "CheungLo", cname: "張魯", rarity: "4S", season: 1),
        CharactorAll(name: "HonShui", cname: "韓遂", rarity: "4S", season: 1),
        CharactorAll(name: "CheungYin", cname: "張燕", rarity: "4S", season: 1),
        CharactorAll(name: "CheungManShing", cname: "張曼成", rarity: "4S", season: 1),
        CharactorAll(name: "LeeHok", cname: "李傕", rarity: "4S", season: 1),
        CharactorAll(name: "ShumPui", cname: "審配", rarity: "4S", season: 1),
        CharactorAll(name: "WongPoSung", cname: "皇甫嵩", rarity: "4S", season: 1),
        CharactorAll(name: "CheungLeung", cname: "張梁", rarity: "4S", season: 1),
        CharactorAll(name: "CheungYumg", cname: "張任", rarity: "4S", season: 1),
        CharactorAll(name: "MaTit", cname: "馬鐵", rarity: "4S", season: 1),
        CharactorAll(name: "LoChik", cname: "盧植", rarity: "4S", season: 1),
        CharactorAll(name: "KwokTo", cname: "郭圖", rarity: "4S", season: 1),
        CharactorAll(name: "GoonHoi", cname: "管亥", rarity: "4S", season: 1),
        CharactorAll(name: "LauBiu", cname: "劉表", rarity: "4S", season: 1),
        CharactorAll(name: "CheungBo", cname: "張寶", rarity: "4S", season: 1),
        CharactorAll(name: "HeungChong", cname: "向寵", rarity: "3S", season: 1),
        CharactorAll(name: "NgYi", cname: "吳懿", rarity: "3S", season: 1),
        CharactorAll(name: "FuSiYan", cname: "傅士仁", rarity: "3S", season: 1),
        CharactorAll(name: "FaiSi", cname: "費詩", rarity: "3S", season: 1),
        CharactorAll(name: "LauSim", cname: "劉襌", rarity: "3S", season: 1),
        CharactorAll(name: "LauBa", cname: "劉巴", rarity: "3S", season: 1),
        CharactorAll(name: "TangChi", cname: "鄧芝", rarity: "3S", season: 1),
        CharactorAll(name: "ChuGeJim", cname: "諸葛詹", rarity: "3S", season: 1),
        CharactorAll(name: "SuenKeen", cname: "孫乾", rarity: "3S", season: 1),
        CharactorAll(name: "MeiFong", cname: "糜芳", rarity: "3S", season: 1),
        CharactorAll(name: "CheJau", cname: "車胄", rarity: "3S", season: 1),
        CharactorAll(name: "HaHaoYan", cname: "夏侯恩", rarity: "3S", season: 1),
        CharactorAll(name: "ChoYau", cname: "曹休", rarity: "3S", season: 1),
        CharactorAll(name: "PinHei", cname: "卞喜", rarity: "3S", season: 1),
        CharactorAll(name: "LuiKin", cname: "呂虔", rarity: "3S", season: 1),
        CharactorAll(name: "WaYum", cname: "華歆", rarity: "3S", season: 1),
        CharactorAll(name: "MoKai", cname: "毛玠", rarity: "3S", season: 1),
        CharactorAll(name: "TungChiu", cname: "董昭", rarity: "3S", season: 1),
        CharactorAll(name: "ChuYin", cname: "朱然", rarity: "3S", season: 1),
        CharactorAll(name: "YuFan", cname: "虞翻", rarity: "3S", season: 1),
        CharactorAll(name: "ChuenChung", cname: "全琮", rarity: "3S", season: 1),
        CharactorAll(name: "HumChak", cname: "闞澤", rarity: "3S", season: 1),
        CharactorAll(name: "PoonYui", cname: "潘濬", rarity: "3S", season: 1),
        CharactorAll(name: "BoAnk", cname: "步騭", rarity: "3S", season: 1),
        CharactorAll(name: "SuenHo", cname: "孫皓", rarity: "3S", season: 1),
        CharactorAll(name: "ToHim", cname: "陶謙", rarity: "3S", season: 1),
        CharactorAll(name: "SungHin", cname: "宋憲", rarity: "3S", season: 1),
        CharactorAll(name: "PoonFung", cname: "潘鳳", rarity: "3S", season: 1),
        CharactorAll(name: "HoChun", cname: "何進", rarity: "3S", season: 1),
        CharactorAll(name: "DingYuen", cname: "丁原", rarity: "3S", season: 1),
        CharactorAll(name: "WongWun", cname: "王允", rarity: "3S", season: 1),
        CharactorAll(name: "LauYiu", cname: "孫繇", rarity: "3S", season: 1),
    ]
    
    let charPoolFour = [
        CharactorAll(name: "SuenKuen", cname: "孫權", rarity: "5S", season: 1),
        CharactorAll(name: "LauBei", cname: "劉備", rarity: "5S", season: 1),
        CharactorAll(name: "ChoCho", cname: "曹操", rarity: "5S", season: 1),
        CharactorAll(name: "CheungFei", cname: "張飛", rarity: "5S", season: 1),
        CharactorAll(name: "KwanYu", cname: "關羽", rarity: "5S", season: 1),
        CharactorAll(name: "LuiBo", cname: "呂布", rarity: "5S", season: 1),
        CharactorAll(name: "ChiuWan", cname: "趙雲", rarity: "5S", season: 1),
        CharactorAll(name: "ChowYu", cname: "周瑜", rarity: "5S", season: 1),
        CharactorAll(name: "ChuGeLeung", cname: "諸葛亮", rarity: "5S", season: 1),
        CharactorAll(name: "LukSun", cname: "陸遜", rarity: "5S", season: 1),
        CharactorAll(name: "TaiSiChi", cname: "太史慈", rarity: "5S", season: 1),
        CharactorAll(name: "LokChun", cname: "樂進", rarity: "5S", season: 1),
        CharactorAll(name: "DinWai", cname: "典韋", rarity: "5S", season: 1),
        CharactorAll(name: "HuiChu", cname: "許褚", rarity: "5S", season: 1),
        CharactorAll(name: "MaChiu", cname: "馬超", rarity: "5S", season: 1),
        //        CharactorAll(name: "CMaYi", cname: "司馬懿", rarity: "5S", season: 2),
        //        CharactorAll(name: "CheungLiu", cname: "張遼", rarity: "5S", season: 2),
        //        CharactorAll(name: "PongTong", cname: "龐統", rarity: "5S", season: 2),
        //        CharactorAll(name: "SuenSheungHeung", cname: "孫尚香", rarity: "5S", season: 2),
        //        CharactorAll(name: "CheungWan", cname: "張紘", rarity: "5S", season: 2),
        //        CharactorAll(name: "MaWanLuk", cname: "馬雲䘵", rarity: "5S", season: 2),
        //        CharactorAll(name: "CheungKei", cname: "張姬", rarity: "5S", season: 2),
        //        CharactorAll(name: "ChanKung", cname: "陳宮", rarity: "5S", season: 2),
        //        CharactorAll(name: "GaHui", cname: "賈詡", rarity: "5S", season: 3),
        //        CharactorAll(name: "LoSuk", cname: "魯肅", rarity: "5S", season: 3),
        //        CharactorAll(name: "KwokChiu", cname: "郝昭", rarity: "5S", season: 3),
        //        CharactorAll(name: "CheungYun", cname: "蔣琬", rarity: "5S", season: 3),
        //        CharactorAll(name: "LingTung", cname: "凌統", rarity: "5S", season: 3),
        //        CharactorAll(name: "MokLukKing", cname: "木鹿大王", rarity: "5S", season: 3),
        CharactorAll(name: "LukKwong", cname: "陸抗", rarity: "5S", season: 4),
        CharactorAll(name: "ChowTai", cname: "周泰", rarity: "5S", season: 4),
        CharactorAll(name: "SunYao", cname: "荀攸", rarity: "5S", season: 4),
        CharactorAll(name: "KeungWai", cname: "姜維", rarity: "5S", season: 4),
        CharactorAll(name: "KoNam", cname: "高覽", rarity: "5S", season: 4),
        CharactorAll(name: "CheungChunWa", cname: "張春華", rarity: "5S", season: 4),
        CharactorAll(name: "YimNgan", cname: "嚴顏", rarity: "5S", season: 4),
        CharactorAll(name: "YuenSuk", cname: "袁術", rarity: "5S", season: 4),
        //        CharactorAll(name: "YuenSiuSP", cname: "袁紹SP", rarity: "5S", season: 5),
        //        CharactorAll(name: "KwanNganPing", cname: "關銀屏", rarity: "5S", season: 5),
        CharactorAll(name: "SuenKin", cname: "孫堅", rarity: "5S", season: 1),
        CharactorAll(name: "SuenChak", cname: "孫策", rarity: "5S", season: 1),
        CharactorAll(name: "LuiMung", cname: "呂蒙", rarity: "5S", season: 1),
        CharactorAll(name: "KwokGa", cname: "郭嘉", rarity: "5S", season: 1),
        CharactorAll(name: "ChongWui", cname: "鍾會", rarity: "5S", season: 1),
        CharactorAll(name: "PongTak", cname: "龐德", rarity: "5S", season: 1),
        CharactorAll(name: "WongChong", cname: "黃忠", rarity: "5S", season: 1),
        CharactorAll(name: "TungCheuk", cname: "董卓", rarity: "5S", season: 1),
        CharactorAll(name: "JorChi", cname: "左慈", rarity: "5S", season: 1),
        CharactorAll(name: "KamLing", cname: "甘寧", rarity: "5S", season: 1),
        CharactorAll(name: "HaHaoTong", cname: "夏侯惇", rarity: "5S", season: 1),
        CharactorAll(name: "ChuiFong", cname: "徐晃", rarity: "5S", season: 1),
        CharactorAll(name: "FaChing", cname: "法正", rarity: "5S", season: 1),
        CharactorAll(name: "WongYuetYing", cname: "黃月英", rarity: "5S", season: 1),
        CharactorAll(name: "WaTur", cname: "華陀", rarity: "5S", season: 1),
        CharactorAll(name: "NganLeung", cname: "顏良", rarity: "5S", season: 1),
        CharactorAll(name: "CMaFai", cname: "司馬徽", rarity: "5S", season: 1),
        CharactorAll(name: "YuGut", cname: "于吉", rarity: "5S", season: 1),
        CharactorAll(name: "CheungKok", cname: "張角", rarity: "5S", season: 1),
        CharactorAll(name: "CheungChiu", cname: "張昭", rarity: "5S", season: 1),
        CharactorAll(name: "TaiKiu", cname: "大喬", rarity: "5S", season: 1),
        CharactorAll(name: "SiuKiu", cname: "小喬", rarity: "5S", season: 1),
        CharactorAll(name: "ChangPo", cname: "程普", rarity: "5S", season: 1),
        CharactorAll(name: "WaHung", cname: "華雄", rarity: "5S", season: 1),
        CharactorAll(name: "SunYuk", cname: "荀彧", rarity: "5S", season: 1),
        CharactorAll(name: "ChangYuk", cname: "程昱", rarity: "5S", season: 1),
        CharactorAll(name: "YenKei", cname: "甄姬", rarity: "5S", season: 1),
        CharactorAll(name: "HaHaoYuen", cname: "夏侯惇", rarity: "5S", season: 1),
        CharactorAll(name: "ChoYen", cname: "曹仁", rarity: "5S", season: 1),
        CharactorAll(name: "TangAi", cname: "鄧艾", rarity: "5S", season: 1),
        CharactorAll(name: "YuKum", cname: "于禁", rarity: "5S", season: 1),
        CharactorAll(name: "CheungHap", cname: "張郃", rarity: "5S", season: 1),
        CharactorAll(name: "ChuiShu", cname: "徐庶", rarity: "5S", season: 1),
        CharactorAll(name: "YuenSiu", cname: "袁紹", rarity: "5S", season: 1),
        CharactorAll(name: "DiuSim", cname: "貂禪", rarity: "5S", season: 1),
        CharactorAll(name: "ChoiManKei", cname: "蔡文姬", rarity: "5S", season: 1),
        CharactorAll(name: "ManWok", cname: "孟獲", rarity: "5S", season: 1),
        CharactorAll(name: "ManChow", cname: "文醜", rarity: "5S", season: 1),
        CharactorAll(name: "KungSuenChan", cname: "公孫瓚", rarity: "5S", season: 1),
        CharactorAll(name: "MaTeng", cname: "馬騰", rarity: "5S", season: 1),
        CharactorAll(name: "ChoSun", cname: "曹純", rarity: "5S", season: 1),
        CharactorAll(name: "ChanDou", cname: "陳到", rarity: "5S", season: 1),
        CharactorAll(name: "WongPing", cname: "王平", rarity: "5S", season: 1),
        CharactorAll(name: "UkTukGuik", cname: "兀突骨", rarity: "5S", season: 1),
        CharactorAll(name: "KoShun", cname: "高順", rarity: "5S", season: 1),
        CharactorAll(name: "ChoPei", cname: "曹丕", rarity: "5S", season: 1),
        CharactorAll(name: "ChoChik", cname: "曹植", rarity: "5S", season: 1),
        CharactorAll(name: "ChanKun", cname: "陳群", rarity: "5S", season: 1),
        CharactorAll(name: "WongGui", cname: "黃蓋", rarity: "5S", season: 1),
        CharactorAll(name: "LeeYu", cname: "李儒", rarity: "5S", season: 1),
        CharactorAll(name: "ChokYung", cname: "祝融夫人", rarity: "5S", season: 1),
        CharactorAll(name: "LuiLingYee", cname: "呂玲綺", rarity: "5S", season: 1),
        CharactorAll(name: "TinFung", cname: "田豐", rarity: "5S", season: 1),
        CharactorAll(name: "WongKuen", cname: "黃權", rarity: "4S", season: 1),
        CharactorAll(name: "MeiJok", cname: "糜竺", rarity: "4S", season: 1),
        CharactorAll(name: "TungWan", cname: "董允", rarity: "4S", season: 1),
        CharactorAll(name: "ChowChon", cname: "周倉", rarity: "4S", season: 1),
        CharactorAll(name: "LauFung", cname: "劉封", rarity: "4S", season: 1),
        CharactorAll(name: "KwanPing", cname: "關平", rarity: "4S", season: 1),
        CharactorAll(name: "FaiYi", cname: "費褘", rarity: "4S", season: 1),
        CharactorAll(name: "KanYung", cname: "簡雍", rarity: "4S", season: 1),
        CharactorAll(name: "MaSuk", cname: "馬謖", rarity: "4S", season: 1),
        CharactorAll(name: "LiuFa", cname: "廖化", rarity: "4S", season: 1),
        CharactorAll(name: "MaLeung", cname: "馬良", rarity: "4S", season: 1),
        CharactorAll(name: "SaMoHo", cname: "沙摩柯", rarity: "4S", season: 1),
        CharactorAll(name: "LeeYim", cname: "李嚴", rarity: "4S", season: 1),
        CharactorAll(name: "YeungSao", cname: "楊修", rarity: "4S", season: 1),
        CharactorAll(name: "LauYip", cname: "劉曄", rarity: "4S", season: 1),
        CharactorAll(name: "ManPing", cname: "文聘", rarity: "4S", season: 1),
        CharactorAll(name: "ChoCheung", cname: "曹彰", rarity: "4S", season: 1),
        CharactorAll(name: "ChanLam", cname: "陳琳", rarity: "4S", season: 1),
        CharactorAll(name: "ChoHung", cname: "曹洪", rarity: "4S", season: 1),
        CharactorAll(name: "ChungYiu", cname: "鍾繇", rarity: "4S", season: 1),
        CharactorAll(name: "ChoChun", cname: "曹真", rarity: "4S", season: 1),
        CharactorAll(name: "WongLong", cname: "王朗", rarity: "4S", season: 1),
        CharactorAll(name: "ChongBa", cname: "臧霸", rarity: "4S", season: 1),
        CharactorAll(name: "KwokRai", cname: "郭淮", rarity: "4S", season: 1),
        CharactorAll(name: "LeeDin", cname: "李典", rarity: "4S", season: 1),
        CharactorAll(name: "ChanMo", cname: "陳武", rarity: "4S", season: 1),
        CharactorAll(name: "ChuWoon", cname: "朱桓", rarity: "4S", season: 1),
        CharactorAll(name: "HonDon", cname: "韓當", rarity: "4S", season: 1),
        CharactorAll(name: "BoLinShi", cname: "步練師", rarity: "4S", season: 1),
        CharactorAll(name: "TungChap", cname: "董襲", rarity: "4S", season: 1),
        CharactorAll(name: "CheungYum", cname: "蔣欽", rarity: "4S", season: 1),
        CharactorAll(name: "DingFung", cname: "丁奉", rarity: "4S", season: 1),
        CharactorAll(name: "LuiFan", cname: "呂範", rarity: "4S", season: 1),
        CharactorAll(name: "PoonCheung", cname: "潘璋", rarity: "4S", season: 1),
        CharactorAll(name: "ChuGeGun", cname: "諸葛瑾", rarity: "4S", season: 1),
        CharactorAll(name: "KuYun", cname: "顧雍", rarity: "4S", season: 1),
        CharactorAll(name: "ChuiShing", cname: "徐盛", rarity: "4S", season: 1),
        CharactorAll(name: "WuGuiYi", cname: "胡車兒", rarity: "4S", season: 1),
        CharactorAll(name: "FungKei", cname: "逢紀", rarity: "4S", season: 1),
        CharactorAll(name: "KeiLing", cname: "紀靈", rarity: "4S", season: 1),
        CharactorAll(name: "CheungSao", cname: "張繡", rarity: "4S", season: 1),
        CharactorAll(name: "ChuChun", cname: "朱儁", rarity: "4S", season: 1),
        CharactorAll(name: "HungYung", cname: "孔融", rarity: "4S", season: 1),
        CharactorAll(name: "KwokChi", cname: "郭汜", rarity: "4S", season: 1),
        CharactorAll(name: "CheungLo", cname: "張魯", rarity: "4S", season: 1),
        CharactorAll(name: "HonShui", cname: "韓遂", rarity: "4S", season: 1),
        CharactorAll(name: "CheungYin", cname: "張燕", rarity: "4S", season: 1),
        CharactorAll(name: "CheungManShing", cname: "張曼成", rarity: "4S", season: 1),
        CharactorAll(name: "LeeHok", cname: "李傕", rarity: "4S", season: 1),
        CharactorAll(name: "ShumPui", cname: "審配", rarity: "4S", season: 1),
        CharactorAll(name: "WongPoSung", cname: "皇甫嵩", rarity: "4S", season: 1),
        CharactorAll(name: "CheungLeung", cname: "張梁", rarity: "4S", season: 1),
        CharactorAll(name: "CheungYumg", cname: "張任", rarity: "4S", season: 1),
        CharactorAll(name: "MaTit", cname: "馬鐵", rarity: "4S", season: 1),
        CharactorAll(name: "LoChik", cname: "盧植", rarity: "4S", season: 1),
        CharactorAll(name: "KwokTo", cname: "郭圖", rarity: "4S", season: 1),
        CharactorAll(name: "GoonHoi", cname: "管亥", rarity: "4S", season: 1),
        CharactorAll(name: "LauBiu", cname: "劉表", rarity: "4S", season: 1),
        CharactorAll(name: "CheungBo", cname: "張寶", rarity: "4S", season: 1),
        CharactorAll(name: "HeungChong", cname: "向寵", rarity: "3S", season: 1),
        CharactorAll(name: "NgYi", cname: "吳懿", rarity: "3S", season: 1),
        CharactorAll(name: "FuSiYan", cname: "傅士仁", rarity: "3S", season: 1),
        CharactorAll(name: "FaiSi", cname: "費詩", rarity: "3S", season: 1),
        CharactorAll(name: "LauSim", cname: "劉襌", rarity: "3S", season: 1),
        CharactorAll(name: "LauBa", cname: "劉巴", rarity: "3S", season: 1),
        CharactorAll(name: "TangChi", cname: "鄧芝", rarity: "3S", season: 1),
        CharactorAll(name: "ChuGeJim", cname: "諸葛詹", rarity: "3S", season: 1),
        CharactorAll(name: "SuenKeen", cname: "孫乾", rarity: "3S", season: 1),
        CharactorAll(name: "MeiFong", cname: "糜芳", rarity: "3S", season: 1),
        CharactorAll(name: "CheJau", cname: "車胄", rarity: "3S", season: 1),
        CharactorAll(name: "HaHaoYan", cname: "夏侯恩", rarity: "3S", season: 1),
        CharactorAll(name: "ChoYau", cname: "曹休", rarity: "3S", season: 1),
        CharactorAll(name: "PinHei", cname: "卞喜", rarity: "3S", season: 1),
        CharactorAll(name: "LuiKin", cname: "呂虔", rarity: "3S", season: 1),
        CharactorAll(name: "WaYum", cname: "華歆", rarity: "3S", season: 1),
        CharactorAll(name: "MoKai", cname: "毛玠", rarity: "3S", season: 1),
        CharactorAll(name: "TungChiu", cname: "董昭", rarity: "3S", season: 1),
        CharactorAll(name: "ChuYin", cname: "朱然", rarity: "3S", season: 1),
        CharactorAll(name: "YuFan", cname: "虞翻", rarity: "3S", season: 1),
        CharactorAll(name: "ChuenChung", cname: "全琮", rarity: "3S", season: 1),
        CharactorAll(name: "HumChak", cname: "闞澤", rarity: "3S", season: 1),
        CharactorAll(name: "PoonYui", cname: "潘濬", rarity: "3S", season: 1),
        CharactorAll(name: "BoAnk", cname: "步騭", rarity: "3S", season: 1),
        CharactorAll(name: "SuenHo", cname: "孫皓", rarity: "3S", season: 1),
        CharactorAll(name: "ToHim", cname: "陶謙", rarity: "3S", season: 1),
        CharactorAll(name: "SungHin", cname: "宋憲", rarity: "3S", season: 1),
        CharactorAll(name: "PoonFung", cname: "潘鳳", rarity: "3S", season: 1),
        CharactorAll(name: "HoChun", cname: "何進", rarity: "3S", season: 1),
        CharactorAll(name: "DingYuen", cname: "丁原", rarity: "3S", season: 1),
        CharactorAll(name: "WongWun", cname: "王允", rarity: "3S", season: 1),
        CharactorAll(name: "LauYiu", cname: "孫繇", rarity: "3S", season: 1),
    ]
    
    let charPoolFive = [
        CharactorAll(name: "SuenKuen", cname: "孫權", rarity: "5S", season: 1),
        CharactorAll(name: "LauBei", cname: "劉備", rarity: "5S", season: 1),
        CharactorAll(name: "ChoCho", cname: "曹操", rarity: "5S", season: 1),
        CharactorAll(name: "CheungFei", cname: "張飛", rarity: "5S", season: 1),
        CharactorAll(name: "KwanYu", cname: "關羽", rarity: "5S", season: 1),
        CharactorAll(name: "LuiBo", cname: "呂布", rarity: "5S", season: 1),
        CharactorAll(name: "ChiuWan", cname: "趙雲", rarity: "5S", season: 1),
        CharactorAll(name: "ChowYu", cname: "周瑜", rarity: "5S", season: 1),
        CharactorAll(name: "ChuGeLeung", cname: "諸葛亮", rarity: "5S", season: 1),
        CharactorAll(name: "LukSun", cname: "陸遜", rarity: "5S", season: 1),
        CharactorAll(name: "TaiSiChi", cname: "太史慈", rarity: "5S", season: 1),
        CharactorAll(name: "LokChun", cname: "樂進", rarity: "5S", season: 1),
        CharactorAll(name: "DinWai", cname: "典韋", rarity: "5S", season: 1),
        CharactorAll(name: "HuiChu", cname: "許褚", rarity: "5S", season: 1),
        CharactorAll(name: "MaChiu", cname: "馬超", rarity: "5S", season: 1),
        //        CharactorAll(name: "CMaYi", cname: "司馬懿", rarity: "5S", season: 2),
        //        CharactorAll(name: "CheungLiu", cname: "張遼", rarity: "5S", season: 2),
        //        CharactorAll(name: "PongTong", cname: "龐統", rarity: "5S", season: 2),
        //        CharactorAll(name: "SuenSheungHeung", cname: "孫尚香", rarity: "5S", season: 2),
        //        CharactorAll(name: "CheungWan", cname: "張紘", rarity: "5S", season: 2),
        //        CharactorAll(name: "MaWanLuk", cname: "馬雲䘵", rarity: "5S", season: 2),
        //        CharactorAll(name: "CheungKei", cname: "張姬", rarity: "5S", season: 2),
        //        CharactorAll(name: "ChanKung", cname: "陳宮", rarity: "5S", season: 2),
        //        CharactorAll(name: "GaHui", cname: "賈詡", rarity: "5S", season: 3),
        //        CharactorAll(name: "LoSuk", cname: "魯肅", rarity: "5S", season: 3),
        //        CharactorAll(name: "KwokChiu", cname: "郝昭", rarity: "5S", season: 3),
        //        CharactorAll(name: "CheungYun", cname: "蔣琬", rarity: "5S", season: 3),
        //        CharactorAll(name: "LingTung", cname: "凌統", rarity: "5S", season: 3),
        //        CharactorAll(name: "MokLukKing", cname: "木鹿大王", rarity: "5S", season: 3),
        CharactorAll(name: "LukKwong", cname: "陸抗", rarity: "5S", season: 4),
        CharactorAll(name: "ChowTai", cname: "周泰", rarity: "5S", season: 4),
        CharactorAll(name: "SunYao", cname: "荀攸", rarity: "5S", season: 4),
        CharactorAll(name: "KeungWai", cname: "姜維", rarity: "5S", season: 4),
        CharactorAll(name: "KoNam", cname: "高覽", rarity: "5S", season: 4),
        CharactorAll(name: "CheungChunWa", cname: "張春華", rarity: "5S", season: 4),
        CharactorAll(name: "YimNgan", cname: "嚴顏", rarity: "5S", season: 4),
        CharactorAll(name: "YuenSuk", cname: "袁術", rarity: "5S", season: 4),
        CharactorAll(name: "YuenSiuSP", cname: "袁紹SP", rarity: "5S", season: 5),
        CharactorAll(name: "KwanNganPing", cname: "關銀屏", rarity: "5S", season: 5),
        CharactorAll(name: "SuenKin", cname: "孫堅", rarity: "5S", season: 1),
        CharactorAll(name: "SuenChak", cname: "孫策", rarity: "5S", season: 1),
        CharactorAll(name: "LuiMung", cname: "呂蒙", rarity: "5S", season: 1),
        CharactorAll(name: "KwokGa", cname: "郭嘉", rarity: "5S", season: 1),
        CharactorAll(name: "ChongWui", cname: "鍾會", rarity: "5S", season: 1),
        CharactorAll(name: "PongTak", cname: "龐德", rarity: "5S", season: 1),
        CharactorAll(name: "WongChong", cname: "黃忠", rarity: "5S", season: 1),
        CharactorAll(name: "TungCheuk", cname: "董卓", rarity: "5S", season: 1),
        CharactorAll(name: "JorChi", cname: "左慈", rarity: "5S", season: 1),
        CharactorAll(name: "KamLing", cname: "甘寧", rarity: "5S", season: 1),
        CharactorAll(name: "HaHaoTong", cname: "夏侯惇", rarity: "5S", season: 1),
        CharactorAll(name: "ChuiFong", cname: "徐晃", rarity: "5S", season: 1),
        CharactorAll(name: "FaChing", cname: "法正", rarity: "5S", season: 1),
        CharactorAll(name: "WongYuetYing", cname: "黃月英", rarity: "5S", season: 1),
        CharactorAll(name: "WaTur", cname: "華陀", rarity: "5S", season: 1),
        CharactorAll(name: "NganLeung", cname: "顏良", rarity: "5S", season: 1),
        CharactorAll(name: "CMaFai", cname: "司馬徽", rarity: "5S", season: 1),
        CharactorAll(name: "YuGut", cname: "于吉", rarity: "5S", season: 1),
        CharactorAll(name: "CheungKok", cname: "張角", rarity: "5S", season: 1),
        CharactorAll(name: "CheungChiu", cname: "張昭", rarity: "5S", season: 1),
        CharactorAll(name: "TaiKiu", cname: "大喬", rarity: "5S", season: 1),
        CharactorAll(name: "SiuKiu", cname: "小喬", rarity: "5S", season: 1),
        CharactorAll(name: "ChangPo", cname: "程普", rarity: "5S", season: 1),
        CharactorAll(name: "WaHung", cname: "華雄", rarity: "5S", season: 1),
        CharactorAll(name: "SunYuk", cname: "荀彧", rarity: "5S", season: 1),
        CharactorAll(name: "ChangYuk", cname: "程昱", rarity: "5S", season: 1),
        CharactorAll(name: "YenKei", cname: "甄姬", rarity: "5S", season: 1),
        CharactorAll(name: "HaHaoYuen", cname: "夏侯惇", rarity: "5S", season: 1),
        CharactorAll(name: "ChoYen", cname: "曹仁", rarity: "5S", season: 1),
        CharactorAll(name: "TangAi", cname: "鄧艾", rarity: "5S", season: 1),
        CharactorAll(name: "YuKum", cname: "于禁", rarity: "5S", season: 1),
        CharactorAll(name: "CheungHap", cname: "張郃", rarity: "5S", season: 1),
        CharactorAll(name: "ChuiShu", cname: "徐庶", rarity: "5S", season: 1),
        CharactorAll(name: "YuenSiu", cname: "袁紹", rarity: "5S", season: 1),
        CharactorAll(name: "DiuSim", cname: "貂禪", rarity: "5S", season: 1),
        CharactorAll(name: "ChoiManKei", cname: "蔡文姬", rarity: "5S", season: 1),
        CharactorAll(name: "ManWok", cname: "孟獲", rarity: "5S", season: 1),
        CharactorAll(name: "ManChow", cname: "文醜", rarity: "5S", season: 1),
        CharactorAll(name: "KungSuenChan", cname: "公孫瓚", rarity: "5S", season: 1),
        CharactorAll(name: "MaTeng", cname: "馬騰", rarity: "5S", season: 1),
        CharactorAll(name: "ChoSun", cname: "曹純", rarity: "5S", season: 1),
        CharactorAll(name: "ChanDou", cname: "陳到", rarity: "5S", season: 1),
        CharactorAll(name: "WongPing", cname: "王平", rarity: "5S", season: 1),
        CharactorAll(name: "UkTukGuik", cname: "兀突骨", rarity: "5S", season: 1),
        CharactorAll(name: "KoShun", cname: "高順", rarity: "5S", season: 1),
        CharactorAll(name: "ChoPei", cname: "曹丕", rarity: "5S", season: 1),
        CharactorAll(name: "ChoChik", cname: "曹植", rarity: "5S", season: 1),
        CharactorAll(name: "ChanKun", cname: "陳群", rarity: "5S", season: 1),
        CharactorAll(name: "WongGui", cname: "黃蓋", rarity: "5S", season: 1),
        CharactorAll(name: "LeeYu", cname: "李儒", rarity: "5S", season: 1),
        CharactorAll(name: "ChokYung", cname: "祝融夫人", rarity: "5S", season: 1),
        CharactorAll(name: "LuiLingYee", cname: "呂玲綺", rarity: "5S", season: 1),
        CharactorAll(name: "TinFung", cname: "田豐", rarity: "5S", season: 1),
        CharactorAll(name: "WongKuen", cname: "黃權", rarity: "4S", season: 1),
        CharactorAll(name: "MeiJok", cname: "糜竺", rarity: "4S", season: 1),
        CharactorAll(name: "TungWan", cname: "董允", rarity: "4S", season: 1),
        CharactorAll(name: "ChowChon", cname: "周倉", rarity: "4S", season: 1),
        CharactorAll(name: "LauFung", cname: "劉封", rarity: "4S", season: 1),
        CharactorAll(name: "KwanPing", cname: "關平", rarity: "4S", season: 1),
        CharactorAll(name: "FaiYi", cname: "費褘", rarity: "4S", season: 1),
        CharactorAll(name: "KanYung", cname: "簡雍", rarity: "4S", season: 1),
        CharactorAll(name: "MaSuk", cname: "馬謖", rarity: "4S", season: 1),
        CharactorAll(name: "LiuFa", cname: "廖化", rarity: "4S", season: 1),
        CharactorAll(name: "MaLeung", cname: "馬良", rarity: "4S", season: 1),
        CharactorAll(name: "SaMoHo", cname: "沙摩柯", rarity: "4S", season: 1),
        CharactorAll(name: "LeeYim", cname: "李嚴", rarity: "4S", season: 1),
        CharactorAll(name: "YeungSao", cname: "楊修", rarity: "4S", season: 1),
        CharactorAll(name: "LauYip", cname: "劉曄", rarity: "4S", season: 1),
        CharactorAll(name: "ManPing", cname: "文聘", rarity: "4S", season: 1),
        CharactorAll(name: "ChoCheung", cname: "曹彰", rarity: "4S", season: 1),
        CharactorAll(name: "ChanLam", cname: "陳琳", rarity: "4S", season: 1),
        CharactorAll(name: "ChoHung", cname: "曹洪", rarity: "4S", season: 1),
        CharactorAll(name: "ChungYiu", cname: "鍾繇", rarity: "4S", season: 1),
        CharactorAll(name: "ChoChun", cname: "曹真", rarity: "4S", season: 1),
        CharactorAll(name: "WongLong", cname: "王朗", rarity: "4S", season: 1),
        CharactorAll(name: "ChongBa", cname: "臧霸", rarity: "4S", season: 1),
        CharactorAll(name: "KwokRai", cname: "郭淮", rarity: "4S", season: 1),
        CharactorAll(name: "LeeDin", cname: "李典", rarity: "4S", season: 1),
        CharactorAll(name: "ChanMo", cname: "陳武", rarity: "4S", season: 1),
        CharactorAll(name: "ChuWoon", cname: "朱桓", rarity: "4S", season: 1),
        CharactorAll(name: "HonDon", cname: "韓當", rarity: "4S", season: 1),
        CharactorAll(name: "BoLinShi", cname: "步練師", rarity: "4S", season: 1),
        CharactorAll(name: "TungChap", cname: "董襲", rarity: "4S", season: 1),
        CharactorAll(name: "CheungYum", cname: "蔣欽", rarity: "4S", season: 1),
        CharactorAll(name: "DingFung", cname: "丁奉", rarity: "4S", season: 1),
        CharactorAll(name: "LuiFan", cname: "呂範", rarity: "4S", season: 1),
        CharactorAll(name: "PoonCheung", cname: "潘璋", rarity: "4S", season: 1),
        CharactorAll(name: "ChuGeGun", cname: "諸葛瑾", rarity: "4S", season: 1),
        CharactorAll(name: "KuYun", cname: "顧雍", rarity: "4S", season: 1),
        CharactorAll(name: "ChuiShing", cname: "徐盛", rarity: "4S", season: 1),
        CharactorAll(name: "WuGuiYi", cname: "胡車兒", rarity: "4S", season: 1),
        CharactorAll(name: "FungKei", cname: "逢紀", rarity: "4S", season: 1),
        CharactorAll(name: "KeiLing", cname: "紀靈", rarity: "4S", season: 1),
        CharactorAll(name: "CheungSao", cname: "張繡", rarity: "4S", season: 1),
        CharactorAll(name: "ChuChun", cname: "朱儁", rarity: "4S", season: 1),
        CharactorAll(name: "HungYung", cname: "孔融", rarity: "4S", season: 1),
        CharactorAll(name: "KwokChi", cname: "郭汜", rarity: "4S", season: 1),
        CharactorAll(name: "CheungLo", cname: "張魯", rarity: "4S", season: 1),
        CharactorAll(name: "HonShui", cname: "韓遂", rarity: "4S", season: 1),
        CharactorAll(name: "CheungYin", cname: "張燕", rarity: "4S", season: 1),
        CharactorAll(name: "CheungManShing", cname: "張曼成", rarity: "4S", season: 1),
        CharactorAll(name: "LeeHok", cname: "李傕", rarity: "4S", season: 1),
        CharactorAll(name: "ShumPui", cname: "審配", rarity: "4S", season: 1),
        CharactorAll(name: "WongPoSung", cname: "皇甫嵩", rarity: "4S", season: 1),
        CharactorAll(name: "CheungLeung", cname: "張梁", rarity: "4S", season: 1),
        CharactorAll(name: "CheungYumg", cname: "張任", rarity: "4S", season: 1),
        CharactorAll(name: "MaTit", cname: "馬鐵", rarity: "4S", season: 1),
        CharactorAll(name: "LoChik", cname: "盧植", rarity: "4S", season: 1),
        CharactorAll(name: "KwokTo", cname: "郭圖", rarity: "4S", season: 1),
        CharactorAll(name: "GoonHoi", cname: "管亥", rarity: "4S", season: 1),
        CharactorAll(name: "LauBiu", cname: "劉表", rarity: "4S", season: 1),
        CharactorAll(name: "CheungBo", cname: "張寶", rarity: "4S", season: 1),
        CharactorAll(name: "HeungChong", cname: "向寵", rarity: "3S", season: 1),
        CharactorAll(name: "NgYi", cname: "吳懿", rarity: "3S", season: 1),
        CharactorAll(name: "FuSiYan", cname: "傅士仁", rarity: "3S", season: 1),
        CharactorAll(name: "FaiSi", cname: "費詩", rarity: "3S", season: 1),
        CharactorAll(name: "LauSim", cname: "劉襌", rarity: "3S", season: 1),
        CharactorAll(name: "LauBa", cname: "劉巴", rarity: "3S", season: 1),
        CharactorAll(name: "TangChi", cname: "鄧芝", rarity: "3S", season: 1),
        CharactorAll(name: "ChuGeJim", cname: "諸葛詹", rarity: "3S", season: 1),
        CharactorAll(name: "SuenKeen", cname: "孫乾", rarity: "3S", season: 1),
        CharactorAll(name: "MeiFong", cname: "糜芳", rarity: "3S", season: 1),
        CharactorAll(name: "CheJau", cname: "車胄", rarity: "3S", season: 1),
        CharactorAll(name: "HaHaoYan", cname: "夏侯恩", rarity: "3S", season: 1),
        CharactorAll(name: "ChoYau", cname: "曹休", rarity: "3S", season: 1),
        CharactorAll(name: "PinHei", cname: "卞喜", rarity: "3S", season: 1),
        CharactorAll(name: "LuiKin", cname: "呂虔", rarity: "3S", season: 1),
        CharactorAll(name: "WaYum", cname: "華歆", rarity: "3S", season: 1),
        CharactorAll(name: "MoKai", cname: "毛玠", rarity: "3S", season: 1),
        CharactorAll(name: "TungChiu", cname: "董昭", rarity: "3S", season: 1),
        CharactorAll(name: "ChuYin", cname: "朱然", rarity: "3S", season: 1),
        CharactorAll(name: "YuFan", cname: "虞翻", rarity: "3S", season: 1),
        CharactorAll(name: "ChuenChung", cname: "全琮", rarity: "3S", season: 1),
        CharactorAll(name: "HumChak", cname: "闞澤", rarity: "3S", season: 1),
        CharactorAll(name: "PoonYui", cname: "潘濬", rarity: "3S", season: 1),
        CharactorAll(name: "BoAnk", cname: "步騭", rarity: "3S", season: 1),
        CharactorAll(name: "SuenHo", cname: "孫皓", rarity: "3S", season: 1),
        CharactorAll(name: "ToHim", cname: "陶謙", rarity: "3S", season: 1),
        CharactorAll(name: "SungHin", cname: "宋憲", rarity: "3S", season: 1),
        CharactorAll(name: "PoonFung", cname: "潘鳳", rarity: "3S", season: 1),
        CharactorAll(name: "HoChun", cname: "何進", rarity: "3S", season: 1),
        CharactorAll(name: "DingYuen", cname: "丁原", rarity: "3S", season: 1),
        CharactorAll(name: "WongWun", cname: "王允", rarity: "3S", season: 1),
        CharactorAll(name: "LauYiu", cname: "孫繇", rarity: "3S", season: 1),
    ]
    
    
    
    mutating func calculateDraw() -> Int {
        //        count number of card with different rarity in the selected pool
        var totalCardNum5S = 0
        var totalCardNum4S = 0
        var totalCardNum3S = 0
        for item in ShareData.shared.curCharPool {
            if item.rarity == "5S" {
                totalCardNum5S += 1
            }
        }
        for item in ShareData.shared.curCharPool {
            if item.rarity == "4S" {
                totalCardNum4S += 1
            }
        }
        for item in ShareData.shared.curCharPool {
            if item.rarity == "3S" {
                totalCardNum3S += 1
            }
        }
        
        let randomInt = Int.random(in: 0...10000)
//        print(randomInt)
        
        ShareData.shared.cumNum5S += 1
//        print(ShareData.shared.cumNum5S)
        ShareData.shared.cumNum45S += 1
        // confirm 5S after 30 draws
        if ShareData.shared.cumNum5S == 30 {
            // clear confirm 45S silently if it is the same as the 30th draws
            if ShareData.shared.cumNum45S == 5 {
                ShareData.shared.cumNum45S = 0
            }
//            ShareData.shared.cumNum5S = 0
            if randomInt < 3 {
                cardID = 0
            } else if randomInt < 8 {
                cardID = 1
            } else if randomInt < 13 {
                cardID = 2
            } else if randomInt < 18 {
                cardID = 3
            } else if randomInt < 23 {
                cardID = 4
            } else if randomInt < 28 {
                cardID = 5
            } else if randomInt < 33 {
                cardID = 6
            } else if randomInt < 38 {
                cardID = 7
            } else if randomInt < 43 {
                cardID = 8
            } else if randomInt < 48 {
                cardID = 9
            } else if randomInt < 53 {
                cardID = 10
            } else if randomInt < 58 {
                cardID = 11
            } else if randomInt < 63 {
                cardID = 12
            } else if randomInt < 68 {
                cardID = 13
            } else if randomInt < 73 {
                cardID = 14
            } else if randomInt <= 10000 {
                for num in 1...(totalCardNum5S-15) {
                    if randomInt < (73 + 9927/(totalCardNum5S-15)*num) {
                        cardID = 15 + num-1
                        break
                    }
                }
            }
        } else {
            // else (not 30th draw) check if it is the 5th draw
            if ShareData.shared.cumNum45S == 5 {
                ShareData.shared.cumNum45S = 0
                if randomInt < 3 {
                    cardID = 0
                } else if randomInt < 8 {
                    cardID = 1
                } else if randomInt < 13 {
                    cardID = 2
                } else if randomInt < 18 {
                    cardID = 3
                } else if randomInt < 23 {
                    cardID = 4
                } else if randomInt < 28 {
                    cardID = 5
                } else if randomInt < 33 {
                    cardID = 6
                } else if randomInt < 38 {
                    cardID = 7
                } else if randomInt < 43 {
                    cardID = 8
                } else if randomInt < 48 {
                    cardID = 9
                } else if randomInt < 53 {
                    cardID = 10
                } else if randomInt < 58 {
                    cardID = 11
                } else if randomInt < 63 {
                    cardID = 12
                } else if randomInt < 68 {
                    cardID = 13
                } else if randomInt < 73 {
                    cardID = 14
                } else if randomInt < 560 {
                    for num in 1...(totalCardNum5S-15) {
                        if randomInt < (73 + 487/(totalCardNum5S-15)*num) {
                            cardID = 15 + num-1
                            break
                        }
                    }
                }
                else if randomInt <= 10000 {
                    for num in 1...totalCardNum4S {
                        if randomInt < (560 + 9440/totalCardNum4S*num) {
                            cardID = totalCardNum5S + num-1
                            break
                        }
                    }
                }
            } else {
                // else not 30th draw nor 5th draw - normal scenario
                if randomInt < 3 {
                    cardID = 0
                } else if randomInt < 8 {
                    cardID = 1
                } else if randomInt < 13 {
                    cardID = 2
                } else if randomInt < 18 {
                    cardID = 3
                } else if randomInt < 23 {
                    cardID = 4
                } else if randomInt < 28 {
                    cardID = 5
                } else if randomInt < 33 {
                    cardID = 6
                } else if randomInt < 38 {
                    cardID = 7
                } else if randomInt < 43 {
                    cardID = 8
                } else if randomInt < 48 {
                    cardID = 9
                } else if randomInt < 53 {
                    cardID = 10
                } else if randomInt < 58 {
                    cardID = 11
                } else if randomInt < 63 {
                    cardID = 12
                } else if randomInt < 68 {
                    cardID = 13
                } else if randomInt < 73 {
                    cardID = 14
                } else if randomInt < 560 {
                    for num in 1...(totalCardNum5S-15) {
                        if randomInt < (73 + 487/(totalCardNum5S-15)*num) {
                            cardID = 15 + num-1
                            break
                        }
                    }
                } else if randomInt < 4160 {
                    for num in 1...totalCardNum4S {
                        if randomInt < (560 + 3600/totalCardNum4S*num) {
                            cardID = totalCardNum5S + num-1
                            break
                        }
                    }
                } else if randomInt <= 10000 {
                    for num in 1...totalCardNum3S {
                        if randomInt < (4160 + 5860/totalCardNum3S*num) {
                            cardID = totalCardNum5S + totalCardNum4S + num-1
                            break
                        }
                    }
                }
            }
        }
        // Update Rarity stat and five star list
        if ShareData.shared.curCharPool[cardID].rarity == "5S" {
            ShareData.shared.num5S += 1
            ShareData.shared.cumNum5S = 0
            ShareData.shared.fiveSList.append (ShareData.shared.curCharPool[cardID].cname)
        } else if ShareData.shared.curCharPool[cardID].rarity == "4S" {
            ShareData.shared.num4S += 1
        }
        
        return cardID
    }
    
    mutating func calculateDrawOne() {
        cardIDOne = 999
        cardIDTwo = 999
        cardIDThree = calculateDraw()
        cardIDFour = 999
        cardIDFive = 999
        ShareData.shared.numDraw += 1
        ShareData.shared.numGold += 198
    }
    
    mutating func calculateDrawFive() {
        cardIDOne = calculateDraw()
        cardIDTwo = calculateDraw()
        cardIDThree = calculateDraw()
        cardIDFour = calculateDraw()
        cardIDFive = calculateDraw()
        ShareData.shared.numDraw += 5
        ShareData.shared.numGold += 948
    }
    
    func getDrawOne() {
        
    }
    
    func getCharactorName(cardSerialID: String) -> String {
        switch cardSerialID {
        case "one":
            if cardIDOne != 999 {
//                print(ShareData.shared.curCharPool[cardIDOne].name)
                return ShareData.shared.curCharPool[cardIDOne].name
            } else {
                return "Hidden"
            }
            
        case "two":
            if cardIDTwo != 999 {
//                print(ShareData.shared.curCharPool[cardIDTwo].name)
                return ShareData.shared.curCharPool[cardIDTwo].name
            } else {
                return "Hidden"
            }
            
        case "three":
            if cardIDThree != 999 {
//                print(ShareData.shared.curCharPool[cardIDThree].name)
                return ShareData.shared.curCharPool[cardIDThree].name
            } else {
                return "Hidden"
            }
            
        case "four":
            if cardIDFour != 999 {
//                print(ShareData.shared.curCharPool[cardIDFour].name)
                return ShareData.shared.curCharPool[cardIDFour].name
            } else {
                return "Hidden"
            }
            
        case "five":
            if cardIDFive != 999 {
//                print(ShareData.shared.curCharPool[cardIDFive].name)
                return ShareData.shared.curCharPool[cardIDFive].name
            } else {
                return "Hidden"
            }
        default:
            return "Hidden"
        }
        
        
    }
    
    func getCharactorThreeName() -> String {
        if cardIDThree != 999 {
//            print(ShareData.shared.curCharPool[cardIDThree].name)
            return ShareData.shared.curCharPool[cardIDThree].name
        } else {
            return "Hidden"
        }
    }
    
    func updateStat() -> String {
        return "共得名將： \(ShareData.shared.num5S)          共抽了次數： \(ShareData.shared.numDraw)            差多少次出名/良將： \(5 - ShareData.shared.cumNum45S)\n共得良將： \(ShareData.shared.num4S)          共用了金銖： \(ShareData.shared.numGold)          差多少次必定出名將： \(30 - ShareData.shared.cumNum5S)\n所獲名將： \(ShareData.shared.fiveSList)"
    }
    
    mutating func resetStat() -> String {
        ShareData.shared.num5S = 0
        ShareData.shared.num4S = 0
        ShareData.shared.numDraw = 0
        ShareData.shared.numGold = 0
        ShareData.shared.cumNum45S = 0
        ShareData.shared.cumNum5S = 0
        ShareData.shared.fiveSList = []
        return "共得名將： \(ShareData.shared.num5S)          共抽了次數： \(ShareData.shared.numDraw)            差多少次出名/良將： \(5 - ShareData.shared.cumNum45S)\n共得良將： \(ShareData.shared.num4S)          共用了金銖： \(ShareData.shared.numGold)          差多少次必定出名將： \(30 - ShareData.shared.cumNum5S)\n所獲名將： \(ShareData.shared.fiveSList)"
    }
    
    mutating func seasonOnePool() {
        ShareData.shared.curCharPool = charPoolOne
    }
    
    mutating func seasonTwoPool() {
        ShareData.shared.curCharPool = charPoolTwo
    }
    
    mutating func seasonThreePool() {
        ShareData.shared.curCharPool = charPoolThree
    }
    
    mutating func seasonFourPool() {
        ShareData.shared.curCharPool = charPoolFour
    }
    
    mutating func seasonFivePool() {
        ShareData.shared.curCharPool = charPoolFive
    }
    
}
