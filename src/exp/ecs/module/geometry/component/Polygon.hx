package exp.ecs.module.geometry.component;

import hxmath.math.*;
import why.unit.angle.*;

class Polygon implements Component {
	public var vertices:Array<Vector2>;

	public function clone() {
		return new Polygon([for (vertex in vertices) vertex.clone()]);
	}

	public static function regular(sides:Int, radius:Float, ?startingRadian:Radian):Array<Vector2> {
		final vertices:Array<Vector2> = [];
		final step = new Radian(Math.PI * 2 / sides);
		var radian = startingRadian == null ? new Radian(0) : startingRadian;
		for (_ in 0...sides) {
			vertices.push({x: radian.cos() * radius, y: radian.sin() * radius});
			radian += step;
		}
		return vertices;
	}
}
