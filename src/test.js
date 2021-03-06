import string from "./css"

const player = {
    x: undefined,
    n: 1,
    time: 10,
    ui: {
        demo: document.querySelector("#demo"),
        demo2: document.querySelector("#demo2")
    },
    Events: {
        "#btnPlay": "play",
        "#btnStop": "pause",
        "#btnSlow": "slow",
        "#btnNormal": "normal",
        "#btnFast": "fast"
    },
    init: () => {
        player.ui.demo.innerText = string.substr(0, player.n)
        player.ui.demo2.innerHTML = string.substr(0, player.n)
        player.bindEvents()
        player.play()
    },
    bindEvents: () => {
        for (let key in player.Events) {
            if (player.Events.hasOwnProperty(key)) {
                const value = player.Events[key]
                document.querySelector(key).onclick = player[value]
            }
        }
    },
    code: () => {
        if (player.n === string.length) { return }
        player.n++
        player.ui.demo.innerText = string.substr(0, player.n)
        player.ui.demo2.innerHTML = string.substr(0, player.n)
        player.ui.demo.scrollTop = player.ui.demo.scrollHeight
    },
    play: () => {
        player.setTime = setInterval(player.code, player.time)
    },
    pause: () => {
        window.clearInterval(player.setTime)
    },
    slow: () => {
        player.pause()
        player.time = 30
        player.play()
    },
    normal: () => {
        player.pause()
        player.time = 10
        player.play()
    },
    fast: () => {
        player.pause()
        player.time = 0
        player.play()
    }
}

player.init()

