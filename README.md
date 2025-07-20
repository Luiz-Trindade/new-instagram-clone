# 📷 New Instagram Clone

![Vue 3](https://img.shields.io/badge/Vue%203-%2341B883.svg?logo=vue.js\&logoColor=white) ![Vuetify 3](https://img.shields.io/badge/Vuetify%203-%2300C8FF.svg?logo=vuetify\&logoColor=white) ![Ionic Capacitor](https://img.shields.io/badge/Ionic%20Capacitor-%230057A4.svg?logo=ionic\&logoColor=white)

> A training front-end application that replicates core Instagram features using Vue 3, Vuetify 3, and Ionic Capacitor.

---

## 📸 Screenshots

|         **Home Screen**        |          **Search Screen**         |          **Account Screen**          |
| :----------------------------: | :--------------------------------: | :----------------------------------: |
| ![Home](/screenshots/home.png) | ![Search](/screenshots/search.png) | ![Account](/screenshots/account.png) |

---

## ✨ Key Features

* **Modern UI** with **Vue 3** & **Vuetify 3**
* **State Management** using **Pinia**
* **Routing** powered by **Vue Router**
* **Fast Tooling** with **Vite** & **Auto Imports**
* **Cross-Platform Development** via **Ionic Capacitor**

---

## 💿 Installation

Install dependencies with your preferred package manager:

```bash
# Yarn
yarn install

# npm
npm install

# pnpm
pnpm install

# Bun
bun install
```

---

## 🏃‍♂️ Development

### 🔧 Start Development Server

```bash
yarn dev # or npm run dev, pnpm dev, bun dev
```

Access the app at [http://localhost:3000](http://localhost:3000)

### 📦 Production Build

```bash
yarn build # or npm run build, pnpm build, bun build
```

---

## 📂 Project Structure

```text
src/
├── assets/        # Images and global styles
├── components/    # Reusable Vue components
├── layouts/       # Application layouts
├── pages/         # Route components
├── plugins/       # Vue plugins and configurations (Pinia, Router)
└── main.js        # App bootstrap (Vue + Vuetify + Ionic)
```

---

## 🎨 Theming & Styling

* **Vuetify Theme** configured in `src/plugins/vuetify.js`
* **Global styles** in \`src/assets/styles/

---

## 🔌 Scripts

| Command       | Description               |
| ------------- | ------------------------- |
| `yarn dev`    | Start development server  |
| `yarn build`  | Build for production      |
| `yarn serve`  | Preview production build  |
| `yarn lint`   | Run ESLint                |
| `yarn format` | Format code with Prettier |

---

## ⚙️ Environment Variables

Create a `.env` file at project root with:

```env
VITE_API_URL=http://localhost:8000/api
```

---

## 🛡️ License

MIT © Luiz Gabriel Mahalhães Trindade
