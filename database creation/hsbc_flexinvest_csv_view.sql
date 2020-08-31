create view hsbcFlexInvestCsvView("Nav Valuation Date", "HSBC Global Money Funds - Hong Kong Dollar (D)", "HSBC Global Funds ICAV - Global Aggregate Bond Index Fund (HCHKD)", "HSBC Global Funds ICAV - Global Corporate Bond Index Fund (HCHKD)", "HSBC Global Funds ICAV - Global Emerging Market Government Bond Index Fund (HCHKD)", "HSBC Global Funds ICAV - Global Equity Index Fund (HCHKD)", "HSBC Global Funds ICAV - US Equity Index Fund (HCHKD)", "State Street Pacific Ex-Japan Index Equity Fund (Class A, HKD)") as
select
    distinct d.navDate,
	f1.nav,
	f2.nav,
	f3.nav,
	f4.nav,
	f5.nav,
	f6.nav,
	f7.nav
from
    hsbcFlexInvestNav d
	left join hsbcFlexInvestNav f1 on
		d.navDate = f1.navDate AND
		f1.code = "HK0000465903"
		left join hsbcFlexInvestNav f2 on
			d.navDate = f2.navDate AND
			f2.code = "IE00BJXS6M75"
			left join hsbcFlexInvestNav f3 on
				d.navDate = f3.navDate AND
				f3.code = "IE00BJXS6P07"
				left join hsbcFlexInvestNav f4 on
					d.navDate = f4.navDate AND
					f4.code = "IE00BH4GHK17"
					left join hsbcFlexInvestNav f5 on
					    d.navDate = f5.navDate AND
					    f5.code = "IE00BJLML261"
						left join hsbcFlexInvestNav f6 on
					        d.navDate = f6.navDate AND
					        f6.code = "IE00BK4W5M84"
							left join hsbcFlexInvestNav f7 on
					            d.navDate = f7.navDate AND
					            f7.code = "LU2076772057"
order by d.navDate asc
;