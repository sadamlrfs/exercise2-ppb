# EXERCISE 2 PEMROGRAMAN PERANGKAT BERGERAK

## Layout Widget Tree

(Sementara)

```text
MyApp (StatelessWidget)
- MaterialApp
-- RowColumnPage (StatelessWidget)
--- Scaffold
---- AppBar
----- Text
---- SingleChildScrollView
----- Column
------ Container (Stadium Image Section)
------- AspectRatio
-------- Image.asset
------ Container (Text Prompt Section)
------- Text
------ Container (Menu Row Section)
------- Row
-------- Column (Matches Item)
--------- Icon
--------- SizedBox
--------- Text
-------- Column (Trophies Item)
--------- Icon
--------- SizedBox
--------- Text
-------- Column (Players Item)
--------- Icon
--------- SizedBox
--------- Text
------ CounterCard (StatefulWidget)
------- Container
-------- Row
--------- Text (Displays UCL Trophy counter)
--------- Container (Button Background)
---------- IconButton
----------- Icon (Add Icon +)
```
