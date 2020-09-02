[![Tori logo](/docs/assets/Tori.png)](https://jchan-gi.github.io/TORI/)     
[![Tori logo](/docs/assets/Akane-Tori.png)](https://jchan-gi.github.io/TORI/)     

# TORI by jchan-gi
 [Tori](https://jchan-gi.github.io/TORI/) (Trend- & Oversell-based Rebalance Instruction) is a n-m Moving Average BIAS (NMMA BIAS) based tools to improve portfolio performance by monthly rebalance    
 [Tori](https://jchan-gi.github.io/TORI/)是一個利用時差平均值乖離率(n-m MA BIAS, NMMA BIAS)進行每月再配置以提升投資組合的程式    

# Latest news of 2020/09/02   
# 最新消息 2020/09/02   
 
Due to the operational changes in Sun Life Rainbow MPF Scheme, their price record updating would be done in ad-hoc manner after 2020/08/27. Delay for their update is expected until further notice.    
由於永明(彩虹)計畫在營運上作出更改，其成份基金價格更新將至2020/08/27。後續更新將於有需要時進行至另行通知，因此預計該等更新將會受到阻擾。   

Database record of HSBC FlexInvest fund prices have been uploaded.    
靈活智投基金數據庫(SQLite格式)現已公開。   

Tentative update date and list have been updated. Akane Tori might be updated to version 3 before end of 2020/09 tentatively.    
更新預告內容現已修改。預計2020年9月將Akane Tori升版為v3。   

The update of the AIA MPF scheme will be indefinitely suspended. The remaining MPF scheme will receive v3 updates at any unscheduled time before 2020/12/31.    
友邦計畫的更新將無限期押後。而餘下強積金計畫將於2020/12/31前不定期更新並升版至v3。   

Due to an unprecedented event, the MPF dashboard and related packages would not be *publicized* earlier than 2020/12/31 despite preparation works finished. The SQLite database would be made available in this repository as initially scheduled.    
受到一個從未發生而不可估計的事件所影響，儘管相關準備工作已大致完成，顯示強積金及Tori策略的儀表版將不會早於2020/12/31公開。

# Disclaimer    
1. The author (jchan-gi) expressly stated that nothing my repositories and webpages constitutes any advices or recommendation on investing or allocating assets on any stock or financial products.    
2. No content in my study have been prepared with respect to specific personal need and investment objects of individuals. All materials reveal to the public are applicable to the author (jchan-gi) only.   
3. All results from this repository are simulated from historical data only. It may portray inaccurate information and hence the repository must not applied in production and must used as academic exchange only. The author is not responsible in any loss induced from using this repository.   
4. All investors shall obtain kind advices from professional financial consultants before making any decisions. Professional financial consultants should recommend products or decisions that suit your needs and objectives.    
5. The author is not licensed nor professional in the field hence this studies are not professional advice and may not be suitable for anyone except myself.    
6. You shall not invest on any financial products using the information on this code repository, website or any information made public by jchan-gi alone. You agree you have fully understand and willing to undertake the risks of this script in any circumstances involves in using this script.    
7. English version shall be used if any discrepencies exists between English and Chinese version.     

# 免責聲明    
1. 本文作者現此聲明，本人的程式及網頁並非對閤下提供或作出對任何金融產品的投資或資產調配的建議。  
2. 本文內容沒有針對閣下或其他人的實際個人需要而編撰。所有公開的內容只適用於本文作者。   
3. 本文內容根據歷史數據模擬回報率等一切資訊。該等資訊可能非常不準確，本文及程式庫任何內容不應於實際環境使用，及只供學術討論。如因使用本程式庫任何內容而招致損失，作者一概不會負責。   
4. 所有投資者應在作出任何決定前，先向專業理財顧問查詢及要求提供意見。只有理財顧問的意見才能符合閣下的實際理財需要及風險胃納。   
5. 本文作者非專業人士或持牌從業者，因此，本文內容並非專業意見。而且，本文內容極有可能並不合適於除作者以外的任何人。   
6. 在作出任何投資決定前，你不應單靠此程序作出決定。當你作出任何與本程序算法有關的投資決定時，你已完全知悉並願意接受本程序或算法所帶來的風險。    
7. 本聲明如有歧義，將以英文版本作準。     


# Introduction     
# 簡介     

Tori can utilize NMMA BIAS to improve [Annualised Return](https://www.investopedia.com/terms/a/annualized-rate.asp), [Internal Rate of Return (IRR)](https://www.investopedia.com/terms/i/irr.asp), [Sharpe Ratio](https://www.investopedia.com/terms/s/sharperatio.asp) and [Conditional Value of Risk (CVaR)](https://en.wikipedia.org/wiki/Expected_shortfall) by monthly rebalancing.    

Tori可以以NMMA BIAS方式進行每月再配置以提升[年率化回報(Annualised Return)](https://www.investopedia.com/terms/a/annualized-rate.asp)、[內部回報率(IRR)](https://www.investopedia.com/terms/i/irr.asp)、[夏普比率(Sharpe Ratio)](https://www.investopedia.com/terms/s/sharperatio.asp)及[CVaR](https://en.wikipedia.org/wiki/Expected_shortfall)的方式！    

# n-m MA BIAS    
# 時差平均值乖離率    
In 2005, a japanese B.N.F utilized Moving Average BIAS to earn 2 billion yen in intra-day trading...    
In 2020, Tori could utilize n-m Moving Average BIAS to achieve high performance in long-term investments!    
The principles Tori is MA BIAS could extract rise and fall with respect to MA line, while n-m intensify the trend of the rise and fall.     
Tori would further intensify the n-m MA BIAS by considering overbuy/oversell using RSI.    

2005年，一名日本網民B．N．F利用平均值乖離率(MA BIAS)執行即日鮮⋯⋯    
2020年，Tori程式可以運用以時差方式計算的修改版平均值乖離率(n-m MA BIAS, 或NMMA BIAS)進行長線投資！    
原理係Tori中的MA BIAS可以抽取投資物的比平均值的高低抽取升跌，以時差方式突出趨勢。    
為了減少超買及加大超賣時的投資，Tori中會再考慮相對強弱指數(RSI)以倍大NMMA BIAS的效果    

# System requirement     
# 系統要求     
As long as your system contain the following then you could execute the script.
只要有以下的軟件及互聯網即可使用。  

Version 2 升版v2:  
1. R    
2. RStudio    

Version 3 升版v3:  
1. Python with Jupyter Notebook / Jupyter Lab.    
2. R    


# Testing of Tori     
# 測試結果      
[Tori](https://jchan-gi.github.io/TORI/) was tested against the following funds (Order by convenient only):   
1. [V3: HSBC SuperTrust Plus MPF](https://jchan-gi.github.io/TORI/Results/TORI_MPF_HSBC.html)    
2. [V3: Sun Life Rainbow MPF](https://jchan-gi.github.io/TORI/Results/TORI_MPF_SunLife.html)    
3. [V3: BCT ProChoice MPF](https://jchan-gi.github.io/TORI/Results/TORI_MPF_BCT.html)    
4. [V3: BOCPT Easy Choice MPF](https://jchan-gi.github.io/TORI/Results/TORI_MPF_BOCPT.html)    
5. [V3: Sun Life MPF Master Trust (Ex. Schroders MPF Master Trust)](https://github.com/jchan-gi/TORI/blob/master/Tori_MPF_Schroders_v3.ipynb)                  

[Tori](https://jchan-gi.github.io/TORI/)再配置指引經過以下的基金作出測試（排名不分先後）：   
1. [V3: 滙豐強積金智選計劃](https://jchan-gi.github.io/TORI/Results/TORI_MPF_HSBC.html)   
2. [V3: 永明彩虹強積金計劃](https://jchan-gi.github.io/TORI/Results/TORI_MPF_SunLife.html)    
3. [V3: 銀聯積金之選強積金計劃](https://jchan-gi.github.io/TORI/Results/TORI_MPF_BCT.html)    
4. [V3: 中銀保誠簡易強積金計劃](https://jchan-gi.github.io/TORI/Results/TORI_MPF_BOCPT.html)   
5. [V3: 永明強積金集成信託計劃(前施羅德強積金集成信託計劃)](https://github.com/jchan-gi/TORI/blob/master/Tori_MPF_Schroders_v3.ipynb)        

## Fund naming in SQLite database
## 基金命名方式
[Link 連結](https://jchan-gi.github.io/TORI/assets/Tori_SQLite_MPF_Name_Scheme.pdf)

# License of the source code and repositories
# 程序庫及程式源始碼的許可證
* BSD 3-clause (Revised) (See [LICENSE](https://github.com/jchan-gi/TORI/blob/master/LICENSE))
* 修訂版BSD許可證 (詳見[LICENSE檔案](https://github.com/jchan-gi/TORI/blob/master/LICENSE)，只有英文版本)

# Future update    
# 更新預告   

* The following updates are planned before 2020/09:   
1. Rewrite introduction in each evaluation file.   
2. Upgrade Akane Tori version to v3    

* The following updates are planned before 2020/10:     
1. Refactor of code. Discrete modules are expected.    

* The following updates are planned before 2021/01:   
1. Irregular rebalance instructions using HSBC FlexInvest Portfolio; retail mutual funds in Hong Kong; and portfolio of US ETFs    
2. Regular rebalance of portfolio of US ETFs         

* Due to an unprecedented event, the following upgrade would not be *publicized before 2020/12/31*     
1. A dashboard showing latest MPF price and related information.       

* 現暫定於2020年9月底前作出以下更新：        
1. 重新編寫內文介紹   
2. 將Akane Tori更新為升版v3

* 現暫定於2020年10月底前作出以下更新：        
1. 重整程式碼。預計將重整為多個模組     

* 現暫定於2021年1月底前作出以下更新：     
1. 不定期再配置方式執行以下基金組合：滙豐靈活智投(FlexInvest)的基金組合，一個由零售共同基金組成的投資組合及一個由美國上市的交易所買賣基金    
2. 以定期再配置方式執行一個由美國上市的交易所買賣基金    

* 由於發生未能預見的事件，以下更新將*不會於2020/12/31前公開*。    
1. 以儀表板方式(Dashboard)展示的最新基金價格資訊   
