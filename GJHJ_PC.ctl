OPTIONS (skip=1)
Load data
Infile './GJHJ_202010_320000_0_PC_SYF_4.txt'
Badfile './GJHJ_202010_320000_0_PC_SYF_4.txt.bad'
Append into table T_GJHJ_PC
fields terminated by x'09'
TRAILING NULLCOLS
(MAIL_NO,RECEIVE_TIME date 'yyyy-MM-dd HH24:mi:ss',RECEIVE_ORG_CODE,RECEIVE_ORG_NAME,RECEIVE_PROVINCE_CODE,RECEIVE_PROVINCE_NAME,RECEIVE_CITY_CODE,RECEIVE_CITY_NAME,RECEIVE_DISTRICT_CODE,RECEIVE_DISTRICT_NAME,MAIL_WEIGHT DECIMAL EXTERNAL,BUSINESS_TYPE_CODE,BUSINESS_TYPE,SEND_COUNTY,CUSTOMER_NO,STANDARD_POSTAGE DECIMAL EXTERNAL,DISCOUNT_AMOUNT DECIMAL EXTERNAL,BUSINESS_CODE,BUSINESS_NAME,TARIFF_PERCENT DECIMAL EXTERNAL,WEIGHT_PERCENT DECIMAL EXTERNAL,REGISTER_PERCENT DECIMAL EXTERNAL,TERMINAL_AMOUNT_SDR DECIMAL EXTERNAL,SDR DECIMAL EXTERNAL,TREMINAL_AMOUNT_RMB DECIMAL EXTERNAL,POSTAGE_PERCENT DECIMAL EXTERNAL,POSTAGE_AMOUNT DECIMAL EXTERNAL,SETTLE_DATE,BUSINESS_DATE)

