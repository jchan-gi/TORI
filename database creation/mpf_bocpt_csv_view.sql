create view bocptCsvView("Nav Valuation Date", "CNDICA6", "CNDISF2", "CNEPAPX", "CNEPCHN", "CNEPGBZ", "CNEPHKZ", "CNEPJPZ", "CNETEUZ", "CNETHKW", "CNETNAZ", "CNFIGBZ", "CNMMPFC", "CNMPBA8", "CNMPGR0", "CNMPSB5") as
select
    distinct d.navDate,
	f1.nav,
	f2.nav,
	f3.nav,
	f4.nav,
	f5.nav,
	f6.nav,
	f7.nav,
	f8.nav,
	f9.nav,
	f10.nav,
	f11.nav,
	f12.nav,
	f13.nav,
	f14.nav,
	f15.nav,
from
    bocptMpfNav d
	left join bocptMpfNav f1 on
		d.navDate = f1.navDate AND
		f1.code = "CNDICA6"
		left join bocptMpfNav f2 on
			d.navDate = f2.navDate AND
			f2.code = "CNDISF2"
			left join bocptMpfNav f3 on
				d.navDate = f3.navDate AND
				f3.code = "CNEPAPX"
				left join bocptMpfNav f4 on
					d.navDate = f4.navDate AND
					f4.code = "CNEPCHN"
					left join bocptMpfNav f5 on
					    d.navDate = f5.navDate AND
					    f5.code = "CNEPGBZ"
						left join bocptMpfNav f6 on
					        d.navDate = f6.navDate AND
					        f6.code = "CNEPHKZ"
							left join bocptMpfNav f7 on
					            d.navDate = f7.navDate AND
					            f7.code = "CNEPJPZ"
								left join bocptMpfNav f8 on
					                d.navDate = f8.navDate AND
					                f8.code = "CNETEUZ"
					                left join bocptMpfNav f9 on
					                    d.navDate = f9.navDate AND
					                    f9.code = "CNETHKW"
					                    left join bocptMpfNav f10 on
					                        d.navDate = f10.navDate AND
					                        f10.code = "CNETNAZ"
					                        left join bocptMpfNav f11 on
					                            d.navDate = f11.navDate AND
					                            f11.code = "CNFIGBZ"
					                            left join bocptMpfNav f12 on
					                                d.navDate = f12.navDate AND
					                                f12.code = "CNMMPFC"
                                                    left join bocptMpfNav f13 on
					                                    d.navDate = f13.navDate AND
					                                    f13.code = "CNMPBA8"
                                                        left join bocptMpfNav f14 on
					                                        d.navDate = f14.navDate AND
					                                        f14.code = "CNMPGR0"
                                                            left join bocptMpfNav f15 on
					                                            d.navDate = f15.navDate AND
					                                            f15.code = "CNMPSB5"
order by d.navDate asc
;