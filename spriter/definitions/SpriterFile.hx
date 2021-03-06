package spriter.definitions;
import haxe.xml.Fast;

/**
 * ...
 * @author Loudo
 */
class SpriterFile
{
	public var id:Int;
	public var name:String; 
    public var pivotX:Float;
    public var pivotY:Float;
	public var width:Float;
	public var height:Float;
	
	public function new(fast:Fast = null) 
	{
		if(fast != null){
			id = Std.parseInt(fast.att.id);
			name = fast.att.name;
			pivotX = fast.has.pivot_x ? Std.parseFloat(fast.att.pivot_x) : 0;
			pivotY = fast.has.pivot_y ? Std.parseFloat(fast.att.pivot_y) : 1;
			
			width = fast.has.width ? Std.parseFloat(fast.att.width) : 0;
			height = fast.has.height ? Std.parseFloat(fast.att.height) : 0;
		}
	}
	
	public function copy():SpriterFile
	{
		var copy:SpriterFile = new SpriterFile();
		copy.name = name;
		copy.id = id;
		copy.pivotX = pivotX;
		copy.pivotY = pivotY;
		copy.width = width;
		copy.height = height;
		return copy;
	}
	
}