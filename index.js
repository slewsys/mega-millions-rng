#!/usr/bin/env node
import random64 from './lib/random64.js'

const drawing = {}

;[...Array(5)].forEach(_ => {
  let n = Number(random64(1, 70))

  while (drawing[n]) {
    n = Number(random64(1, 70))
  }

  drawing[n] = 1
})

const numerically = (x, y) => x - y

const megaMillions = Object.keys(drawing).sort(numerically)

megaMillions.push(String(Number(random64(1, 25))))

console.log(JSON.stringify(megaMillions))
