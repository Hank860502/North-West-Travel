# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Continent.create!(name: "Asia")
Continent.create!(name: "South Asia")
Continent.create!(name: "Oceania")
Continent.create!(name: "America")
Continent.create!(name: "Europe")
Continent.create!(name: "Africa")
Continent.create!(name: "Others")


Country.create!(
	name: "China",
	description: "中華人民共和國，通稱中國，是位於東亞的社會主義國家，首都位於北京。中國領土陸地面積約960萬平方公里，是世界上純陸地面積第二大、陸地面積第三大、總面積第三大或第四大的國家，其分為23個省份、5個自治區、4個直轄市和2個特別行政區。被視為亞洲地區重要地域大國，也被視為潛在超級大國。",
	reminder: "Google、Facebook、Twitter、YouTube、Flickr、LINE、Instagram、等網絡服務無法使用"
)


Country.create!(
	name: "America",
	description: "美國擁有982萬平方公里國土面積，位居世界第三（依陸地面積定義為第四大國）；同時擁有接近超過3.3億人口，為世界第三人口大國。因為有著來自世界各地的大量移民，它是世界上民族和文化最多元的國家之一[14]。美國地形與氣候複雜多樣，是多種野生動物的家園[15]。",
	reminder: "Donald trump is in charged"
)

City.create!(
	country_id: 1,
	name: "Beijing",
	description: "是中華人民共和國首都、直轄市、中國國家中心城市和京津冀城市群的重要組成部分，是中國的政治、文化、科技創新和國際交往中心，是世界第三大人口最多的城市和人口最多的首都，具有重要的國際影響力。"
	reminder: "每年有超過2億9400萬人到北京旅遊。"
)

City.create!(
	country_id: 1,
	name: "Shanghai",
	description: "是中華人民共和國直轄市，也是中國經濟最發達的城市之一，與北京、廣州和深圳並稱中國四大一線城市，還是國際金融、貿易和航運中心之一，其港口為全球最繁忙的港口；主要產業包括商貿流通、金融、資訊、製造等。"
	reminder: "豫園-城隍廟、南京路-外灘、陸家嘴摩天大樓天際線都在此地"
)

City.create!(
	country_id: 1,
	name: "Hong Kong",
	description: "中華人民共和國兩個特別行政區之一，位於南海北岸、珠江口東側，北接廣東省深圳市，西面與鄰近的澳門特別行政區相距63公里，其餘兩面與南海鄰接"
	reminder: "插座規格與台灣不同，需要轉換器"
)

City.create!(
	#4
	country_id: 2,
	name: "Atlanta",
	description: "是美國喬治亞州首府及最大城市，也是富爾頓郡的郡政府駐地。人口456,002人，而正在快速發展的亞特蘭大都會區擁有人口5,522,942人，是美國第9大都市區。"
	reminder: "很無聊"
)

City.create!(
	#5
	country_id: 2,
	name: "New York",
	description: "是位於美國紐約州的城市，為美國人口最多的城市、紐約都會區的核心、以及世界最大的城市之一，是對全球的經濟、商業、金融、媒體、政治、教育和娛樂具有極大影響力的國際大都會。紐約還是聯合國總部所在地，因此也被認為是世界外交的中心"
	reminder: "很擠"
)

City.create!(
	#6
	country_id: 2,
	name: "San Francisco",
	description: "是位於美國加利福尼亞州北部的都市，為加州唯一市郡合一的行政區，中文又音譯為三藩市和聖弗朗西斯科，亦別名「金門城市」、「灣邊之城」、「霧城」等。位於舊金山半島的北端，東臨舊金山灣、西臨太平洋，人口約86萬，為加州第四大城；其與灣邊各都市組成的舊金山灣區，人口總數達768萬，是僅次於大洛杉磯地區的美國西岸第二大都會區。"
	reminder: "第六街很亂"
)

atlantatrain = Package.create!(
	city_id: 4,
	name: "亞特蘭大鐵路遊",
	price: 2500,
	description: "搭火車喔"
	reminder: "很慢喔",
	slot: 5,
	availability: 3,
	category: "urban"
)

nycbigbustour = Package.create!(
	city_id: 5,
	name: "紐約觀光巴士",
	price: 1000,
	description: "搭巴士喔"
	reminder: "很冷喔",
	slot: 5,
	availability: 4,
	category: "urban"
)

sfdingding = Package.create!(
	city_id: 6,
	name: "舊金山叮叮車",
	price: 2500,
	description: "搭叮叮車喔"
	reminder: "很陡喔",
	slot: 5,
	category: "urban"
)

firstdepart = Departure.create!(
	start: "2019/01/01",
	end: "2019/01/05"
)

PackagesDeparture.create!(
	package_id: atlantatrain.id,
	departure_id: firstdepart.id
)



