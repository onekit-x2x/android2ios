import Foundation;

open class java_lang_String : java_io_Serializable , java_lang_Comparable & java_lang_CharSequence{
    public typealias T = java_lang_String
    
    
    public var this:String?;
    public init(_ this:String){
        self.this = this;
    }
    public init()throws{
        throw NSError();
    }
    public init(_ original:java_lang_String)throws{
        throw NSError();
    }
    public init(_ value:Character)throws{
        throw NSError();
    }
    public init(_ value:Character,_ offset:Int,_ count:Int)throws{
        throw NSError();
    }
    public init(_ codePoints:[Int],_ offset:Int,_ count:Int)throws{
        throw NSError();
    }
    public init(_ ascii:Int8,_ hibyte:Int,_ offset:Int,_ count:Int)throws{
        throw NSError();
    }
    public init(_ ascii:Int8,_ hibyte:Int)throws{
        throw NSError();
    }
    public init(_ bytes:Int8,_ offset:Int,_ length:Int,_ charsetName:java_lang_String)throws{
        throw NSError();
    }
    public init(_ bytes:Int8,_ offset:Int,_ length:Int,_ charset:java_nio_charset_Charset)throws{
        throw NSError();
    }
    public init(_ bytes:Int8,_ charsetName:java_lang_String)throws{
        throw NSError();
    }
    public init(_ bytes:Int8,_ charset:java_nio_charset_Charset)throws{
        throw NSError();
    }
    public init(_ bytes:Int8,_ offset:Int,_ length:Int)throws{
        throw NSError();
    }
    public init(_ bytes:Int8)throws{
        throw NSError();
    }
    public init(_ buffer:java_lang_StringBuffer)throws{
        throw NSError();
    }
    public init(_ builder:java_lang_StringBuilder)throws{
        throw NSError();
    }
    open func length()throws->Int{
        throw NSError();
    }
    public static func isEmpty(_ string:java_lang_String?)->Bool{
        if (nil == string || string?.this == nil) {
            return true
        }else{
            let myValue = string!.this;
            return myValue == ""
        }
    }
    open func charAt(_ index:Int)throws->Character{
        throw NSError();
    }
    open func codePointAt(_ index:Int)throws->Int{
        throw NSError();
    }
    open func codePointBefore(_ index:Int)throws->Int{
        throw NSError();
    }
    open func codePointCount(_ beginIndex:Int,_ endIndex:Int)throws->Int{
        throw NSError();
    }
    open func offsetByCodePoints(_ index:Int,_ codePointOffset:Int)throws->Int{
        throw NSError();
    }
    open func getChars(_ srcBegin:Int,_ srcEnd:Int,_ dst:Character,_ dstBegin:Int)throws{
        throw NSError();
    }
    open func getBytes(_ srcBegin:Int,_ srcEnd:Int,_ dst:Int8,_ dstBegin:Int)throws{
        throw NSError();
    }
    open func getBytes(_ charsetName:java_lang_String)throws->java_io_UnsupportedEncodingException{
        throw NSError();
    }
    open func getBytes(_ charset:java_nio_charset_Charset)throws->[Int8]{
        throw NSError();
    }
    open func getBytes()throws->[Int8]{
        throw NSError();
    }
    open func equals(_ anObject:java_lang_Object)throws->Bool{
        throw NSError();
    }
    open func contentEquals(_ sb:java_lang_StringBuffer)throws->Bool{
        throw NSError();
    }
    open func contentEquals(_ cs:java_lang_CharSequence)throws->Bool{
        throw NSError();
    }
    open func equalsIgnoreCase(_ anotherString:java_lang_String)throws->Bool{
        throw NSError();
    }
    open func compareTo(_ anotherString:java_lang_String)throws->Int{
        throw NSError();
    }
    static public var CASE_INSENSITIVE_ORDER:Any = java_lang_String_CaseInsensitiveComparator()

