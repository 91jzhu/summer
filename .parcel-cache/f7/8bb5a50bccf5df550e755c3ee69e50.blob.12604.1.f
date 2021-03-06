const string = `
<style>
*{box-sizing: border-box;margin:0;padding:0;}
*::before,*::after{box-sizing: border-box;}
@media(max-width:500px){
    .sun{
        margin-top:16%;
    }
    .body{
        margin-top:20%;
    }
}
@media((min-width:700px)&&(max-width:1000px)){
    .body{
        margin-top:10%;
    }
}
.skin{
    background-color: aqua;
    min-height: 100vh;
    position: relative;
    z-index: -1;
}
.sun{
    width: 100px;
    height: 100px;
    border-radius: 50%;
    position: absolute;
    right:20%;
    top: -5%;
    background-color: rgb(255, 206, 60);
    display: flex;
    justify-content: center;
    align-items: center;
    color: white;
    text-shadow: 0 0 7px #d59f00;   
    box-shadow: rgb(255, 193, 9) 0px 0px 41.5px, rgb(255, 110, 26) 0px 0px 83px;
    animation: around 2s infinite;
}
@keyframes around{
    0%{}
    50%{transform: scale(1.3);}
    100%{}
}
.circle{
    border:2px solid white;
    width: 10px;
    height: 10px;
    position: absolute;
    left:78%;
    top:40%;
    border-radius: 50%;
}
.sun::before{
    content: "105";
    font-size: 28px;
    display: block;
    width: 90px;
    height: 90px;
    border:10px solid rgb(255, 193, 9);
    border-radius: 50%;
    background-color: rgb(255, 193, 9);
    display: flex;
    justify-content: center;
    align-items: center;
}
.body{
    height:140px;
    width: 80px;
    background-color: rgb(255, 165, 0);
    left:40%;
    top: 10%;
    margin-left:-70px;
    border-radius: 35px;
    position: relative;
    position: absolute;
}
.ear{
    height:50px;
    width:25px;
    margin-top: -12px;
    background-color: rgb(255, 165, 0);
    position: relative;
}
.ear::before{
    content: "";
    display: block;
    width:15px;
    height: 30px;
    position: absolute;
    left:50%;
    top:8px;
    margin-left:-7.5px;
    border-radius: 180px/300px;
    background-color: rgb(238, 96, 0);
    box-shadow: inset -5px -5px #e24b00;
}
.ear.left{
    position: absolute;
    border-radius: 180px/300px;
    margin-left: 3px;
    z-index:-1;
    animation: swingL 500ms infinite;

}
.ear.right{
    position: absolute;
    right:0;
    border-radius: 180px/300px;
    margin-right: 3px;
    z-index:-1;
    animation: swingR 500ms infinite;
}
@keyframes swingL{
    0%{}
    50%{transform: rotate(-15deg);    
        transform-origin: 50% 100%;}
    100%{}
}
@keyframes swingR{
    0%{}
    50%{transform: rotate(15deg);
        transform-origin: 50% 100%;}
    100%{}
}
.eyebrow{
    width: 11px;
    height: 7px;
    background-color: white;
    border-radius: 20px;
}
.eyebrow.left{
    position: absolute;
    left:16px;
    top:8px;
}
.eyebrow.right{
    position: absolute;
    right:16px;
    top:8px;
}
.eye{
    border:2.5px solid black;
    width:12px;
    height: 10px;
    border-radius: 50%;
}
.eye::before{
    content: "";
    display: block;
    width:14px;
    height:6px;
    position: relative;
    left:-3px;
    top:3px;
    background-color: rgb(255, 165, 0);
}
.eye.left{
    position: absolute;
    left: 20px;
    top:18px;
}
.eye.right{
    position: absolute;
    right: 20px;
    top:18px;
}
.nose{
    width: 12px;
    height: 7px;
    position: absolute;
    left:50%;
    top:24px;
    margin-left: -6px;
    border-radius: 0 0 50px 50px;
    background-color: rgb(81, 46, 39);
}
.nose::before{
    content: "";
    display: block;
    width: 12px;
    height: 5px;
    position: absolute;
    top:8px;
    background-color: rgb(255, 165, 0);
    z-index: 2;
}
.mouth{
    border:1.5px solid black;
    width: 12px;
    height: 7px;
    border-radius: 0 0 50px 50px;
}
.mouth::before{
    content:"";
    display: block;
    border:1px solid black;
    width: 20px;
    height: 3px;
    position:absolute;
    top:-3px;
    left:50%;
    margin-left: -10px;
    background-color: rgb(255, 165, 0);
    border-color: transparent;
}
.mouth.left{
    position: absolute;
    left:50%;
    margin-left: -12px;
    top:36px;
    z-index: 2;
    background-color: rgb(255, 165, 0);
}
.mouth.right{
    position: absolute;
    right:50%;
    margin-right: -12px;
    top:36px;
    z-index: 2;
    background-color: rgb(255, 165, 0);
}
.tongue{
    border:.8px solid black;
    width: 12px;
    height: 24px;
    border-radius: 50% /50%;
    position: absolute;
    left:50%;
    top:32px;
    margin-left: -6px;
    background-color: rgb(255, 121, 119);
    animation: active 400ms infinite;
}
@keyframes active{
    0%{}
    50%{transform: translateY(3px);}
    100%{}
}
.oral{
    width: 10px;
    height: 5px;
    position: absolute;
    left:50%;
    margin-left: -5px;
    top:38px;
    background-color: rgb(81, 46, 39);
    z-index: 1;
}
/* .line{
    width: 12px;
    border-top:0.5px solid black;
    position: absolute;
    left:50%;
    top:41px;
    margin-left: -6px;
    z-index: 10;
} */
.belt{
    width: 100%;
    height:7px;
    position: absolute;
    top:60px;
    background-color: rgb(0, 188, 184);
    box-shadow: inset 0px -4px #00a2a0;
}
.tape1{
    position: absolute;
    width: 14px;
    height: 8px;
    left:98%;
    top:53px;
    border-radius: 50px 20px 50px 20px;
    transform:rotate(-30deg);
    transform-origin: center bottom;
    background-color: rgb(0, 188, 184);
    box-shadow: inset 0px -4px #00a2a0;
}
.tape2{
    position: absolute;
    width: 14px;
    height: 8px;
    left:95%;
    top:60px;
    border-radius: 50px 20px 50px 20px;
    transform:rotate(30deg);
    transform-origin: center bottom;
    background-color: rgb(0, 188, 184);
    box-shadow: inset 0px -4px #00a2a0;
}
.pocket{
    width: 50px;
    height: 50px;
    position: absolute;
    left:50%;
    margin-left: -25px;
    top:72px;
    border-radius: 0 0 60px 60px;
    background-color: white;
    box-shadow: 3px 3px 3px 2px rgba(0, 0, 0, 0.2);
}
.foot{
    width: 26px;
    height: 14px;
    position: absolute;
    bottom:0;
    border-radius: 60px 60px 0 0;
    box-shadow: inset 0px -5px #dedede;
}
.one{
    left:-6px;
    background-color: white;
    z-index: -1;
}
.four{
    right:-6px;
    background-color: white;
    z-index: -1;
}
.two{
    left:55%;
    background-color: white;
}
.three{
    right:55%;
    background-color: white;
}
.tail{
    width: 8px;
    height: 72px;
    position: absolute;
    left:50%;
    margin-left: -4px;
    bottom:6px;
    animation: wave 0.5s infinite linear;
    transform-origin: bottom ;
    border-radius: 50px 50px 0 0;
    background-color: rgb(255, 165, 0);
    z-index: -1;
}
@keyframes wave{
    0%{transform: rotate(-45deg);}
    33%{transform: rotate(-50deg);}
    66%{transform: rotate(-60deg);}
    100%{transform: rotate(-45deg);}
}
</style>
`
let n = 1
demo.innerText = string.substr(0, n)
demo2.innerHTML = string.substr(0, n)
setInterval(() => {
    if (n === string.length) { return }
    n += 1
    demo.innerText = string.substr(0, n)
    demo2.innerHTML = string.substr(0, n)
    demo.scrollTop = demo.scrollHeight
}, 0)

