Demo [Gitfolio](https://renoslendra.github.io/gitfolio)

# Gitfolio — Portfolio berbasis profil GitHub

Gitfolio adalah situs portfolio satu-halaman (single-file HTML) yang secara otomatis menampilkan data dari akun GitHub kamu: profil, statistik, daftar repositori publik, hingga CTA WhatsApp. Proyek ini memprioritaskan UI/UX modern bergaya glassmorphism dengan performa cepat tanpa framework — hanya HTML + CSS + JavaScript vanilla.

Pratinjau cepat:
- UI glassmorphism responsif, dengan mode gelap/terang serta Lite mode
- Sinkron profil GitHub: nama, bio, lokasi, follower, top languages, dsb.
- Daftar repositori publik dengan pencarian, filter, sort, dan tombol “Load more”
- Modal detail repo
- Statistik cepat: total stars, forks, jumlah repos
- Aksen warna yang dapat dipilih pengguna
- I18N dasar (ID/EN toggle)
- CTA WhatsApp + modal form untuk membuat pesan terstruktur
- Tanpa build step, cukup buka file HTML

Panduan developer lengkap tersedia di [documentation.html](./documentation.html).

---

## Isi

- [Struktur Proyek](#struktur-proyek)
- [Fitur Utama](#fitur-utama)
- [Teknologi](#teknologi)
- [Menjalankan Secara Lokal](#menjalankan-secara-lokal)
- [Konfigurasi Cepat](#konfigurasi-cepat)
- [Deployment (GitHub Pages)](#deployment-github-pages)
- [Batasan & Rate Limit API GitHub](#batasan--rate-limit-api-github)
- [Lisensi & Kredit](#lisensi--kredit)

---

## Struktur Proyek

```
/
├─ index.html          # Halaman utama portfolio (single-file)
├─ documentation.html  # Dokumentasi developer (UI/UX konsisten)
└─ README.md           # Berkas ini
```

---

## Fitur Utama

- Sinkronisasi otomatis dengan GitHub (tanpa server)
- Pencarian, filter, sort, dan “Load more” di daftar repositori
- Modal detail repo
- Statistik GitHub (total bintang, forks, repos)
- Pilihan aksen warna, mode gelap/terang, dan Lite mode
- I18N sederhana: toggle ID/EN
- CTA WhatsApp + Modal form (nama, subject, pesan, kontak)
- Skeleton loading, efek reveal, dan animasi halus
- Responsif mobile/desktop

---

## Teknologi

- HTML5, CSS3 (CSS custom properties), JavaScript (vanilla)
- Lucide Icons
- Google Fonts (Geist)
- GitHub REST API

---

## Menjalankan Secara Lokal

Tidak membutuhkan server — cukup buka file HTML di browser modern.

1. Clone repo:
   ```
   git clone https://github.com/Renoslendra/gitfolio.git
   cd gitfolio
   ```
2. Buka `index.html` (double-click) atau gunakan Live Server.
3. Buka `documentation.html` untuk panduan developer.

Catatan: Beberapa browser membatasi request pada origin file://. Jika data tidak muncul, jalankan server lokal:
- Python: `python3 -m http.server 8080` lalu buka http://localhost:8080
- Node (serve): `npx serve -p 8080`

---

## Konfigurasi Cepat

Ubah konstanta di awal skrip `index.html`:

```js
/* ===================== Config & Helpers ===================== */
const GITHUB_USER = "Renoslendra"; // ganti dengan username kamu
const API_USER  = `https://api.github.com/users/${GITHUB_USER}`;
const API_REPOS = `https://api.github.com/users/${GITHUB_USER}/repos?per_page=100&sort=updated`;
const API_GISTS = `https://api.github.com/users/${GITHUB_USER}/gists?per_page=10`;
const API_ORGS  = `https://api.github.com/users/${GITHUB_USER}/orgs`;
```

- Ganti `GITHUB_USER` untuk memakai akun GitHub lain.
- Ganti nomor WhatsApp pada link `https://wa.me/6285156064912` di `index.html` (cari dan ganti semua kemunculannya).
- Sesuaikan string I18N pada objek `I18N` jika perlu.

---

## Deployment (GitHub Pages)

1. Push ke branch `main`.
2. Settings → Pages → Source: `main` / root.
3. Buka URL GitHub Pages yang diberikan.

---

## Batasan & Rate Limit API GitHub

- Tanpa autentikasi: ±60 request/jam per IP.
- Hindari refresh berulang saat uji.

---

## Lisensi & Kredit

Hak cipta © Reno Syaelendra. Jika ingin membuat varian/templat publik, mohon cantumkan atribusi.

Kredit:
- Ikon oleh [Lucide](https://lucide.dev/)
- Font [Geist](https://vercel.com/font) via Google Fonts
- Data dari [GitHub REST API](https://docs.github.com/en/rest)