    open func compareToIgnoreCase(_ str:java_lang_String)throws->Int{
        throw NSError();
    }
    open func regionMatches(_ toffset:Int,_ other:java_lang_String,_ ooffset:Int,_ len:Int)throws->Bool{
        throw NSError();
    }
    open func regionMatches(_ ignoreCase:Bool,_ toffset:Int,_ other:java_lang_String,_ ooffset:Int,_ len:Int)throws->Bool{
        throw NSError();
    }
    open func startsWith(_ prefix:java_lang_String,_ toffset:Int)throws->Bool{
        throw NSError();
    }
    open func startsWith(_ prefix:java_lang_String)throws->Bool{
        throw NSError();
    }
    open func endsWith(_ suffix:java_lang_String)throws->Bool{
        throw NSError();
    }
    open func hashCode()throws->Int{
        throw NSError();
    }
    open func indexOf(_ ch:Int)throws->Int{
        throw NSError();
    }
    open func indexOf(_ ch:Int,_ fromIndex:Int)throws->Int{
        throw NSError();
    }
    open func lastIndexOf(_ ch:Int)throws->Int{
        throw NSError();
    }
    open func lastIndexOf(_ ch:Int,_ fromIndex:Int)throws->Int{
        throw NSError();
    }
    open func indexOf(_ str:java_lang_String)throws->Int{
        throw NSError();
    }
    open func indexOf(_ str:java_lang_String,_ fromIndex:Int)throws->Int{
        throw NSError();
    }
    open func lastIndexOf(_ str:java_lang_String)throws->Int{
        throw NSError();
    }
    open func lastIndexOf(_ str:java_lang_String,_ fromIndex:Int)throws->Int{
        throw NSError();
    }
    open func substring(_ beginIndex:Int)throws->java_lang_String{
        throw NSError();
    }
    open func substring(_ beginIndex:Int,_ endIndex:Int)throws->java_lang_String{
        throw NSError();
    }
    open func subSequence(_ beginIndex:Int,_ endIndex:Int)throws->java_lang_CharSequence{
        throw NSError();
    }
    open func concat(_ str:java_lang_String)throws->java_lang_String{
        throw NSError();
    }
    open func replace(_ oldChar:Character,_ newChar:Character)throws->java_lang_String{
        throw NSError();
    }
    open func matches(_ regex:java_lang_String)throws->Bool{
        throw NSError();
    }
    open func contains(_ s:java_lang_CharSequence)throws->Bool{
        throw NSError();
    }
    open func replaceFirst(_ regex:java_lang_String,_ replacement:java_lang_String)throws->java_lang_String{
        throw NSError();
    }
    open func replaceAll(_ regex:java_lang_String,_ replacement:java_lang_String)throws->java_lang_String{
        throw NSError();
    }
    open func replace(_ target:java_lang_CharSequence,_ replacement:java_lang_CharSequence)throws->java_lang_String{
        throw NSError();
    }
    open func split(_ regex:java_lang_String,_ limit:Int)throws->[java_lang_String]{
        throw NSError();
    }
    open func split(_ regex:java_lang_String)throws->[java_lang_String]{
        throw NSError();
    }
    static public func join(_ delimiter:java_lang_CharSequence,_ elements:java_lang_CharSequence)throws->java_lang_String{
        throw NSError();
    }
    static public func join(_ delimiter:java_lang_CharSequence,_ elements:java_lang_Iterable)throws->java_lang_String{
        throw NSError();
    }
    open func toLowerCase(_ locale:java_util_Locale)throws->java_lang_String{
        throw NSError();
    }
    open func toLowerCase()throws->java_lang_String{
        throw NSError();
    }
    open func toUpperCase(_ locale:java_util_Locale)throws->java_lang_String{
        throw NSError();
    }
    open func toUpperCase()throws->java_lang_String{
        throw NSError();
    }
    open func trim()throws->java_lang_String{
        throw NSError();
    }
    open func toString()->java_lang_String{
        return self;
    }
    open func toCharArray()throws->[Character]{
        throw NSError();
    }
    static public func format(_ format:java_lang_String,_ args:java_lang_Object)throws->java_lang_String{
        throw NSError();
    }
    static public func format(_ l:java_util_Locale,_ format:java_lang_String,_ args:java_lang_Object)throws->java_lang_String{
        throw NSError();
    }
    static public func valueOf(_ obj:java_lang_Object)throws->java_lang_String{
        throw NSError();
    }
    static public func valueOf(_ data:Character)throws->java_lang_String{
        throw NSError();
    }
    static public func valueOf(_ data:Character,_ offset:Int,_ count:Int)throws->java_lang_String{
        throw NSError();
    }
    static public func copyValueOf(_ data:Character,_ offset:Int,_ count:Int)throws->java_lang_String{
        throw NSError();
    }
    static public func copyValueOf(_ data:Character)throws->java_lang_String{
        throw NSError();
    }
    static public func valueOf(_ b:Bool)throws->java_lang_String{
        throw NSError();
    }
    static public func valueOf( c:Character)throws->java_lang_String{
        throw NSError();
    }
    static public func valueOf( i:Int)throws->java_lang_String{
        throw NSError();
    }
    static public func valueOf( l:Int64)throws->java_lang_String{
        throw NSError();
    }
    static public func valueOf( f:Float)throws->java_lang_String{
        throw NSError();
    }
    static public func valueOf( d:Double)throws->java_lang_String{
        throw NSError();
    }
    open func intern()throws->java_lang_String{
        throw NSError();
    }
}
///////////////////////////////
public class java_lang_String_CaseInsensitiveComparator : java_util_Comparator & java_io_Serializable{
        public typealias T = java_lang_String
    
    open func compare(_ s1:java_lang_String,_ s2:java_lang_String)throws->Int{
        throw NSError();
    }
}
