create view slrCsvView("Nav Valuation Date", "SRDICA6", "SRDISF2", "SREPAPX", "SREPGBZ", "SREPGCZ", "SREPHKZ", "SRETHKF", "SRFIGBZ", "SRFIHKD", "SRMMPFC", "SRMPBA8", "SRMPGR0") as
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
	f12.nav 
from
    slrMpfNav d
	left join slrMpfNav f1 on
		d.navDate = f1.navDate AND
		f1.code = "SRDICA6"
		left join slrMpfNav f2 on
			d.navDate = f2.navDate AND
			f2.code = "SRDISF2"
			left join slrMpfNav f3 on
				d.navDate = f3.navDate AND
				f3.code = "SREPAPX"
				left join slrMpfNav f4 on
					d.navDate = f4.navDate AND
					f4.code = "SREPGBZ"
					left join slrMpfNav f5 on
					    d.navDate = f5.navDate AND
					    f5.code = "SREPGCZ"
						left join slrMpfNav f6 on
					        d.navDate = f6.navDate AND
					        f6.code = "SREPHKZ"
							left join slrMpfNav f7 on
					            d.navDate = f7.navDate AND
					            f7.code = "SRETHKF"
								left join slrMpfNav f8 on
					                d.navDate = f8.navDate AND
					                f8.code = "SRFIGBZ"
					                left join slrMpfNav f9 on
					                    d.navDate = f9.navDate AND
					                    f9.code = "SRFIHKD"
					                    left join slrMpfNav f10 on
					                        d.navDate = f10.navDate AND
					                        f10.code = "SRMMPFC"
					                        left join slrMpfNav f11 on
					                            d.navDate = f11.navDate AND
					                            f11.code = "SRMPBA8"
					                            left join slrMpfNav f12 on
					                                d.navDate = f12.navDate AND
					                                f12.code = "SRMPGR0"
order by d.navDate asc
;