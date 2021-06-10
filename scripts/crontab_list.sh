# 每3天的23:50分清理一次日志(互助码不清理，proc_file.sh对该文件进行了去重)
50 23 */3 * * find /logs -name '*.log' | grep -v 'sharecodeCollection' | xargs rm -rf
#收集助力码
30 * * * * sh +x /src/docker/auto_help.sh collect >> /logs/auto_help_collect.log 2>&1

##############短期活动##############
#女装盲盒 活动时间：2021-05-24到2021-06-22
35 1,22 * * * node /src/jd_nzmh.js >> /logs/jd_nzmh.log 2>&1

#京东极速版红包(活动时间：2021-5-5至2021-5-31)
45 0,23 * * * node /src/jd_speed_redpocke.js >> /logs/jd_speed_redpocke.log 2>&1

#超级直播间红包雨(活动时间不定期，出现异常提示请忽略。红包雨期间会正常)
1,31 0-23/1 * * * node /src/jd_live_redrain.js >> /logs/jd_live_redrain.log 2>&1

#每日抽奖(活动时间：2021-05-01至2021-05-31)
13 1,22,23 * * * node /src/jd_daily_lottery.js >> /logs/jd_daily_lottery.log 2>&1

#手机狂欢城
0 0,12,18,21 * * * node /src/jd_carnivalcity.js >> /logs/jd_carnivalcity.log 2>&1
#618动物联萌
33 0,6-23/2 * * * node /src/jd_zoo.js >> /logs/jd_zoo.log 2>&1
#618动物联萌专门收集金币(每小时的第30分运行一次)
0-59/30 * * * * node /src/jd_zooCollect.js >> /logs/jd_zooCollect.log 2>&1
#家电星推官 活动时间：2021年5月27日 00:00:00-2021年6月18日 23:59:59
0 0 * * * node /src/jd_xtg.js >> /logs/jd_xtg.log 2>&1
#家电星推官好友互助 活动时间：2021年5月27日 00:00:00-2021年6月18日 23:59:59
0 0 * * * node /src/jd_xtg_help.js >> /logs/jd_xtg_help.log 2>&1
#金榜创造营 活动时间：2021-05-21至2021-12-31
0 1,22 * * * node /src/jd_gold_creator.js >> /logs/jd_gold_creator.log 2>&1
#5G超级盲盒(活动时间：2021-06-2到2021-07-31)
0 0-23/4 * * * node /src/jd_mohe.js >> /logs/jd_mohe.log 2>&1
#明星小店(星店长，2021-06-10)
0 1,21 * * * node /src/jd_star_shop.js >> /logs/jd_star_shop.log 2>&1
#新潮品牌狂欢（6.18过期）
20 1,21 * * * node /src/jd_mcxhd.js >> /logs/jd_mcxhd.log 2>&1
#京喜领88元红包(6.31到期)
30 1,6,12,21 * * * node /src/jd_jxlhb.js >> /logs/jd_jxlhb.log 2>&1
#省钱大赢家之翻翻乐
10,40 * * * * node /src/jd_big_winner.js >> /logs/jd_big_winner.log 2>&1
##############长期活动##############
# 签到
7 0,17 * * * cd /src && node jd_bean_sign.js >> /logs/jd_bean_sign.log 2>&1
# 东东超市兑换奖品
0,30 0 * * * node /src/jd_blueCoin.js >> /logs/jd_blueCoin.log 2>&1
# 摇京豆
6 0,23 * * * node /src/jd_club_lottery.js >> /logs/jd_club_lottery.log 2>&1
# 东东农场
15 6-18/6 * * * node /src/jd_fruit.js >> /logs/jd_fruit.log 2>&1
# 宠汪汪
45 */2,23 * * * node /src/jd_joy.js >> /logs/jd_joy.log 2>&1
# 宠汪汪积分兑换京豆
0 0-16/8 * * * node /src/jd_joy_reward.js >> /logs/jd_joy_reward.log 2>&1
# 宠汪汪喂食
35 */1 * * * node /src/jd_joy_feedPets.js >> /logs/jd_joy_feedPets.log 2>&1
# 宠汪汪邀请助力
10 13-20/1 * * * node /src/jd_joy_run.js >> /logs/jd_joy_run.log 2>&1
# 摇钱树
23 */2 * * * node /src/jd_moneyTree.js >> /logs/jd_moneyTree.log 2>&1
# 东东萌宠
35 6-18/6 * * * node /src/jd_pet.js >> /logs/jd_pet.log 2>&1
# 京东种豆得豆
10 7-22/1 * * * node /src/jd_plantBean.js >> /logs/jd_plantBean.log 2>&1
# 京东全民开红包
12 0-23/4 * * * node /src/jd_redPacket.js >> /logs/jd_redPacket.log 2>&1
# 进店领豆
6 0 * * * node /src/jd_shop.js >> /logs/jd_shop.log 2>&1
# 东东超市
31 0,1-23/2 * * * node /src/jd_superMarket.js >> /logs/jd_superMarket.log 2>&1
# 取关京东店铺商品
45 23 * * * node /src/jd_unsubscribe.js >> /logs/jd_unsubscribe.log 2>&1
# 京豆变动通知
20 10 * * * node /src/jd_bean_change.js >> /logs/jd_bean_change.log 2>&1
# 京东抽奖机
0 0,12,23 * * * node /src/jd_lotteryMachine.js >> /logs/jd_lotteryMachine.log 2>&1
# 京东排行榜
21 9 * * * node /src/jd_rankingList.js >> /logs/jd_rankingList.log 2>&1
# 天天提鹅
28 * * * * node /src/jd_daily_egg.js >> /logs/jd_daily_egg.log 2>&1
# 金融养猪
32 0-23/6 * * * node /src/jd_pigPet.js >> /logs/jd_pigPet.log 2>&1
# 京喜工厂
50 * * * * node /src/jd_dreamFactory.js >> /logs/jd_dreamFactory.log 2>&1
# 东东小窝
46 6,23 * * * node /src/jd_small_home.js >> /logs/jd_small_home.log 2>&1
# 东东工厂
26 * * * * node /src/jd_jdfactory.js >> /logs/jd_jdfactory.log 2>&1
# 赚京豆(微信小程序)
12 * * * * node /src/jd_syj.js >> /logs/jd_syj.log 2>&1
# 京东快递签到
47 1 * * * node /src/jd_kd.js >> /logs/jd_kd.log 2>&1
# 京东汽车(签到满500赛点可兑换500京豆)
0 0 * * * node /src/jd_car.js >> /logs/jd_car.log 2>&1
# 领京豆额外奖励(每日可获得3京豆)
23 1,12,22 * * * node /src/jd_bean_home.js >> /logs/jd_bean_home.log 2>&1
# 微信小程序京东赚赚
6 0-5/1,11 * * * node /src/jd_jdzz.js >> /logs/jd_jdzz.log 2>&1
# crazyJoy自动每日任务
30 7,23 * * * node /src/jd_crazy_joy.js >> /logs/jd_crazy_joy.log 2>&1
# 京东汽车旅程赛点兑换金豆
0 0 * * * node /src/jd_car_exchange.js >> /logs/jd_car_exchange.log 2>&1
# 导到所有互助码
23 7 * * * node /src/jd_get_share_code.js >> /logs/jd_get_share_code.log 2>&1
# 口袋书店
38 8,12,18 * * * node /src/jd_bookshop.js >> /logs/jd_bookshop.log 2>&1
# 京喜农场
30 9,12,18 * * * node /src/jd_jxnc.js >> /logs/jd_jxnc.log 2>&1
# 签到领现金
10 */4 * * * node /src/jd_cash.js >> /logs/jd_cash.log 2>&1
# 闪购盲盒
47 8,22 * * * node /src/jd_sgmh.js >> /logs/jd_sgmh.log 2>&1
# 京东秒秒币
10 6,21 * * * node /src/jd_ms.js >> /logs/jd_ms.log 2>&1
#美丽研究院
41 7,12,19 * * * node /src/jd_beauty.js >> /logs/jd_beauty.log 2>&1
#京东保价
#41 0,23 * * * node /src/jd_price.js >> /logs/jd_price.log 2>&1
#京东极速版签到+赚现金任务
21 1,6 * * * node /src/jd_speed_sign.js >> /logs/jd_speed_sign.log 2>&1
#监控crazyJoy分红
10 12 * * * node /src/jd_crazy_joy_bonus.js >> /logs/jd_crazy_joy_bonus.log 2>&1
#京喜财富岛
5 7,12,18 * * * node /src/jd_cfd.js >> /logs/jd_cfd.log 2>&1
# 删除优惠券(默认注释，如需要自己开启，如有误删，已删除的券可以在回收站中还原，慎用)
#20 9 * * 6 node /src/jd_delCoupon.js >> /logs/jd_delCoupon.log 2>&1
#家庭号
10 6,7 * * * node /src/jd_family.js >> /logs/jd_family.log 2>&1
#京东直播（又回来了）
30-50/5 12,23 * * * node /src/jd_live.js >> /logs/jd_live.log 2>&1
#京东健康社区
13 1,6,22 * * * node /src/jd_health.js >> /logs/jd_health.log 2>&1
#京东健康社区收集健康能量
5-45/20 * * * * node /src/jd_health_collect.js >> /logs/jd_health_collect.log 2>&1
# 幸运大转盘
10 10,23 * * * node /src/jd_market_lottery.js >> /logs/jd_market_lottery.log 2>&1
# 领金贴
5 0 * * * node /src/jd_jin_tie.js >> /logs/jd_jin_tie.log 2>&1
# 跳跳乐瓜分京豆
15 0,12,22 * * * node /src/jd_jump.js >> /logs/jd_jump.log 2>&1
#京喜牧场
15 0,12,22 * * * node /src/jd_jxmc.js >> /logs/jd_jxmc.log 2>&1
