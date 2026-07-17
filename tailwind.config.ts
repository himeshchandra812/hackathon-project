import type { Config } from 'tailwindcss'

const config: Config = {
  content: [
    './index.html',
    './src/**/*.{js,ts,jsx,tsx}',
  ],
  theme: {
    extend: {
      fontFamily: {
        gaegu: ['Gaegu', 'cursive'],
        mono: ['Space Mono', 'monospace'],
      },
      colors: {
        accent: '#5e43ff',
        ink: '#1a1a1a',
      },
    },
  },
  plugins: [],
}

export default config
