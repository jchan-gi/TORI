# TORI by jchan-gi
 TORI (Trend- & Oversell-based Rebalance Instruction) is a n-m Moving Average BIAS (NMMA BIAS) based tools to improve portfolio performance by monthly rebalance    
 TORI是一個利用時差平均值乖離率(n-m MA BIAS, NMMA BIAS)進行每月再配置以提升投資組合的程式    

# Introduction     
# 簡介     

TORI can utilize NMMA BIAS to improve [Annualised Return](https://www.investopedia.com/terms/a/annualized-rate.asp), [Internal Rate of Return (IRR)](https://www.investopedia.com/terms/i/irr.asp), [Sharpe Ratio](https://www.investopedia.com/terms/s/sharperatio.asp) and [Conditional Value of Risk (CVaR)](https://en.wikipedia.org/wiki/Expected_shortfall) by monthly rebalancing.    

TORI可以以NMMA BIAS方式進行每月再配置以提升[年率化回報(Annualised Return)](https://www.investopedia.com/terms/a/annualized-rate.asp)、[內部回報率(IRR)](https://www.investopedia.com/terms/i/irr.asp)、[夏普比率(Sharpe Ratio)](https://www.investopedia.com/terms/s/sharperatio.asp)及[CVaR](https://en.wikipedia.org/wiki/Expected_shortfall)的方式！    

# n-m MA BIAS    
# 時差平均值乖離率    
In 2005, a japanese B.N.F utilized Moving Average BIAS to earn 2 billion yen in intra-day trading...    
In 2020, TORI could utilize n-m Moving Average BIAS to achieve high performance in long-term investments!    
The principles TORI is MA BIAS could extract rise and fall with respect to MA line, while n-m intensify the trend of the rise and fall.     
TORI would further intensify the n-m MA BIAS by considering overbuy/oversell using RSI.    

2005年，一名日本網民B．N．F利用平均值乖離率(MA BIAS)執行即日鮮⋯⋯    
2020年，TORI程式可以運用以時差方式計算的修改版平均值乖離率(n-m MA BIAS, 或NMMA BIAS)進行長線投資！    
原理係TORI中的MA BIAS可以抽取投資物的比平均值的高低抽取升跌，以時差方式突出趨勢。    
為了減少超買及加大超賣時的投資，TORI中會再考慮相對強弱指數(RSI)以倍大NMMA BIAS的效果    

# System requirement     
# 系統要求     
As long as your system contain the following then you could execute the script.
只要有以下的軟件及互聯網即可使用。    
1. R    
2. RStudio    


# Disclaimer    
1. The author (jchan-gi) expressly stated that nothing my repositories and webpages
constitutes any advices or recommendation on investing or allocating assets on any
stock or financial products.    
2. No content in my study have been prepared with respect to specific personal need
and investment objects of individuals. All materials reveal to the public are applicable
to the author (jchan-gi) only.
3. All investors shall obtain kind advices from professional financial consultants before
making any decisions. Professional financial consultants should recommend products 
or decisions that suit your needs and objectives.    
4. The author is not licensed nor professional in the field hence this studies are not 
professional advice and may not be suitable for anyone except myself.  
5. You shall not invest on any financial products using the information on this code repository, website or any information made public by jchan-gi alone. You agree you have fully understand and willing to undertake the risks of this script in any circumstances involves in using this script.    
6. English version shall be used if any discrepencies exists between English and Chinese version.     
# 免責聲明    
1. 本文作者現此聲明，本人的程式及網頁並非對閤下提供或作出對任何金融產品的投資或資產調配的建議。  
2. 本文內容沒有針對閣下或其他人的實際個人需要而編撰。所有公開的內容只適用於本文作者。   
3. 所有投資者應在作出任何決定前，先向專業理財顧問查詢及要求提供意見。只有理財顧問的意見才能符合閣下的實際理財需要及風險胃納。   
4. 本文作者非專業人士或持牌從業者，因此，本文內容並非專業意見。而且，本文內容極有可能並不合適於除作者以外的任何人。
5. 在作出任何投資決定前，你不應單靠此程序作出決定。當你作出任何與本程序算法有關的投資決定時，你已完全知悉並願意接受本程序或算法所帶來的風險。    
6. 本聲明如有歧義，將以英文版本作準。    


# License of the source code and repositories
# 程序庫及程式源始碼的許可證
* BSD 3-clause (Revised) (See [LICENSE](https://github.com/jchan-gi/TORI/blob/master/LICENSE))
* 修訂版BSD許可證 (詳見[LICENSE檔案](https://github.com/jchan-gi/TORI/blob/master/LICENSE)，只有英文版本)
