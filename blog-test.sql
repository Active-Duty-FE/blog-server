/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80034 (8.0.34)
 Source Host           : localhost:3306
 Source Schema         : blog-test

 Target Server Type    : MySQL
 Target Server Version : 80034 (8.0.34)
 File Encoding         : 65001

 Date: 17/11/2023 23:17:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for fe
-- ----------------------------
DROP TABLE IF EXISTS `fe`;
CREATE TABLE `fe` (
  `title` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of fe
-- ----------------------------
BEGIN;
INSERT INTO `fe` (`title`, `content`, `id`) VALUES ('Array', '###  Array类型\n##### 属性：\n>length  \n\n```\nnew colors = [\'white\',\'black\',\'blue\'];\ncolors.lennth;\n\n```\n##### 方法：\n> ==isArray==();\n\n```\nArray.isArray(colors);\n```\n##### 删除添加方法\n> ==shift==(); 移除第一项，返回该项  \n> ==pop==(); 移除最后一项，返回该项  \n> ==unshift==(); 前端添加，返回新长度  \n> ==push==(); 后端添加，返回新长度  \n##### 排序方法\n> ==reverse==(); 反转数组顺序  \n> ==sort();==  排序\n\n```\nvar values = [1,2,3,4,5]\nfunction compare(value1,value2){\n    if(value1 < value2){  \n        return -1;  \n    {  \n    else if( value1 > value2){  \n        return 1;  \n    }else {  \n        retruen 0; \n    }\nvalues.sort(compare);\nalert(values);  //升序  反之相反\n反之相反\nfunction compare1(value1,value2){\n    return value1 - value2;\n}\nvalues.sort(compare1);\nalert(values);  //升序  反之相反\n\n```\n##### 复制、剪切方法\n> ==concat==(\'yellow(选)\',\'green(选)\'); 复制并添加，返回新数组  \n> ==slice==(起始位置,末尾位置(选)); 返回新数组(不包含末尾)  \n> 个数 = 末尾- 起始  \n> ==splice==(起始位置,删除个数,\'添加项(选)\') 返回删除项  \n> ##### 查找索引方法  \n> ==indexOf==(起始位置(选),\'寻找项\'); 返回索引值  必须全等  \n> ==lastIndextOf==(起始位置(选),\'寻找项\'); 返回索引值  \n##### 迭代方法\n> ==every==(function(item,index,array){}); 每一个true，返回true  \n> ==some==(function(item,index,array){}); 如有一个true，返回true   \n> ==filter==(function(item,index,array){}); 返回true的新数组  \n> ==forEach==(function(item,index,array){}); 给每项执行方法，无返回值  \n> ==map==(function(item,index,array){}); 给没想执行方法，返回新数组  \n> ==reduce==(function(prev,cur,index,array){});  迭代依次进行方法  \n> ==reduce==(function(prev,cur,index,array){});  迭代依次进行方法，从最后一项到第一项\n\n```\nvar values = [ 1,2,3,4,5];\nvar sum = values.reduce(function(prev,cur,index,array){\n    return prev + cur;\n});\nalert(sum); //15\n```\n### Date类型', 1);
INSERT INTO `fe` (`title`, `content`, `id`) VALUES ('Canvas', '##### 绘图步骤\n\n1. 生成 <canvas> 标签\n2. 获取 document.getElement. 或者 ref 等方法\n3. canvasObj.getContext() 获取对象\n\n\n\n##### 对象的属性及方法\n\n1. fillStyle 颜色\n2. fillRect 填充四方\n3. stokeRect 空心四方 \n4. moveTo\n5. lineTo\n\n\n\n##### 绘制路径顺序\n\n1. beginPath()\n2. moveTo 或 lineTo\n3. closePath() 闭合\n4. stroke() 描边\n\n##### 画弧线\n\n方法：arc(x, y, radius, startAngle, endAngle, anticlockwise) arc(50, 50, 25, 0, Math.PI * 2, false)\n\nanticlockwise = true 逆时针\n\n弧度 =( Math.PI / 180 ) * 角度\n\n##### 路径的样式\n\n1. lineWidth\n2. lineCap\n3. lineJoin\n\n##### 绘制文本\n\n\n', 2);
INSERT INTO `fe` (`title`, `content`, `id`) VALUES ('ECMAScript', '**字符串：**\n\ncontains();\n\nstartsWith();\n\nendsWith();\n\nrepeat();\n\n```\n${}\n```\n\n**数值：**\n\nisFinite(25);   // true\n\nisFinite(\'25\');   // true\n\nNumber.isFinite(25);   // true\n\nNumber.isFinite(\'25\');  // false\n\nMath.trunc(4.1);   // 4\n\nMath.trunc(4.9);    // 4\n\nMath.trunc(-4.1);    // -4\n\nMath.trunc(-4.9);    // -4\n\n**数组：**\n\nArray.from(array); 返回iterable对象\n\nArray.of(3,11,8)    // [3,11,8]\n\nArray.of(3).length   // 1\n\nArray()    // []\n\nArrray(3)    // [undefined,undefined,undefined]\n\nArray(3,11,8)    // [3,11,8]\n\n[1,5,9,10].find(function(value,index,arr){\n\nreturn value > 9;\n\n});    //10\n\n[1,5,NaN,10].findIndex(function(a,b,c){\n\nreturn Object.is(NaN,a);\n\n});    //2\n\n**对象：**\n\n+0 === -0      // true\n\nNaN === NaN     // false\n\nObject.is(+0,-0)      // false\n\nObject.is(NaN,NaN)     // true\n\nvar target = {a:1}\n\nvar source1 = {a:2}\n\nvar source2 = {b:3}\n\nObject.assign(target,source1,source2)    target     // {a:2,B:2}', 3);
INSERT INTO `fe` (`title`, `content`, `id`) VALUES ('JS', '#### 对象\nObject.keys(对象);\n```\nvar obj = {\n  key1: 1,\n  key2: 2\n};\n```\n\n\n\n\n#### delete 对象.属性  ==不能删除继承的属性==\n```\nvar obj = { p: 1 };\nObject.keys(obj) // [\"p\"]\ndelete obj.p // true\nobj.p  //undefined\nObject.keys(obj) // []\n```\n\n```\nvar obj = {};\ndelete obj.toString // true\nobj.toString // function toString() { [native code] }\n```\n#### 属性 in 对象\n```\nvar obj = { p: 1 };\n\'p\' in obj // true\n\'toString\' in obj // true\nconsole.log(obj.hasOwnProperty(\'toString\')); //false\n```\n#### 函数的提升\n\n```\nvar f = function () {\n  console.log(\'1\');\n}\nfunction f() {\n  console.log(\'2\');\n}\nf(); //1\n```\n#### arguments属性 length属性\n\n```\nfunction f() {\nreturn arguments.length;\n}\nf(1,2); //2\nfunction f() {\nreturn length;\n}\nf(1,2); //0\n```\n#### arguments.callee   严格模式里禁用 不推荐\nvar f=function(){\n    console.log(arguments.callee);\n\n}\n#### 闭包\n\n```\nfunction createIncrementor(start) {\n  return function () {\n    return console.log(start++);\n  };\n}\n\nvar inc = createIncrementor(5);\ninc();  //5\ninc();  //6\ninc();  //7\nfunction increase(int){\n	function inner(){\n		console.log(int++);\n	}\n	return inner;\n}\nvar a = increase(6);\na();  //6\na();  //7\na();  //8\n```\n\n```\nfunction Person(name) {\n  var _age;\n  function setAge(n) {\n    _age = n;\n  }\n  function getAge() {\n    return _age;\n  }\n\n  return {\n    name: name,\n    getAge: getAge,\n    setAge: setAge\n  };\n}\n\nvar p1 = Person(\'张三\');\np1.setAge(25);\np1.getAge() // 25\n```\n#### 键名 in 数组\n\n```\nvar arr = [];\narr[100] = \'a\';\n\n100 in arr // true\n1 in arr   // false\n```\n#### 数组空位和undefined\n```\nvar a = [, , ,];\n\na.forEach(function (x, i) {\n  console.log(i + \'. \' + x);\n})\n// 不产生任何输出\n\nfor (var i in a) {\n  console.log(i);\n}\n// 不产生任何输出\n\nObject.keys(a)\n// []\n```\n\n```\nvar a = [undefined, undefined, undefined];\n\na.forEach(function (x, i) {\n  console.log(i + \'. \' + x);\n});\n// 0. undefined\n// 1. undefined\n// 2. undefined\n\nfor (var i in a) {\n  console.log(i);\n}\n// 0\n// 1\n// 2\n\nObject.keys(a)\n// [\'0\', \'1\', \'2\']\n```', 4);
INSERT INTO `fe` (`title`, `content`, `id`) VALUES ('Regex', '### 点字符 .\n\n/c.t/   ===>cat,c2t,c-t  /c..t/  ===>   caat\\\n不匹配：**\\r** -- (回车), **\\n** -- (换行), **\\u2028** -- (分行符)\n\n### 位置符号 ^  \\$\n\n```javascript\n/^aaa/.test(\'aaa123\')  // true  aaa开始\n/aaa$/.test(\'123aaa\')  // true  aaa结尾\n```\n\n### 选择符 |\n\n```javascript\n/11|22/.test(\'911\')  //true\n\n```\n\n### 转义符 \\\\\n```javascript\n    /1\\+1/.test(\'1+1\')   //true\n```\n^、.、\\[、\\$、(、)、|、\\*、+、?、{、\\\\\n\n### 字符类 \\[]\n\n\\[xyz] 表示x、y、z之中任选一个匹配\n```javascript\n    /[abc]/.test(\'hello world\')   // false\n    /[abc]/.test(\'apple\')   // true\n```\n### 脱字符 ^\n\n\\[^xyz]  除了x、y、z之外都可以匹配\n\n    /[^abc]/.test(\'bbc news\') // true\n    /[^abc]/.test(\'bbc\') // false\n\n可以解决 .(点) 不包括换行符的问题\n```javascript\n    var s = \'Please yes\\nmake my day!\';\n    s.match(/yes.*day/) // null\n    s.match(/yes[^]*day/) // [ \'yes\\nmake my day\']\n```\n注意，脱字符只有在字符类的第一个位置才有特殊含义，否则就是字面含义。\n\n### 连字符 -\n\n\\[abc]  === \\[a-c]\n\n### 预定义模式\n\n\\d     匹配0-9之间的任一数字，相当于\\[0-9]。\\\n\\D     匹配所有0-9以外的字符，相当于\\[^0-9]。\\\n\\w     匹配任意的字母、数字和下划线，相当于\\[A-Za-z0-9\\_]。\\\n\\W    除所有字母、数字和下划线以外的字符，相当于\\[^A-Za-z0-9\\_]。\\\n\\s     匹配空格（包括换行符、制表符、空格符等），相等于\\[ \\t\\r\\n\\v\\f]。\\\n\\S     匹配非空格的字符，相当于\\[^ \\t\\r\\n\\v\\f]。\\\n\\b     匹配词的边界。\\\n\\B     匹配非词边界，即在词的内部。\\\n/\\[^\\d.]+/  匹配非数字和小数点\n\\[\\uac00-\\ud7ff]  检测韩文\\\n\\[\\u4e00-\\u9fa5]  检测中文(包括繁体)\\\n\\[ぁ-んァ-ヶ] 检测日文 -- 无中文\\\n\\[\\u4e00-\\u9fa5]  检测日文 -- 有中文(繁体)\n\n    ^\\s*(<(?!!)).*[\\uac00-\\ud7ff]  非注释韩语\n```javascript\n<!---->\n\n    // \\b 的例子\n    /\\bworld/.test(\'hello world\') // true\n    /\\bworld/.test(\'hello-world\') // true\n    /\\bworld/.test(\'helloworld\') // false\n\n    // \\B 的例子\n    /\\Bworld/.test(\'hello-world\') // false\n    /\\Bworld/.test(\'helloworld\') // true\n\n<!---->\n```\n    [\\S\\s] //指代一切字符\n\n### 重复类 {}\n\n{n} -- 重复n次\\\n{n,} -- 至少重复n次\\\n{n,m} -- n <= 重复 <= m\n\n### 量词符 ？ \\* +\n\n? === {0,1}\\\n\\*  === {0,}\\\n\\+  === {1,}\n\n### 贪婪模式(匹配到不满足条件为止)\n```javascript\n    var s = \'aaa\';  \n    s.match(/a+/) // [\"aaa\"]\n```\n\n### 非贪婪模式\n\n\\+?：表示某个模式出现1次或多次，匹配时采用非贪婪模式。\n\\*?：表示某个模式出现0次或多次，匹配时采用非贪婪模式。\n??：表格某个模式出现0次或1次，匹配时采用非贪婪模式。\n\n### 修饰符 g i m\n\nm 多行模式\\\n因为b是第二行的首字母，所以结果为true\n```javascript\n    /^b/m.test(\'a\\nb\') // true\n```\n\n### 组匹配\n```javascript\n    /fred+/.test(\'fredd\') // true\n    /(fred)+/.test(\'fredfred\') // true\n     /(fred)(f)/.exec(\'fredfred\') //\"fredf\", \"fred\", \"f\"\n```\n### 非捕获组\n```javascript\n    var m = \'abc\'.match(/(?:.)b(.)/);  \n    m // [\"abc\", \"c\"]\n```\n### 先行断言\n\nx(?=y)\\\nx只有在y前面才匹配，y不会被计入返回结果。\n```javascript\n    var a = \"fjewioew10021%1231\";\n    a.match(/\\d+(?=%)/);  //10021\n```\n### 先行否定断言\n\nx(?!y)\\\nx只有不在y前面才匹配，y不会被计入返回结果。\n```javascript\n    /\\d+(?!\\.)/.exec(\'3.14\')\n    // [\"14\"]\n```', 5);
INSERT INTO `fe` (`title`, `content`, `id`) VALUES ('git', '## 终端机常用命令\n\n| Windows | macOS / Linux | 说明               |\n| ------- | ------------- | ------------------ |\n| cd      | cd            | 切换目录           |\n| cd      | pwd           | 获取当前所在的位置 |\n| dir     | ls            | 列出当前文件列表   |\n| mkdir   | mkdir         | 创建新的目录       |\n| 无      | touch         | 创建文件           |\n| copy    | cp            | 复制文件           |\n| move    | mv            | 移动文件           |\n| del     | rm            | 删除文件           |\n| cls     | clear         | 清楚画面上的内容   |\n\n`cd /tmp` 绝对路径\n`cd my_project` 相对路径\n`cd ..` 往上一目录移动\n`ls -al` 查看所有历史记录\n## VIM\n* Normal模式 => Insert模式\n  i = insert / a = append / o = new line\n* Insert模式 => Normal模式\n  ESC or Ctrl + [\n\n## 用户设置\n### 设置\n``` \n$ git config --global user.name \"Hyang\"\n$ git config --global user.email \"asdf@fgh.com\"\n```\n### 查看\n`$ git config --listgit`\n\n## 设置缩写\n```\n$ git config --global alias.co checkout\n$ git config --global alias.br branch\n$ git config --global alias.st status\n$ git config --global alias.l \"log --oneline --graph\"\n$ git config --global alias.ls \'log --graph --pretty=format:\"%h <%an> %ar %s\"\'\n```\n## 创建文件\n* `$ echo \"hello\" > index.html` 带内容\n* `touch index.html` 不带内容\n\n## 提交到暂存区\n#### 添加特定\n`$ git add inde.html` \n`$ git add *.html`\n#### 全部添加\n`$ git add .` 添加当前目录所有的内容\n`$ git add --all` 添加所有\n\n## 暂存区提交到储存库\n`$ git commit -m \"第一个commnit\"` 写内容\n`$ git commit --allow-empty -m \"\"` 不写内容\n\n## 查看记录(最好用 SourceTree 查看)\n#### 普通\n`$ git log` \n#### 简版查看\n`$ git log --oneline --graph` \n#### 查询某人的commit\n`$ git log --oneline --author=\"hyang\"` \n#### 查询commit信息中包含关键字\n`$ git log --oneline --grep=\"first commit\"` \n#### 查询文件中包含关键字\n`$ git log -S \"hello\"` \n#### 查询时间段的\n```\n$ git log --oneline --since=\"9am\" --until=\"12am\" //当天\n$ git log --oneline --since=\"9am\" --until=\"12am\" --after=\"2022-03\" //2022年3月之后的每天上午9点到12点的记录\n```\n## 删除文件\n`$ git rm index.html`  等同于rm + git add\n## 改名\n`$ git mv hh.html aa.html` 等同于mv + git add\n## 修改最后一次 commit 信息\n`$ git commit --amend -m \'modify\'`\n## 空目录被追踪\n添加.keep 或 .gitkeep\n## 忽略开发阶段文件\n* 生成 .gitignore 文件\n* 添加 例如：*.tmp db\\/.sqlite3\n## 忽略 .gitingore 强制 add\n`$ git add -f`\n## 清楚忽略文件\n`$ git clean -fX`\n## 查看特定文件的 commit 记录\n#### 一般查看\n`$ git log aa.html`\n#### 查看改动\n`$ git log -p aa.html`\n## 这行代码是谁写\n#### 一般查询\n`$ git blame aa.html`\n#### 选行查询\n`$ git blame -L 5,10 aa.html`\n## reset 用法\n\n| 模式     | soft | mixed  | hard   |\n| -------- | ---- | ------ | ------ |\n| 指针     | 移动 | 移动   | 移动   |\n| 工作目录 | 不变 | 被重置 | 被重置 |\n| 暂存区   | 不变 | 不变   | 被重置 |\n\n```\n$ git reset --hard a92f434\n$ git reset --hard HEAD~2\n```\n## 查看 reset 之前记录\n`$ git reflog`\n## 使用分支\n#### 查看分支\n`$ git branch -v`\n#### 创建分支\n`$ git branch cat`\n#### 重命名\n`$ git branch -m cat tiger\n#### 删除分支\n###### 删除已合并\n`$ git branch -d tiger`\n###### 强制删除未合并\n`$ git branch -D tiger`\n#### 切换分支\n###### 普通切换\n`$ git checkout cat`\n###### 创建并切换\n`$ git checkout -b dog`\n#### 合并分支\n###### 普通合并\n* 先切换到主线master\n`$ git merge cat` \n###### REBASE合并 （换自己的根）\n* 在分支上操作\n###### 普通 REBASE 合并\n`git rebase master`\n###### 特殊 REBASE 合并（合并分支 commit 后再合并到 master）\n`git rebase -i master`\n进入vim \n* i进入编辑模式\n* 把需要合并的log前字母 => 改成s(squash)\n* ESC退出编辑模式\n* :wq 保存后退出\n\n## 远程合作\n#### 查看远程别名列表\n`$ git remote -v`\n#### 给指定远程起别名\n`$ git remote add origin *****/****.git`\n#### 本地 master 推到远程 origin\n`$ git push -u origin master`\n#### 拉取远程git\n`$ git fetch`\n#### 切换到远程库\n`$ git checkout origin/master`\n#### 查看内容\n$ ll\n#### 查看里面文件\n` cat 文件名`\n#### 进行合并\n`$ git merge origin/master`\n`$ git pull origin master` === git fetch + git merge\n`$ git pull -rebase` \n#### 克隆 Repository 到本地\n`$ git clone ****/***.git`\n#### 复制 Repository 到自己的Repository\nFork\n\n#### git diff 文件名 or git diff\n以行为单位比较暂存区和工作区的数据\n#### git diff HEAD or 索引号 文件名\n比较暂存区和本地库\n\n## VSCode 终端设置 git bash\n```\n\"terminal.integrated.profiles.windows\": {\n        \"PowerShell\": {\n            \"source\": \"PowerShell\",\n            \"icon\": \"terminal-powershell\"\n        },\n        \"Command Prompt\": {\n            \"path\": [\n                \"${env:windir}\\\\Sysnative\\\\cmd.exe\",\n                \"${env:windir}\\\\System32\\\\cmd.exe\"\n            ],\n            \"args\": [],\n            \"icon\": \"terminal-cmd\"\n        },\n        \"gitBash\": {\n            \"path\": \"D:\\\\ProgramFiles\\\\Git\\\\bin\\\\bash.exe\"\n        }\n    }\n```', 6);
INSERT INTO `fe` (`title`, `content`, `id`) VALUES ('mysql', '> 配置环境变量\n\n`export PATH=$PATH:/usr/local/mysql/bin`\n\n> 进入 mysql \n\n`mysql -uroot -pFbgid~8867`\n\n### 数据库四大语言\n> DDL (Data Definition Language) 数据库定义语言\n\n>> 数据库\n\n`show databases;` 查看所有数据库\n`create database if not exists demo_db;` 创建数据库\n`use demo_db;` 进入数据库\n`select database();` 查看当先使用的数据库\n`drop database demo_db;` 删除数据库\n\n>> 表\n\n`show tables;` 查看所有表格\n`desc t_user;` 查看某张表的结构\n\n```js\ncreate table if not exists t_users(\n    id int primary key auto_increment,\n    name varchar(20) unique not null,\n    age int\n    level int default 0\n); 创建表格\n```\n`drop table if exists t_table;` 删除某张表\n\n>> 修改表结构\n\n`alter table \'原名\' remane to \'新名\';` 修改表名\n`alter table \'表名\' add \'列名\' 类型;` 添加一个新的列\n`alter table \'表名\' add \'列名\' 类型 timestamp default current_timestamp on update current_timestamp;` 添加修改时间字段，并修改时改为新的时间\n`alter table \'表名\' drop \'列名\';` 删除一列数据\n`alter table \'表名\' change \'原列名\' \'新列名\' 类型;` 修改列的名称\n`alter table \'表名\' modify \'列名\' 类型;` 修该列的数据类型\n\n> DML (Data Manipulation Language) 数据库操作语言\n\n`insert into \'表名\' (列名) values (值);` 增加数据\n`delete from \'表名\';` 清空表\n`delete from \'表名\' where 条件;` 根据条件删除数据\n`update \'表名\' set \'列名\'=\'新数据\', \'列名\'=\'新数据\' 条件;` 修表数据-条件\n\n> DQL (Data Query Language) 数据库查询语言 \n```\nselect \'列名\', \'列名\',\'列名\' from \'表名\' where 条件 order by 排序依据 limit 查询个数 offset 查询偏移值 group by \'列名\' having where 条件\n```\n`select * from \'表名\';` 查询所有\n`select * from \'表明\' where \'列名\' in (\'列值1\', \'列值2\');` 枚举出数据\n\n> 模糊查询 (LIKE)\n\n% 表示多个自字符\n— 表示一个字符\n`select * from \'表名\' where \'列名\' like \'_a%\';`   vapple\n\n> 排序(ORDER BY) ASC DESC\n\n`select * from \'\' order by asc;` 升序\n`select * from \'\' order by desc;` 降序\n\n> 分页查询\n\n`select * from \'表名\' limit 个数 offset 偏移量;`\n\n> 聚合函数 \n\n`select avg(列名) as avg** from \'表名\';` 求平均值\n\n[avg, max, min, count, sum]\n\n> 分组\n\n`select 列名, avg(列名) from \'表名\' group by \'列名\';` \n\n> 分组并加条\n\n`select 列名, avg(列名) **avg from \'表名\' group by \'列名\' having **avg的条件;` \n\n> 外键设置\n\n>>创建时指定\n\n```js\ncreate table if not exits \'表名\'(\n    id int primary key auto_increment,\n    name varchar(10),\n    brand_id int,\n    foreign key (brand_id) reference 外表明(外列名)\n);\n```\n>>修改已有的表\n\n`alter table \'表名\' add \'外键\' 类型;`\n`alter table \'表名\' add foreigh key (外键) reference 外表名(外列名);`\n\n>> 更新外键\n\nrestrict(默认) 不允许，会报错\nno action sql标准中定义的，与 restrict 一致\non update cascade 同步更新\non delete cascade 同步删除\nset null 值改为 null\n\n修改已有外键\n`show create table 表名;` 查看外键名\n`alter table 表名 drop foreign key 外键名;` 删除外键\n`alter table 表名 add foreign key (外键) reference 外表名(外列名) 更新外间条件;` 添加有更新条件的外键\n\n> 多表查询\n\n`select * from 表名 left join 外表名 on 连接条件 where 进一步的显示条件 -> \'列名\' is null 或者 is not null;`\n\nleft join 左连接\nright join 右连接\ninner join 内连接\n(left join) union (right join) 全连接\n(left join where \'列名\' is null) union (right join where \'列名\' is null) 全反连接\n\n> 转数据格式\n\n`select json_object(\'新列名\', 值, \'新列名\', 值) as 对象名 from ... ;` 转对象\n`select json_arrayagg(json_object(\'新列名\', 值, \'新列名\', 值) as 数组对象名) from ... ;` 转数组\n\n> DCL (Data Control Language) 数据库控制语言\n\n> 连接数据库\n\n> node 连接数据库\n\n```js\nconst connectionPool = mysql.createPool({\n    port: 3306,\n    host: \'localhost\',\n    database: \'数据库名\',\n    username: \'root\',\n    password: \'Fbgid~8867\',\n    connectionLimit: 5\n})\n```\n\n> 检查是否连接成功\n\n```js\n    connectionPool.getConnection((err, connection) => {\n        if(err){\n            console.log(\'获取连接失败\', err)\n            return\n        }\n        connection.connect((err) => {\n            if(err){\n                console.log(\'数据交互失败\', err)\n            } else {\n                console.log(\'数据交互成功！\')\n            }\n        })\n    })\n```', 7);
INSERT INTO `fe` (`title`, `content`, `id`) VALUES ('prettier', '.prettierrc\n\n```json\n{\n  \"useTabs\": false,\n  \"tabWidth\": 2,\n  \"printWidth\": 120,\n  \"singleQuote\": true,\n  \"trailingComma\": \"none\",\n  \"semi\": false\n}\n\n\n```\n.prettierignore\n```json\n/build/*\n.local\n.output.js\n/node_modules/**\n\n**/*.svg\n**/*.sh\n\n/public/*\n```', 8);
INSERT INTO `fe` (`title`, `content`, `id`) VALUES ('react-coderwhy', 'react脚手架  \n####  第一步\n全局安装 npm install create-react-app -g\n####  第二步\n切换到想创建项目的目录，使用命令 create-react-app project-name\n####  第三步\n进入项目文件夹 cd project-name\n####  第四步\n启动项目 npm start or yarn start\n\n### 变化 *\n## React 18.* render的新方法\nas-is\n```js\nReactDOM.render(\n    <React.StrictMode>\n        <App />\n    </React.StrictMode>,\n    document.getElementById(\'root\')\n)\n```\nto-be\n```js\nReactDOM.createRoot(document.getElementById(\'root\')).render(\n  <React.StrictMode>\n    <App />\n  </React.StrictMode>\n)\n```\nor\n```js\nconst container = document.getElementById(\'root\')\nconst root = ReactDOM.createRoot(container)\nroot.render(\n    <React.StrictMode>\n        <App />\n    </React.StrictMode>\n)\n```\n\n## Proxy 变化 *\nsetupProxy.js\n```js\nconst {createProxyMiddleware} = require(\'http-proxy-middleware\')\n\nmodule.exports = function(app){\n  app.use(\n    createProxyMiddleware(\'/api1\',{\n      target:\'http://localhost:5000\',\n      changeOrigin:true,\n      pathRewrite:{\'^/api1\':\'\'}\n    }),\n    createProxyMiddleware(\'/api2\',{\n      target:\'http://localhost:5001\', \n    })\n  )\n}\n```\n\n## Router\n* 安装  \n```console\nnpm install --save react-router-dom\n```\n* 引入并适用\n#### 基本用法\n```js\n// 适用 BrowserRouter 或 HashRouter\nimport { BrowserRouter, Link, Route } from \'react-router-dom\'\n<BrowserLink>\n  <Link to=\"/home\">Home</Link>\n  <Link to=\"/about\">About</Link>\n  <Route path=\"/home\" component={Home} />\n  <Route path=\"/about\" component={About} />\n</BrowserLink>\n```\n#### Link 高亮\n\n\n#### 基本用法 Link\n```js\n// 适用 BrowserRouter 或 HashRouter\nimport { BrowserRouter, Link, Route, Routes } from \'react-router-dom\'\n<BrowserLink>\n  <Link to=\"/home\">Home</Link>\n  <Link to=\"/about\">About</Link>\n  <Routes>\n    <Route path=\"/home\" component={Home} />\n    <Route path=\"/about\" component={About} />\n  </Routes>\n</BrowserLink>\n```\n#### 高亮 NavLink\n```js\n// 适用 BrowserRouter 或 HashRouter\nimport { BrowserRouter, NavLink, Route, Routes } from \'react-router-dom\'\n<BrowserLink>\n  <NavLink to=\"/home\">Home</NavLink>\n  <NavLink to=\"/about\">About</NavLink>\n  <Routes>\n    <Route path=\"/home\" component={Home} />\n    <Route path=\"/about\" component={About} />\n  </Routes>\n</BrowserLink>\n```\n### router 传递参数 Router V5\n#### App 代码\n```js\nstate = [\n  {id:01, title:\'aaa\'},\n  {id:02, title:\'bbb\'},\n  {id:02, title:\'ccc\'}\n]\nconst messageArr = this.state\nreturn (\n  {\n    messageArr.map((msgObj) => {\n      return (\n        <li key={msgObj.id}>\n          /* 向路由组件传递 params 参数 */\n          /* <Link to={`/home/message/detail${msgObj.id}/${msgObj.titel}`}>{msgObj.title}</Link> */\n          /* 向路由组件传递 search 参数 */\n          /* <Link to={`/home/message/detail?id=${msgObj.id}&title=${msgObj.titel}`}>{msgObj.title}</Link> */\n          /* 向路由组件传递 state 参数 */\n          /* <Link to={{pathname:\'/home/message/detail\',state:{id:msgObj.id,title:msgObj.title}}}>{msgObj.title}</Link> */\n      )\n    })\n  }\n  /* 生命接收 params 参数 */\n  /*<Route path=\"/home/message/detail/:id/:title\" component={Detail} />*/\n  /* search 参数无需接收，正常注册路由即可 */\n  /*<Route path=\"/home/message/detail/:id/:title\" component={Detail} />*/\n  /* state 参数无需接收，正常注册路由即可 */\n  /*<Route path=\"/home/message/detail/:id/:title\" component={Detail} />*/\n)\n```\n#### Detail 代码\n```js\n/* 接收 params 参数 */\n/* const {id,title} =  this.props.match.params */\n/* 接收 search 参数 */\n/* \n  const {search} =  this.props.locattion.params \n  const {id,title} = qs.parse(search.slice(1))\n*/\n/* 接收 state 参数 */\n/* const {id,title} =  this.props.location.state */\n```\n#### 总结\n1. params 参数\n    路由链接（携带参数）：  \n    `<Link to=\'/demo/test/tom/18\'>详情</Link>`  \n    注册路由：  \n    `<Route path=\'/demo/test/:name/:age\' component={Test} />`  \n    接收参数：  \n    `this.props.match.params`\n2. seach 参数\n    路由链接（携带参数）：  \n    `<Link to=\'/demo/test/?name=tom&age=18\'>详情</Link>`  \n    注册路由：  \n    `<Route path=\'/demo/test\' component={Test} />`  \n    接收参数：  \n    `this.props.location.search`  \n    备注：获取到 search 是 urlencode 编码字符串，需要借助 qeurystring 解析\n3. state 参数\n    路由链接（携带参数）：  \n    `<Link to={{pathname:\'/demo/test\',state:{name:\'tom\',age:18}}}>详情</Link>`  \n    注册路由：  \n    `<Route path=\'/demo/test\' component={Test} />`  \n    接收参数：  \n    `this.props.location.state`  \n    备注：刷新也可以保留参数\n## react UI\n### material-ui（国外）\n官网：http://www.material-ui.com  \ngithub：https://github.com/callemall/material-ui  \n### ant-design（蚂蚁金服）\n官网：https://ant.design/index-cn  \ngithub：https://github.com/ant-design/ant-design  \n`npm install antd`  \n想看详细的配置： 官网右上角 - 3.X版本 - 左侧 create-react-app 中使用  \n不能按一下方法暴露\n样式按需引入 -> 配置脚手架 -> 暴露脚手架配置\n`npm eject` Y\n\n### element UI （饿了吗）\n### vantUI （有赞） - vue 移动端设计\n\nnpm 设置淘宝镜像\n```\nnpm get registry\nnpm config set registry https://registry.npm.taobao.org\nnpm config set registry https://registry.npmjs.org\n```\n## redux 求和案例 - 精简版\n1. 去除 Count 组件自身的状态\n2. src 下建立：  \n    -src  \n      >-redux  \n      >> -store.js  \n      >> -count_reducer.js\n3. store.js  \n3.1 引入 redux 中的 createStore 函数，创建一个 store  \n3.2 createStore 调用时要传入一个为其服务的 reducer  \n3.3 记得暴露 store 对象\n4. count_reducer.js  \n4.1 reducer 本质是一个函数，接收 preState, action 返回加工后状态  \n4.2 reducer 有两个作用：初始化状态，加工状态\n4.3 reducer 被第一次调用时，是 store 自动触发的，传递的 preState 是 undefined\n5. 在 index.js 中监测 store 状态的改变，一旦发生改变重新渲染 `<App />`  \n```js\nstore.subscribe(() => {\n  root.render(\n    <React.StrictMode>\n      <App />\n    </React.StrictMode>\n  )\n})\n```\n  或者 \n  ```js\n    // 监测 redux 中状态的变化，只要有变化，就调用 render\n    store.subscribe(() => {\n      this.setState({})\n    })\n  }\n  ```\n  备注: redux 只负责管理状态，至于状态的改变驱动着页面的展示，要靠自己写。\n## redux 求和案例 - 完整版 \n新增文件：  \n1. count_action.js 专门用于创建 action 对象\n2. constant.js 防止容易写错的 type 值\n## redux 求和案例 - redux 异步 action 版\n1. 明确：延迟的动作不想交给组件自身，想给 action\n2. 何时需要异步 action：想要对状态进行操作，但是具体的数据靠异步任务返回。\n3. 具体编码：  \n3.1 npm install redux-thunk, 并配置在 store 中  \n3.2 创建 action 的函数不再返回一般对象，而是一个函数，该函数中写异步任务。  \n3.3 异步任务有结果后，分发一个同步的 action 去真正操作数据。\n4. 备注：异步 action 不是必须要写的，完全可以自己等待异步任务的结果后再去分发同步 action\n## redux 求和案例 - react-redux 基本使用\n1. 明确两个概念  \n1.1 UI组件：不能使用任何 redux 的 api，只负责页面的呈现，交互等  \n1.2 容器组件：负责和 redux 通信，讲结果交给 UI 组件。\n2. 如何创建一个容器组件 - 靠 react-redux 的 connect 函数\n`connect(mapStateToProps,mapDispatchToProps)(UI 组件)`  \n2.1 mapStateToProps：映射状态，返回值是一个对象  \n2.2 mapDispatchToProps：映射操作状态的方法，返回值是一个对象 \n3.   \n3.1 备注：容器组件中的 store 是靠 props 传进去的，而不是在容器组件中直接引入\n3.2 备注：mapDispatchToProps，也可以是一个对象\n\n## redux 求和案例 - react-redux 优化\n1. 容器组件和 UI 组件混成一个文件\n2. 无需自己给容器组件传递 store, 给 <App /> 包裹一个 <Provider store={store}></Provider>即可\n3. 使用了 react-redux 后也不用再自己监测 redux 中状态的改变，容器组件可以自动完成这个工作\n4. mapDispatchToProps 也可以简写成一个对象\n5. 一个组件要和 redux 打交道，要经过哪几步？  \n5.1 定义好 UI 组件 -- 不暴露  \n5.2 引入 connect 生成一个容器组件，并暴露，写法如下：\n```js\nconnect(\n  state => ({key:value}), // 映射状态\n  {key:xxxxAction} // 映射操作状态方法\n)(UI 组件)\n```\n5.3 在 UI 组件中通过 this.props.xxx 读取和操作状态\n## redux 求和案例 - react-redux 数据共享版\n1. 定义一个 Person 组件，和 Count 组件通过 redux 共享数据\n2. 为 Person 组件编写：reducer, action 配置 constant 常量\n3. 重点：Person 的reducer 和 Count 的 Reducer 要使用 combineReducers 进行合并。合并后的总状态是一个对象！\n4. 交给 store 的是总 reducer， 最后注意在组件中读取状态的时候，记得“取到位”。\n\n## redux 求和案例 - react-redux 开发者工具的使用\n1. npm install redux-devtools-extension\n2. store 中进行配置\n```js\nimport {composeWithDevTools} from \'redux-devtools-extention\'\nconst store = createStore(allReducer,composeWithDevTools(applyMiddleWare(thunks)))\n```\n## redux 求和案例 - react-redux 最终版\n1. 所有变量名字要规范，尽量触发对象的简写方式\n2. reducer 文件夹中，编写 index.js 专门用于汇总并暴露所有的 reducer\n\n# 纯函数\n1. 一类特别的函数：只要是同样的输入（实参），必定的同样的输出（返回）\n2. 必须遵守以下约束：\n2.1 不得改写参数数据\n2.2 不会产生任何副作用，例如网络请求，输入和输出设备\n2.3 不能调用 Date.now() 或者 Math.random() 等不纯的方法\n3. redux 的 reducer 函数必须是一个纯函数\n## 本地服务器\n`npm i serve -g`\n`serve build`\n## 拓展\n#### setState 更新状态的 2 种写法\n1. setState(stateChange,[callback]) ------ 对象式的 setState\n1.1 stateChange 为状态改变对象（该对象可以体现出状态的更改）\n1.2 callback 是可选的回调函数，他在状态更新完毕、界面也更新后（render调用后）才被调用\n2. setState(updater,[callback]) ------ 函数式的 setState\n2.1 updater 为返回 stateChange 对象的函数\n2.2 updater 可以接收到 state 和 props\n2.3 callback 是可选的回调函数，他在状态更新，界面更新后（render调用后）才被调用\n##### 总结\n1. 对象式的 setState 是函数式的 setState 的简写方式（语法糖）\n2. 使用原则：\n2.1 如果新状态不依赖于原状态 => 使用对象方式\n2.2 如果新状态依赖于原状态 => 使用函数式\n2.3 如果需要在 setState() 执行后获取最新的状态数据，要在第二个 callback 函数中读取\n\n# Hooks\n### 1. React Hook/Hooks 是什么？\n1.  Hook 是 React 16.8.0 版本增加的新特特性/新语法\n2. 可以让你再函数组件中使用 state 以及其他的 React 特性\n### 2. 三个常用的 Hook\n1. State Hook: React.useState()\n2. Effect Hook: React.useEffect()\n3. Ref Hook: React.useRef()\n### 3. State Hook\n1. State Hook 让函数组件也可以有 state 状态，并进行状态数据的读写操作\n2. 语法：const [xxx,setXxx] = React.useState(initValue)\n3. useState() 说明：\n    参数：第一次初始化指定的值在内部做缓存\n    返回值：包含 2 个元素的数组，第一个为内部当前状态值，第二个为更新状态的函数\n4. setXxx() 两种写法：\n    setXxx(newValue): 参数为非函数值，直接指定新的状态值，内部用其覆盖运来的状态值\n    setXxx(value => newValue): 参数为函数，接收原本的状态值，返回新的状态值，内部用其覆盖原来的状态值\n\n### 4. Effect Hook\n1. Effect Hook 可以让你在函数组件中执行副作用操作（用于模拟类组件中的生命周期钩子）\n2. React 中的副作用操作：\n发 ajax 请求数据获取\n设置订阅 / 启动定时器\n手动更改真是DOM\n3. 语法说明：\n```js\nuseEffect(() => {\n  // 在此可以执行任何带副作用的操作\n  return () => {\n    // 在组件卸载前执行，做一些收尾工作，比如清除定时器 / 取消订阅等\n  }\n},[stateValue]) // 如果指定的是 []，回调函数只会在第一次 render() 后执行\n```\n4. 可以把 useEffect Hook 看做如下三个函数的组合\ncomponentDidMount()\ncomponentDidUpdate()\ncomponentWillUnmount()\n\n### 5. Ref Hook\n1. Ref Hook 可以在函数组件中存储/查找组件内的标签或任意其他数据\n2. 语法：const refContaner = useRef()\n3. 作用：保存标签对象，功能与 React.createRef() 一样\n### 6. context\n### 7. render props\n如何想组件内部动态传入带内容的结构（标签）？    \nvue 中：  \n使用 slot 技术，也就是通过组件标签体传入结构 <A><B /></A>  \nReact 中：  \n使用 children props：通过组件标签传入结构  \n使用 render props：通过组件标签属性传入结构，一般用 render 函数属性\n##### children props\n```js\n<A>\n <B>xxx</B>\n</A>\n{this.props.children}\n// 问题：如果 B 组件需要 A 组件内的数据 ==> 做不到\n```\n##### render props\n`<A render={(data) => <C data={data} />}></A>`  \nA 组件：{this.props.render(内部 state 数据)}  \nB 组件：读取 A 组件传入的数据显示 {this.props.data}\n\n### 9. 组件通信方式总结\n#### 组件间的关系：\n父子组件、兄弟组件（非嵌套组件）、祖孙组件（跨级组件）\n#### 几种通信方式\n1. props  \n1.1 children props  \n1.2 render props  \n2. 消息订阅 - 发布  \npubs-sub, event 等等  \n3. 集中式管理：  \nredux, dva 等等  \n4. conText：  \n生产者 - 消费者  \n#### 比较好的搭配方式\n父子组件：props  \n兄弟组件：消息订阅 - 发布、集中式管理  \n祖孙组件（跨级组件）：消息订阅 - 发布、集中式装填管理、conText（开发用的少、封装插件用的多）\n\n\n\n### 变化 *\n The unmountComponentAtNode() method has been replaced with root.unmount() in React 18.\n```js\nindex.js\n// Before\nunmountComponentAtNode(container);\n\n// After\nroot.unmount();\n```', 9);
INSERT INTO `fe` (`title`, `content`, `id`) VALUES ('reset', 'html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas, details, embed,  figure, figcaption, footer, header, hgroup,  menu, nav, output, ruby, section, summary, time, mark, audio, video {    margin: 0;    padding: 0;    border: 0;    font-size: 100%;    font: inherit;    vertical-align: baseline; } /* HTML5 display-role reset for older browsers */ article, aside, details, figcaption, figure,  footer, header, hgroup, menu, nav, section {    display: block; } body {    line-height: 1; } ol, ul {    list-style: none; } blockquote, q {    quotes: none; } blockquote:before, blockquote:after, q:before, q:after {    content: \'\';    content: none; } table {    border-collapse: collapse;    border-spacing: 0; }', 10);
INSERT INTO `fe` (`title`, `content`, `id`) VALUES ('公钥私钥', '`openssl` 进入 OpenSSL 系统\n`genrsa -out private.key` 生成私钥\n`rsa -in private.key -pubout -out public.key`  生成公钥', 11);
INSERT INTO `fe` (`title`, `content`, `id`) VALUES ('自动化部署', '### 安装 java\n`dnf search java`\n`dnf install java`\n\n```\nsudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat/jenkins.repo\n```\n```\nsudo rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key\n```\n\n`systemctl start jenkins`\n`systemctl status jenkins`\n\n`cat 密码所在目录`', 12);
INSERT INTO `fe` (`title`, `content`, `id`) VALUES ('项目部署', '1. 进入 gitbash 终端\n2. `ssh root@服务器公网 ip 地址`\n\n> 命令\n\n`hostnamectl --static set-hostname 主机名` 设置主机名(需重启)\n`service sshd restart` 重启主机\n\n`dnf` dendified 安装工具 是 yum 的下一代\n`dnf --help` 检查 dnf 是否可用\n`dnf search node` 搜索软件包\n`dnf info nodej`  查看软件包信息\n`dnf install nodejs` 安装 nodej\n`npm install n -g` n 更新 node 版本工具\n`n install lts` `n install latest` 安装最新版本\n`n 版本号` 切换版本\n\n> 安装 MySQL\n\n`dnf search mysql-server` \n`dnf info mysql-server`\n`dnf install mysql-server -y` -y 依赖包也安装\n\n> 启动 MySQL\n\n`systemctl start mysqld`\n`systemctl status mysqld`\n`systemctl status mysqld` 随着系统一起启动\n`mysql_secure_installation` 给数据库设置密码\n`mysql -uroot -p` 进入数据库\n\n> 使用数据库，并允许 root 用户远程连接\n> `use mysql;`\n> `select host, user from user;` 查看 user 表中，连接权限 默认看到 root 是 localhost\n> `update user set host = \'%\' where user = \'root\';` 修改权限\n> `flush privileges` 配置生效\n> 给阿里云添加安全组 3306 端口\n\n使用 navicat 迁移数据\n\n> 迁移项目\n\n1. 使用 git \n\n\n2. 使用 vsCode 插件，remote SSH\n\n\n\n> node 进程管理\n> `npm install pm2 -g`\n> `pm2 start app.js --name my-api` 命名进程\n> `pm2 list` 显示所有进程状态\n> `pm2 stop 0` 停止指定的进程\n> `pm2 stop all` 停止所有进程\n> `pm2 restart all` 重启所有进程\n> `pm2 restart 0` 重启指定进程\n> `pm2 delete 0` 杀死指定的进程\n> `pm2 delete all` 杀死所有进程\n> `pm2 start app.js -i 4` 后台运行 pm2，启动4个 app.js，实现负载均衡', 13);
COMMIT;

-- ----------------------------
-- Table structure for thought
-- ----------------------------
DROP TABLE IF EXISTS `thought`;
CREATE TABLE `thought` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(20) DEFAULT NULL,
  `content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of thought
-- ----------------------------
BEGIN;
INSERT INTO `thought` (`id`, `title`, `content`) VALUES (1, 'LOVE', '진심으로 누군가를 사랑하고 있다는 증좌가 여기에 있다.\n\n그건 바로\n\n그 사람이 마땅치 않다는 듯한 \n\n새침한 눈길로 당신을 봐올 때\n\n당신은 그저 헛웃음에 멎쩍은 얼굴만 하고 있다면\n\n그건 곧 사랑일 것이다.\n\n이건 연인사이에만 국한되는 것이 아니다. \n\n부모자식 사이, 친구사이 등 모든 인간관계에 적용된다.');
INSERT INTO `thought` (`id`, `title`, `content`) VALUES (2, '공부', '너무 아득하다고 생각될때가 있다. 과연 내가 이걸 해낼수 있을까?\n\n\n\n이건 불가는한게 아닐까? \n\n\n\n아니다. 해낸 사람들이 있으니까 나의 능력이 부족한 탓인게 분명하다.\n\n\n\n하지만 시간의 힘을 믿기로 한다. \n\n\n\n피할수는 없는 노릇이니 말이다.\n\n\n\n엉덩이의 기적을 믿기로 한다.\n\n\n\n그건 의지로 어떻게 해볼수는 있으니 말이다.\n\n\n\n량변은 질변을 일으킨다. \n\n\n\n철학수업시간에 유일하게 귀에 들어와 마음에 남은 문장이다.');
INSERT INTO `thought` (`id`, `title`, `content`) VALUES (3, '그 별 그 달', '그 별이 그별이고 그 달이 그 달이네  \n너도 나와 같은 별을 보고 있을까?  \n너도 나와 같은 달을 보고 있을까?\n저 별을 보고 너는 나를 떠올릴까?  \n저 달을 보고 너도 그때의 우리를 그리워할까?\n얇아진 옷가지에 마음까지 추워지네  \n그리워만 하기엔 현실이 너무 춥네');
INSERT INTO `thought` (`id`, `title`, `content`) VALUES (4, '드라마 남주', '그런 그리움이 있다. 자꾸만 눈앞에 아른거려 가슴을 애리는 그런 사람이 있다. \n\n\n\n일상에 스며들어 모든 생각에 그림자처럼 비춰져있다. \n\n\n\n결코 가질수 없는 그런 사람이다. 가질수 없어서 가까이 할수조차 없어 더더욱 \n\n\n\n탐하게 되는 그럼 사람이다.\n\n\n\n그리워 하면 할수록 더 깊이 빠져 일상의 균형을 파괴할뿐이다. \n\n\n\n너무 잘 알고 있다. \n\n\n\n하지만 이런 그리움은 의지로 끊어내기란 쉽지가 않다.\n\n\n\n그저 시간이 해결해 주기를 바랄뿐이다.\n\n\n\n그저 자꾸 자신을 달콤함에서 냉혹한 현실로 꺼낼뿐이다.\n\n\n\n전에도 그랫듯이 차츰 마음이 식어지고 그림자가 옅어질것이라고 믿고 있다.\n\n\n\n지금은 그저 그 아른거림을 받아드릴수 밖에는 달리 도리가 없다.\n\n\n\n그저 일상을 유지할수 있도록 내 자신을 다독일 뿐이다.\n\n\n\n제목 — 드라마 남주');
INSERT INTO `thought` (`id`, `title`, `content`) VALUES (5, '바퀴벌레', '‘으약’\n\n나의 비명소리에 넌 후다닥 저만치 도망간다.\n\n하지만 소용없다. 넌 여전히 위협적이다. \n\n넌 고작 커튼 중간에서 끄트머리로 피신했을 뿐이니까.\n\n언제든 펄럭이는 커튼의 날개짓에 몸을 실어 나를 덮칠것만 같다.\n\n그 왜소한 몸짓에 압도 되는 내가 한심스럽기도 하지만\n\n지금 당장 마주한 공포에 나는 옴짝달싹할수가 없다.\n\n뻐근해오는 뒷목에 나는 새삼 느낀다.\n\n현실에 내가 살고 있음을…');
INSERT INTO `thought` (`id`, `title`, `content`) VALUES (6, '섭섭함을 받아들이다', '살다가 실수든 잘못이든 꼭 저지를 때가 있다.\n\n\n\n의도치 않게 생긴 일이라 나 자신도 당황스러워 또 다른 실수를 저지르게 된다.\n\n\n\n같은 일을 겪었던 타인은 동감하고 아닌 사람의 눈엔 참 한심스러워 보일수 있다.\n\n\n\n모두 다 아주 자연스러운 일이다. \n\n\n\n하지만 지금 느끼는 이 답답하고 섭섭한 감정은 타인에게서 오는 그런 감정들이 아니다. \n\n\n\n내 편이라고 생각한 아니 진짜 내편인 사람에게서 느끼는 감정이다.\n\n\n\n이해는 할수 있다. 내가 겪은 일이 자기 일마냥 짜증이 났을수도 있다.\n\n\n\n이게 내가 할수 있는 최고의 합리화이다. \n\n\n\n함께 사는 사람이라서 입은 피해가 짜증이 났을수도 있다. \n\n\n\n이건 많이 섭섭하다 .\n\n\n\n하지만 어쩌겠는가? 그냥 받아들여야 한다.\n\n\n\n그는 그런 사람인것을. 모두 다 내 맘에 들수는 없다.\n\n\n\n차갑게 군거에 대해 아차싶어 조금 미안해 할수도 있다는 생각에 조금이나마 스스로를 위\n\n\n\n안할 뿐이다.\n\n\n\n그의 탓함이 아무것도 아니게 되게 내가 스스로를 더 탓해야만 한다.\n\n\n\n나쁠것도 없다. \n\n\n\n그냥 섭섭할 뿐이다.\n\n\n\n이런 상황에 위로가 되는 사람이 없어 나 자신의 마음을 더 굳히게 되는 날이다.살다가 실수든 잘못이든 꼭 저지를 때가 있다.\n\n\n\n의도치 않게 생긴 일이라 나 자신도 당황스러워 또 다른 실수를 저지르게 된다.\n\n\n\n같은 일을 겪었던 타인은 동감하고 아닌 사람의 눈엔 참 한심스러워 보일수 있다.\n\n\n\n모두 다 아주 자연스러운 일이다. \n\n\n\n하지만 지금 느끼는 이 답답하고 섭섭한 감정은 타인에게서 오는 그런 감정들이 아니다. \n\n\n\n내 편이라고 생각한 아니 진짜 내편인 사람에게서 느끼는 감정이다.\n\n\n\n이해는 할수 있다. 내가 겪은 일이 자기 일마냥 짜증이 났을수도 있다.\n\n\n\n이게 내가 할수 있는 최고의 합리화이다. \n\n\n\n함께 사는 사람이라서 입은 피해가 짜증이 났을수도 있다. \n\n\n\n이건 많이 섭섭하다 .\n\n\n\n하지만 어쩌겠는가? 그냥 받아들여야 한다.\n\n\n\n그는 그런 사람인것을. 모두 다 내 맘에 들수는 없다.\n\n\n\n차갑게 군거에 대해 아차싶어 조금 미안해 할수도 있다는 생각에 조금이나마 스스로를 위\n\n\n\n안할 뿐이다.\n\n\n\n그의 탓함이 아무것도 아니게 되게 내가 스스로를 더 탓해야만 한다.\n\n\n\n나쁠것도 없다. \n\n\n\n그냥 섭섭할 뿐이다.\n\n\n\n이런 상황에 위로가 되는 사람이 없어 나 자신의 마음을 더 굳히게 되는 날이다.');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;