tabelas = <<END
| BSC_TASK                 | 
| BSC_SUGGEST_LIST         | 
| BSC_HUBBLE               | 
| BSC_SUGGEST_CONF         | 
| BSC_SITEMAP              | 
| BSC_FIELD                | 
| BSC_SERVER               | 
| BSC_USER_INTEGRATION     | 
| BSC_SEEDLIST             | 
| BSC_USER_COLLECTION      | 
| BSC_RELEVANCE            | 
| BSC_USER                 | 
| BSC_CRAWLDB              | 
| BSC_COLLECTION           | 
| BSC_RAW_DOCUMENT         | 
| BSC_TAGCLOUD_ITEM_ZERO   | 
| BSC_TAGCLOUD_ITEM        | 
| BSC_QUERY                | 
| BSC_TAGCLOUD             | 
| BSC_LIST_ITEM            | 
| BSC_SYNONYM_DATE         | 
| BSC_SYNONYM              | 
| BSC_RAW_DOCUMENT_HISTORY | 
| BSC_QUERY_LOG_TMP        | 
| BSC_QUERY_LOG            |
END
(tabelas.split "\n").map {|table| (table.delete"|").strip}.join " "