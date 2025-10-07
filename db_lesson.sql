#Q1
mysql> CREATE TABLE departments (
    -> department_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    -> name VARCHAR(20),
    -> created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    -> updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    -> );


#Q2
mysql> SELECT * FROM people INNER JOIN departments ON people.person_id = departments.department_id;


#Q3
mysql> INSERT INTO departments (name)
    -> VALUES
    -> ('営業'),
    -> ('開発'),
    -> ('経理'),
    -> ('人事'),
    -> ('情報システム');

mysql> SELECT * FROM people INNER JOIN departments ON people.person_id = departments.department_id;

mysql> ALTER TABLE people 
    -> MODIFY person_id INT NOT NULL AUTO_INCREMENT;

mysql> INSERT INTO people (name, email, age, gender, department_id) 
    -> VALUES
    -> ('斎藤ひろし', 'saito@gizumo.jp', 29, 1, 4),
    -> ('森さやか', 'mori@gizumo.jp', 23, 2, 3),
    -> ('清水けんた', 'shimizu@gizumo.jp', 34, 1, 1),
    -> ('林ゆみ', 'hayashi@gizumo.jp', 21, 2, 2),
    -> ('池田しゅん', 'ikeda@gizumo.jp', 32, 1, 1),
    -> ('橋本なお', 'hashimoto@gizumo.jp', 20, 2, 5),
    -> ('山田けいご', 'yamada@gizumo.jp', 38, 1, 2),
    -> ('石川みゆき', 'ishikawa@gizumo.jp', 27, 2, 2),
    -> ('前田たくみ', 'maeda@gizumo.jp', 24, 1, 1),
    -> ('藤田あかね', 'fujita@gizumo.jp', 30, 2, 2);

mysql> SELECT * FROM people INNER JOIN reports ON people.person_id = reports.person_id;

mysql> INSERT INTO reports (report_id, person_id, content) VALUES
    -> (12, 7, '本日の営業活動で新しいクライアントを獲得しました。'),
    -> (13, 8, '月次会計処理を完了し、経費報告を提出しました。'),
    -> (14, 9, '顧客対応で問題が発生しましたが、解決できました。'),
    -> (15, 10, '開発中の新機能のコードレビューを実施しました。'),
    -> (16, 11, '営業チームとミーティングを行い、進捗確認しました。'),
    -> (17, 12, '社内システムの障害対応を行い、復旧しました。'),
    -> (18, 13, 'プロジェクト進捗レポートを作成し、上長に提出しました。'),
    -> (19, 14, '新しいプログラムのデバッグ作業を行いました。'),
    -> (20, 15, 'クライアント向けプレゼン資料を作成しました。'),
    -> (21, 16, '情報セキュリティに関する社内研修に参加しました。');


#Q4
mysql> SELECT * FROM people;

mysql> UPDATE people
    -> SET department_id = 1
    -> WHERE department_id IS NULL;


#Q5
mysql> SELECT name, age
    -> FROM people
    -> WHERE gender = 1
    -> ORDER BY age DESC;


#Q6
このSQL文は、peopleテーブルから特定のデータを取得するためのクエリです。ステップごとに説明します。
	1	SELECT name, email, age → peopleテーブルの中から name、email、ageカラム を取得します。カラムとは、テーブル内の特定の情報の種類を指します。
	2	FROM people → どのテーブルからデータを取得するかを指定します。ここでは peopleテーブル です。テーブルとは、データベース内のデータの集合のことです。
	3	WHERE department_id = 1 → department_idカラム の値が 1 の レコード のみを取得します。レコードとは、テーブルの中の1行、つまり1人分のデータのことです。
	4	ORDER BY created_a → 取得したレコードを created_atカラム の値順に並べます。デフォルトでは昇順（古い順）です。

まとめると：
「peopleテーブルの中で、department_idが1のレコードを探して、name、email、ageカラムの情報を取得し、created_atカラム順に並べるクエリ」です。

