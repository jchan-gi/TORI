create view hsbcCsvView("Nav Valuation Date", "HSDICA6", "HSDISF2", "HSEPAPV", "HSEPAPX", "HSEPCHK", "HSEPCHN", "HSEPEUZ", "HSEPGBZ", "HSEPNAZ", "HSETEUV", "HSETHSH", "HSETHSI", "HSETUSV", "HSFIGBZ", "HSMMPFC", "HSMPBA8", "HSMPGR0", "HSMPSB4", "HSMPVB8") as
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
	f16.nav,
	f17.nav,
	f18.nav,
	f19.nav       
from
    hsbcMpfNav d
	left join hsbcMpfNav f1 on
		d.navDate = f1.navDate AND
		f1.code = "HSDICA6"
		left join hsbcMpfNav f2 on
			d.navDate = f2.navDate AND
			f2.code = "HSDISF2"
			left join hsbcMpfNav f3 on
				d.navDate = f3.navDate AND
				f3.code = "HSEPAPV"
				left join hsbcMpfNav f4 on
					d.navDate = f4.navDate AND
					f4.code = "HSEPAPX"
					left join hsbcMpfNav f5 on
					    d.navDate = f5.navDate AND
					    f5.code = "HSEPCHK"
						left join hsbcMpfNav f6 on
					        d.navDate = f6.navDate AND
					        f6.code = "HSEPCHN"
							left join hsbcMpfNav f7 on
					            d.navDate = f7.navDate AND
					            f7.code = "HSEPEUZ"
								left join hsbcMpfNav f8 on
					                d.navDate = f8.navDate AND
					                f8.code = "HSEPGBZ"
					                left join hsbcMpfNav f9 on
					                    d.navDate = f9.navDate AND
					                    f9.code = "HSEPNAZ"
					                    left join hsbcMpfNav f10 on
					                        d.navDate = f10.navDate AND
					                        f10.code = "HSETEUV"
					                        left join hsbcMpfNav f11 on
					                            d.navDate = f11.navDate AND
					                            f11.code = "HSETHSH"
					                            left join hsbcMpfNav f12 on
					                                d.navDate = f12.navDate AND
					                                f12.code = "HSETHSI"
                                                    left join hsbcMpfNav f13 on
					                                    d.navDate = f13.navDate AND
					                                    f13.code = "HSETUSV"
                                                        left join hsbcMpfNav f14 on
					                                        d.navDate = f14.navDate AND
					                                        f14.code = "HSFIGBZ"
                                                            left join hsbcMpfNav f15 on
					                                            d.navDate = f15.navDate AND
					                                            f15.code = "HSMMPFC"
                                                                left join hsbcMpfNav f16 on
					                                                d.navDate = f16.navDate AND
					                                                f16.code = "HSMPBA8"
                                                                    left join hsbcMpfNav f17 on
					                                                    d.navDate = f17.navDate AND
					                                                    f17.code = "HSMPGR0"
                                                                        left join hsbcMpfNav f18 on
					                                                        d.navDate = f18.navDate AND
					                                                        f18.code = "HSMPSB4"
                                                                            left join hsbcMpfNav f19 on
					                                                            d.navDate = f19.navDate AND
					                                                            f19.code = "HSMPVB8"
order by d.navDate asc
;