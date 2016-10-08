# PracticeCollapsibelContrance
view 的显示隐藏
参考github地址   https://github.com/forkingdog

配置忽略文件。
1 创建忽略文件。  在终端用， touch .gitignore 创建忽略文件。
2 配置要忽略的文件。 
  a #表示注释。显示注释信息。
  b *.a  忽略掉以 .a 结尾的所有文件。
  c !lib.a  以感叹号开头表示排除掉lib.a结尾的文件
  d /TODO 仅仅忽略掉项目根目录下的TODO文件。 不包括subdir/TODO
  e build/ 忽略掉build目录下的所有文件
  参考blog地址 http://blog.csdn.net/xmyzlz/article/details/8592302
