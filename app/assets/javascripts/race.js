(function() {

  var self = Wookie.Race = {};
  var game, keyboard, logo;

  self.onDocumentReady = function() {
    game = new Phaser.Game(800, 600, Phaser.AUTO, 'game', { preload: preload, create: create, update: update });
    keyboard = new Phaser.Keyboard(game);
//     keyboard.addKeyCapture([13,32,37,38,39,40]); // capture space, enter, and arrow keys
  };

  function preload() {
    var logo = $('.race').data('logo');
    game.load.image("logo", logo);
  }

  function create() {
    logo = game.add.sprite(game.world.centerX, game.world.centerY, 'logo');
    logo.anchor.setTo(0.5, 0.5);

    game.physics.enable(logo, Phaser.Physics.ARCADE);
    logo.body.collideWorldBounds=true;
    logo.body.bounce.setTo(0.9, 0.9);
    logo.body.velocity.x=150;
  }

  function update() {
    if (game.physics.arcade.distanceToPointer(logo, game.input.activePointer) > 8) {
      game.physics.arcade.moveToPointer(logo, 300);
    } else {
      logo.body.velocity.set(0);
    }
  }

}());
