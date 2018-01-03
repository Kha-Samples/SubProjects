package;

import kha.Assets;
import kha.Framebuffer;
import kha.input.Keyboard;
import kha.input.KeyCode;
import kha.System;

using StringTools;

class Main {
	public static function main() {
		System.init({title: "Project", width: 1024, height: 768}, function () {
			Keyboard.get().notify(keyDown, null, null);
			System.notifyOnRender(render);
		});
	}

	static function keyDown(key: KeyCode): Void {
		if (key == One) {
			Assets.loadEverything(function () {
				trace('Loaded room 1.');
			}, function (asset) {
				var name: String = asset.name;
				return name.startsWith('room1');
			});
		}

		if (key == Two) {
			Assets.loadEverything(function () {
				trace('Loaded room 2.');
			}, function (asset) {
				var name: String = asset.name;
				return name.startsWith('room2');
			});
		}
	}

	static function render(framebuffer: Framebuffer): Void {
		var g = framebuffer.g2;
		g.begin();
		if (kha.Assets.images.room1_block_blue != null) {
			g.drawImage(kha.Assets.images.room1_block_blue, 50, 200);
		}
		if (kha.Assets.images.room2_block_green != null) {
			g.drawImage(kha.Assets.images.room2_block_green, 250, 200);
		}
		g.end();
	}
}
