<p align="center">
  <img src="./wp+docker+sqlite_banner.png" alt="WordPress SQLite Banner" height="80%">
</p>

<h1 align="center">Docker Image for WordPress with SQLite</h1>

<p align="center">
  Run a full WordPress instance inside a Docker container using SQLite.<br>
  No external database containers (MySQL/MariaDB) required.
</p>

---

## 🚀 Versions
* **Alpine:** Latest
* **PHP:** 8.4
* **WordPress:** Latest (via API)
* **SQLite Plugin:** Latest (via API)

## 🛠 How it Works
This image is designed to be "plug and play." It handles two scenarios automatically:

### 1. Fresh Install (Recommended)
If you do not have a WordPress site yet:
1.  Run the container.
2.  The script will detect an empty directory.
3.  It will automatically download the latest WordPress core and the SQLite integration plugin.
4.  It will configure the database for you.

### 2. Existing Site
If you already have a WordPress site with the SQLite plugin installed:
1.  Mount your existing site folder to `/var/www/wordpress` (if you are using docker compose, use `./wordpress`)
2.  The container will detect the existing files and serve them immediately.
3.  You will need to setup the SQLite plugin see `/scripts/patch_wordpress_for_sqlite.sh`

## 💻 Usage
TBC (to be coded - lol)