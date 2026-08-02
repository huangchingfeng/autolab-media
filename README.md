# autolab-media — 公開圖床

阿峰老師內容產線的圖片託管。用途：把本機生成的圖變成**公開網址**，好讓 Substack、方格子等平台可以直接引用。

## 為什麼需要這個

Substack 與方格子插圖只吃「上傳檔案」或「公開網址」。自動化流程拿不到檔案上傳權限，
所以改走公開網址——圖片 push 上來後用 raw 網址嵌進 HTML 即可。

## 網址格式

```
https://raw.githubusercontent.com/huangchingfeng/autolab-media/main/<路徑>
```

## 目錄規則

```
newsletter/YYYY-MM/MMDD-slug/cover.jpg
newsletter/YYYY-MM/MMDD-slug/inline-1.png
```

## 上傳

```bash
./push.sh            # 加入所有新圖並推送
```

## ⚠️ 注意

- **這是公開 repo**。只放可公開的內容圖，不要放客戶素材、學員照片、任何含個資的東西。
- 圖片一旦推上來就在公開網址上，即使之後刪除也可能被快取。
