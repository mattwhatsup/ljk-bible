# 梁家铿版新约圣经

* ./current 当前源文件文件夹
  * ./books epub内容
  * ./commons/Fonts 公用字体文件
  * ./commons/Styles 公用css
* ./working 工作源文件文件夹，内部结构与current一样

working路径是current的副本，每次修改current之前，先将current内容复制到working

```
npm run work
```

然后在working中修改，打包电子书

```
npm run pack
```

打包完成后会将working的内容覆盖回current，保持current为最后状态

```
npm run finish

# 目的是完成最后的打包和文件命名
```

通常的工作方式

```
npm run work

# ... 做好若干修改后

npm run finish
```

## 文件命名说明

* n 代表无注释
* c 代表有注释