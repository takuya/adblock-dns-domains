## AdGuard-DNS 用にブロックするべきDNSリストを生成

Adguard-dns 用にブロックするべきDNSをぱぱっと生成する。

主に、EasyListからドメインを抜粋してる。


## 生成したドメインリスト

このアドレスをAdguard-DNSに入れておく。
```
https://raw.githubusercontent.com/takuya/adblock-dns-domains/master/ad-domains.txt
```


## 定期更新

`cron:  '5 5 */5 * *'` で、5日おきに、月6回実行する。


