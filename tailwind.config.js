/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./src/**/*.{js,jsx,ts,tsx}",
  ],
  variants: {
    textColor: ['responsive', 'hover', 'focus', 'group-hover'],
  },
  purge: [
    './public/**/*.html',
    './src/**/*.{js,jsx,ts,tsx,vue}',
  ],
  mode: "jit",
  content: [],
  theme: {
    extend: {
      colors: {
        primary: "#202225",
        secondary: "#E54F5D",
        light: "#36393F",
        med: "#202225",
        black: "#00000088",
        seclight: "#5E6978",
      }
    },
  },
  plugins: [],
}
