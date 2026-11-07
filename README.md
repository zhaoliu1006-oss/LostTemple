# LostTemple

War3Cpp 1.0.1（Windows x64）离线安装包发布仓库。

> 安装包 258 MB，超过 GitHub 单文件 100 MB 上限，因此按字节等分为 3 个 zip 分卷存放于 `dist/`。

## 下载

| 文件 | 大小 | 说明 |
|---|---|---|
| [`dist/War3Cpp-1.0.1-Windows-x64-Setup.part1.zip`](dist/War3Cpp-1.0.1-Windows-x64-Setup.part1.zip) | 86.0 MB | 第 1 段 |
| [`dist/War3Cpp-1.0.1-Windows-x64-Setup.part2.zip`](dist/War3Cpp-1.0.1-Windows-x64-Setup.part2.zip) | 86.0 MB | 第 2 段 |
| [`dist/War3Cpp-1.0.1-Windows-x64-Setup.part3.zip`](dist/War3Cpp-1.0.1-Windows-x64-Setup.part3.zip) | 86.0 MB | 第 3 段 |
| [`dist/merge_and_verify.bat`](dist/merge_and_verify.bat) | 1 KB | 一键合并 + 校验 |

## 安装步骤

1. 下载全部 3 个分卷和 `merge_and_verify.bat`
2. 把 3 个 zip **解压到同一个文件夹**，会得到
   `War3Cpp-1.0.1-Windows-x64-Setup.exe.001 / .002 / .003`
3. 把 `merge_and_verify.bat` 放进该文件夹，双击运行
4. 脚本自动合并出 `War3Cpp-1.0.1-Windows-x64-Setup.exe` 并校验 SHA-256，输出 `OK - verified` 后即可运行安装

手动合并等价于：

```bat
copy /b War3Cpp-1.0.1-Windows-x64-Setup.exe.001+War3Cpp-1.0.1-Windows-x64-Setup.exe.002+War3Cpp-1.0.1-Windows-x64-Setup.exe.003 War3Cpp-1.0.1-Windows-x64-Setup.exe
```

## 校验值

合并后的完整文件（270,518,381 字节）：

```
SHA-256 5ffe2be0cca5faaf1444c29daaa8635626cf3f07932a7f5fabe2f07bb09b3b85
```

单个分卷：

| 分卷 | SHA-256 |
|---|---|
| part1.zip | `b6c0bede05029dd9f413417cd92cbfa18c95a416f9d6c89763f0d35f1d9000cb` |
| part2.zip | `fff9c41c2ec3460e7521ecb4503d098fcff1e6ae0735a1e8880fc6b383078082` |
| part3.zip | `68c3d1298f7f90286a6b6ecb2ce226eb3ded372b34ec4fb863b6bea40aab3dc4` |

三个分卷缺一不可，任意一个损坏都无法还原出完整安装包。
