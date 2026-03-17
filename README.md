# EXERCISE 2 PEMROGRAMAN PERANGKAT BERGERAK

## Screenshot

![alt text]({4031C5B5-15EF-4D57-A1A1-D1D7982DD48A}.png)

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
