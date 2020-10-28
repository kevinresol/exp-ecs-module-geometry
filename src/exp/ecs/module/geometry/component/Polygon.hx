package exp.ecs.module.geometry.component;

import hxmath.math.*;

class Polygon implements Component {
	public var vertices:Array<Vector2>;

	public function clone() {
		return new Polygon([for (vertex in vertices) vertex.clone()]);
	}
}
