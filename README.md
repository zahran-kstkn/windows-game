# 🎮 RULES OF THE GAME: GODOT + GIT WORKFLOW

Halo team! Biar project game kita rapi, ga hancur karena conflict, dan ga ada asset yang hilang, tolong patuhi rules ini ya:

### 1. ⚠️ JANGAN PERNAH EDIT MAIN DIRECTLY

* **Main branch** harus selalu bersih dan bisa di-run/di-play tanpa error.
* Setiap mau ngerjain fitur baru (misal: bikin musuh, bikin UI, bikin map), **wajib bikin branch baru**.
* *Contoh nama branch:* `feature/player-movement`, `feature/main-menu`, `art/enemy-sprites`.



### 2. 🧩 SATU ORANG, SATU SCENE (Golden Rule)

* Sistem Godot itu berbasis komponen/scene (`.tscn`). Tolong pisah-pisah scene-nya sekecil mungkin.
* **Jangan edit file `.tscn` yang lagi dikerjain orang lain.** Kalau terpaksa harus collab di scene yang sama, janjian dulu di chat biar ga tabrakan (merge conflict).
* Bikin `Player.tscn` sendiri, `Enemy.tscn` sendiri, nanti tinggal di-instance (dimasukin) ke scene level utama.

### 3. 🔄 PULL SEBELUM MULAI KERJA (Daily Routine)

* Setiap hari sebelum buka Godot, buka GitHub Desktop / Terminal dulu.
* Pindah ke branch `main`, lalu klik **Pull** biar dapet update-an terbaru dari temen-temen.
* Setelah itu baru balik ke branch kamu, dan merge `main` ke branch kamu biar tetep up-to-date.

### 4. 📂 STRUKTUR FOLDER ADALAH HARGA MATI

* Jangan asal taruh file di root folder (`res://`). Kita pakai struktur ini:
* `assets/` ➡️ (Buat simpan gambar, audio, 3D model, dll)
* `scenes/` ➡️ (Buat simpan file `.tscn` Godot)
* `scripts/` ➡️ (Buat simpan file codingan `.gd`)


* **WARNING:** Jangan pernah rename atau mindahin folder/file lewat File Explorer bawaan Windows/Mac! Kalau mau rename/pindah folder, **harus lewat dalam software Godot** biar Unique ID (`.uid`) nya ga rusak.

### 5. 🚀 COMMIT YANG JELAS & PULL REQUEST (PR)

* Kalau fitur udah kelar dan ga error, langsung **Commit** dengan pesan yang jelas (Contoh: `Fix: benerin bug lompat player`, bukan `asdasd` atau `update`).
* **Push** branch kamu ke GitHub.
* Bikin **Pull Request (PR)** di web GitHub, biar yang lain bisa cek dulu sebelum di-merge ke `main`.

---

> 💡 **Tip Tambahan:** Di Godot, buka **Editor > Editor Settings > Text Editor > Behavior > Files**, terus aktifin **Save When Window Loses Focus**. Biar pas kita Alt+Tab ke GitHub Desktop, game-nya otomatis ke-save!

**Semangat bikin game-nya! Kalau ada conflict atau bingung, langsung colek di grup, jangan di-force push sendiri ya!** 😊
