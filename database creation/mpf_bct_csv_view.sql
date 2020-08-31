create view bctCsvView("Nav Valuation Date", "BCDICA6", "BCDISF2", "BCEPAPX", "BCEPCHK", "BCEPEEZ", "BCEPGBZ", "BCETGBZ", "BCETGCZ", "BCETHSI", "BCFIGBZ", "BCFIHKD", "BCFIRMB", "BCMMPFC", "BCMPBA7", "BCMPFMZ", "BCMPGR9", "BCMPSB3", "BCMPSG5", "BCTYF40") as
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
    bctMpfNav d
	left join bctMpfNav f1 on
		d.navDate = f1.navDate AND
		f1.code = "BCDICA6"
		left join bctMpfNav f2 on
			d.navDate = f2.navDate AND
			f2.code = "BCDISF2"
			left join bctMpfNav f3 on
				d.navDate = f3.navDate AND
				f3.code = "BCEPAPX"
				left join bctMpfNav f4 on
					d.navDate = f4.navDate AND
					f4.code = "BCEPCHK"
					left join bctMpfNav f5 on
					    d.navDate = f5.navDate AND
					    f5.code = "BCEPEEZ"
						left join bctMpfNav f6 on
					        d.navDate = f6.navDate AND
					        f6.code = "BCEPGBZ"
							left join bctMpfNav f7 on
					            d.navDate = f7.navDate AND
					            f7.code = "BCETGBZ"
								left join bctMpfNav f8 on
					                d.navDate = f8.navDate AND
					                f8.code = "BCETGCZ"
					                left join bctMpfNav f9 on
					                    d.navDate = f9.navDate AND
					                    f9.code = "BCETHSI"
					                    left join bctMpfNav f10 on
					                        d.navDate = f10.navDate AND
					                        f10.code = "BCFIGBZ"
					                        left join bctMpfNav f11 on
					                            d.navDate = f11.navDate AND
					                            f11.code = "BCFIHKD"
					                            left join bctMpfNav f12 on
					                                d.navDate = f12.navDate AND
					                                f12.code = "BCFIRMB"
                                                    left join bctMpfNav f13 on
					                                    d.navDate = f13.navDate AND
					                                    f13.code = "BCMMPFC"
                                                        left join bctMpfNav f14 on
					                                        d.navDate = f14.navDate AND
					                                        f14.code = "BCMPBA7"
                                                            left join bctMpfNav f15 on
					                                            d.navDate = f15.navDate AND
					                                            f15.code = "BCMPFMZ"
                                                                left join bctMpfNav f16 on
					                                                d.navDate = f16.navDate AND
					                                                f16.code = "BCMPGR9"
                                                                    left join bctMpfNav f17 on
					                                                    d.navDate = f17.navDate AND
					                                                    f17.code = "BCMPSB3"
                                                                        left join bctMpfNav f18 on
					                                                        d.navDate = f18.navDate AND
					                                                        f18.code = "BCMPSG5"
                                                                            left join bctMpfNav f19 on
					                                                            d.navDate = f19.navDate AND
					                                                            f19.code = "BCTYF40"
order by d.navDate asc
;