// /** @type {Phaser.Physics.Arcade.StaticGroup} */
// // var music;
// var spacebar;

// input = "Xinchao"
var x = 150, y = 660
var checkButton;
var validText = " ";
var bee, bee2;
var s5_1, s5_2;
var check5_1;
var check5_2;
var list5 = ["Ong làm mật mà không được ăn", "Yến làm tổ mà không được ở"];
var index = 0;
var arrow;
	
class scene5 extends Phaser.Scene{
	constructor(){
		super('nextGames5');
	}

	preload(){
        this.load.image('bgs2','assets/bgs2.png');
		this.load.image('lefthand','assets/left_hand.png');
		this.load.image('righthand','assets/right_hand.png');
		this.load.image('bee3', 'assets/bee3.png');
		this.load.image('input1', 'assets/input1.png');
		this.load.image('s5_1', 'assets/s5_1.png');
		this.load.image('s5_2', 'assets/s5_2.png');
		this.load.image('check5_1', 'assets/check5_1.png');
		this.load.image('check5_2', 'assets/check5_2.png');
		this.load.image('arrow', 'assets/arrow.png');
		this.load.image('check', 'assets/check.png');
		this.load.image('right', 'assets/right.png');
		this.load.image('wrong', 'assets/wrong.png');
		this.load.image('title', 'assets/title.png');
	
	}

	create(){
		this.add.image(610, 380, 'bgs2'); //background
		this.add.image(600, 100, 'title');
		this.add.image(1140, 610, 'bee3').setScale(0.7); //bee is next to the button
		this.add.image(600, 660, "input1"); //nơi để nhập chữ
		this.add.image(470, 560, 'lefthand').setScale(0.6);
		this.add.image(730, 560, 'righthand').setScale(0.6);

		//dùng để thông báo đúng sai cho người dùng
		right = this.add.image(600, 460, 'right').setScale(0.6);
		wrong = this.add.image(600, 460, 'wrong').setScale(0.6);
		right.visible = false;
		wrong.visible = false;

		bee = this.add.image(770, 490, 'beefinger'); //bee trên ngón tay, ngoại trừ ngón cái bên phải
		bee2 = this.add.image(655, 555, 'beefinger'); //bee trên ngón cái bên phải
		bee2.visible = false;
		
		//hai câu tục ngữ
		s5_1 = this.add.sprite(600, 300, "s5_1").setInteractive();
		s5_2 = this.add.sprite(600, 350, "s5_2").setInteractive();
		
		//mũi tên qua màn
		arrow = this.add.sprite(595, 540, "arrow").setInteractive();
		arrow.visible = false;

		check5_1 = this.add.sprite(600,300, 'check5_1').setInteractive();
		check5_2 = this.add.sprite(600,350, 'check5_2').setInteractive();
		
		//ẩn đáp án
		check5_1.visible = false;
		check5_2.visible = false;
		
		///xử lý chữ nhập vào và con ong trên ngón tay
		//begin
		this.typedMessage = "";
		this.typedGameObject = this.add.text(200, 635,  "Hello world", {
			fontSize:48, color:'#c51b7d'
		}).setOrigin(0).setDepth(20);

		//khai báo vị trí con ong trên ngón tay bên trái
		const leftHand = [
			["rfvtgb", {x : 500, y : 490}], 
			["edc", {x : 468, y : 480}],
			["wsx", {x : 425, y : 495}],
			["qaz", {x : 395, y : 535}],
			[" ", {x: 550, y: 555}],
		]

		//khai báo vị trí con ong trên ngón tay bên phải
		const rightHand = [
			["yhnujm", {x : 700, y : 490}],
			["ik", {x : 747, y : 478}],
			["ol", {x : 770, y : 490}],
			["p", {x : 800, y : 490}],
		]

		const beePositions = new Map();

		//chuyển đổi vị trí con ong khi nhấn bàn phím của ngón tay bên trái
		for (let finger of leftHand) {
			finger[0].split("").forEach(k => {
				beePositions.set(k, finger[1])
			})
		}

		//chuyển đổi vị trí con ong khi nhấn bàn phím của ngón tay bên phải
		for (let finger of rightHand) {
			finger[0].split("").forEach(k => {
				beePositions.set(k, finger[1])
			})
		}

		const keypressHandler = (e) => {
			this.typedMessage += e.key;

			//ẩn hiện con ong trên ngón tay phải khi nhấn phím space
			if(e.key == " ") bee2.visible = true;
			else bee2.visible = false;
			
			//vị trí con ong trên ngón tay
			const position = beePositions.get(e.key);
			if (position) {
				bee.setPosition(position.x, position.y)
			}
		}

		//loại bỏ ký tự khi nhấn phím backspace
		const keydownHandler = (e) => {
			if (e.key === "Backspace") {
				this.typedMessage = this.typedMessage.substr(0, this.typedMessage.length - 1)
			}
		}


		window.addEventListener("keypress", keypressHandler);

		window.addEventListener("keydown", keydownHandler);
		
		this.events.once("shutdown", () => {
			window.removeEventListener("keypress", keypressHandler);
			window.removeEventListener("keydown", keydownHandler);
		})
		//end

		checkButton = this.add.image(1055, 660, "check").setInteractive();

		//mũi tên qua màn
		arrow.on('pointerdown', function(){
			this.scene.start('gameOver');
		}, this);
		
		index = 0; //để list bắt đầu với 0.
		
	}
	update() {	
		this.typedGameObject.setText(this.typedMessage)
		
		validText = list5[index]
	
		//kiểm tra câu nhập vào giống với câu tục ngữ hay không
		if(this.typedMessage != ''){

			//ẩn khi gõ bàn phím
			right.visible = false;
			wrong.visible = false;

			checkButton.on("pointerdown", () => {
				if (this.typedMessage === validText) {
					this.typedMessage = '';
					
					//hiện đáp án đúng
					if(index == 0)
						check5_1.visible = true;
					else{
						check5_2.visible = true;
						arrow.visible = true;
					}

					right.visible = true; //khi gõ đúng sẽ hiển thị
					
					index += 1;
				}
				else if (this.typedMessage !== validText && this.typedMessage != ''){
					wrong.visible = true; //khi gõ sai sẽ hiển thị
					this.typedMessage = '';
				}
				
			})
		}
	}
}

  
 