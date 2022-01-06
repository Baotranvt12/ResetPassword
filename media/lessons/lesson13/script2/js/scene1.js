var blazewarriorsstatusgame = false;
var music;

class scene1 extends Phaser.Scene{
	constructor(){
		super('introGame');
	}
	preload(){
		this.load.image('bg', 'assets/background.png');
		this.load.image('title', 'assets/bg-title.png');
		this.load.image('start','assets/start.png');
	//	this.load.audio('tune', 'assets/tune.mp3');
	}
	create(){
		// music = this.sound.add('tune');
		// music.setLoop(true);
		// music.play();

		var width = game.config.width
		var height = game.config.height

		this.add.image(600, 350, 'bg');
        this.add.image(435, 250, 'title');
		// console.log(width, height)

        var timedEvent = this.time.addEvent({ delay: 1000, callback: loops, callbackScope: this, loop: true });
		
        var start = this.add.sprite(750, 540, 'start').setScale(0.8).setInteractive();
        function loops()
		{
			zoomOut(start, 0.8, 1.1, 0.01, 10, this);
		}
        
        start.on('pointerdown', function(){
			this.scene.start('getAcquaintedJ');
		}, this);
	}
	update(){
		
		
	}
}