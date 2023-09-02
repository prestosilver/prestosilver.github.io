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
    //extend: {
    //  colors: {
    //      fg: "#D8DEE9",
    //      bg: "#2E3440",

    //      act1: "#3B4252",
    //      act2: "#f9f5d7",
    //      act3: "#4C566A",
    //      
    //      ina1: "#434C5E",
    //      ina2: "#D8DEE9",
    //      ina3: "#4C566A",
    //      
    //      wall: "#434C5E"
    //  }
    //},
    //extend: {
    //  colors: {
    //      fg: "#252323",
    //      bg: "#FFBB8B",

    //      act1: "#FF8C57",
    //      act2: "#ffffff",
    //      act3: "#F77438",
    //      
    //      ina1: "#BD9B61",
    //      ina2: "#9F7A39",
    //      ina3: "#9F7A39",
    //      
    //      wall: "#BD9B61"
    //  }
    //},
    extend: {
      colors: {
          fg: "var(--color-fg)",
          bg: "var(--color-bg)",

          act1: "var(--color-act1)",
          act2: "var(--color-act2)",
          act3: "var(--color-act3)",

          ina1: "var(--color-ina1)",
          ina2: "var(--color-ina2)",
          ina3: "var(--color-ina3)",
          
          wall: "var(--color-wall)"
      }
    },
  },
  plugins: [],
}
