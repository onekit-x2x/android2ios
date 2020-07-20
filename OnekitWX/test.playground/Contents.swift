import Foundation;
import UIKit;
///
typealias Object = Any
class    java_lang_System{
    static func arraycopy(_ src:Any,_ srcPos:Int,_ dest:Any,_ destPos:Int,_ length:Int){
       // let srcArray:AnyIterator = src
       // let destArray:AnyIterator = dest
       // for(int i=0;i<length;i++){
        //    destArray[destPos+i] = srcArray[srcPos+i]
        //}
    }
}
class    java_lang_Exception:NSException{}
struct   java_lang_Comparable<T> {}
protocol java_lang_CharSequence{}
///
protocol java_io_Serializable {}
class    java_io_IOException:java_lang_Exception{}
class    java_io_UnsupportedEncodingException:java_io_IOException{}
///
class java_nio_ByteBuffer {
    static func wrapbyte(array:[Int8],offset:Int,length:Int)->java_nio_ByteBuffer{
        return ByteBuffer()
    }
}
class java_nio_CharBuffer{
    func length() -> Int {
        return 0;
    }
    func array()->[Character]{
        return [];
    }
}
class java_nio_charset_Charset{
    static func defaultCharset()->java_nio_charset_Charset{
        return java_nio_charset_Charset()
    }
    func decode(_ bb:java_nio_ByteBuffer)->java_nio_ByteBuffer{
        return java_nio_ByteBuffer()
    }
}
class java_nio_charset_Charsets{}
///
class    java_util_Arrays{}
struct   java_util_Comparator<T>{}
protocol java_util_Formatter {}
protocol java_util_Locale {}
protocol java_util_regex_Pattern {}
///
class libcore_util_EmptyArray {
    static let CHAR:[Character] = [Character]();
}
extension Array{
    var length:Int{
        return self.count;
    }
}
extension String{
    func equals(str:String)->Int{
        return 0;//self.compare(str);
    }
}
///
import Foundation;
import UIKit;
class java_lang_String:java_io_Serializable,java_lang_Comparable<java_lang_String>,java_lang_CharSequence{
   static var serialVersionUID:Int64 = -6849794470754667710
   static var REPLACEMENT_CHAR:Character = Character(UnicodeScalar(0xfffd))
   static var CASE_INSENSITIVE_ORDER:java_util_Comparator<java_lang_String> = java_lang_String_CaseInsensitiveComparator()

   static var ASCII:[Character]? = nil
   static func onekitwx(){
      ASCII = [Character]()
      for(var i:Int = 0;i<ASCII.length;++i){
         ASCII[i] = Character(UnicodeScalar(i))
      }
   }
   var value:[Character]
   var offset:Int
   var count:Int
   var hashCode:Int
   init(){
      java_lang_String.onekitwx()
      value = libcore_util_EmptyArray.CHAR
      offset = 0
      count = 0
   }
   init(_ s:java_lang_String,_ c:Character){
      java_lang_String.onekitwx()
      offset = 0
      value = [Character]()
      count = s.count+1
      java_lang_System.arraycopy(s.value,s.offset,value,0,s.count)
      value[s.count] = c
   }
   init(_ data:[Int8]){
      java_lang_String.onekitwx()
      self(data,0,data.length)
   }
   init(_ data:[Int8],_ high:Int){
      java_lang_String.onekitwx()
      self(data,high,0,data.length)
   }
   init(_ data:[Int8],_ offset:Int,_ byteCount:Int)throws{
      java_lang_String.onekitwx()
      if((offset|byteCount)<0||byteCount>data.length-offset){
         throw failedBoundsCheck(data.length,offset,byteCount)
      }
      var cb:java_nio_CharBuffer = java_nio_charset_Charset.defaultCharset().decode(java_nio_ByteBuffer.wrap(data,offset,byteCount))
      self.count = cb.length()
      self.offset = 0
      if(count>0){
         value = cb.array()
      }
      else {
         value = libcore_util_EmptyArray.CHAR
      }
   }
   init(_ data:[Int8],var high:Int,_ offset:Int,_ byteCount:Int)throws{
      java_lang_String.onekitwx()
      if((offset|byteCount)<0||byteCount>data.length-offset){
         throw failedBoundsCheck(data.length,offset,byteCount)
      }
      self.offset = 0
      self.value = [Character]()
      self.count = byteCount
    high = 1;//(high << 8)
      for(var i:Int = 0;i<count;i++){
         value[i] = Character(UnicodeScalar((high+(data[offset++]&0xff))))
      }
   }
   init(_ data:[Int8],_ offset:Int,_ byteCount:Int,_ charsetName:java_lang_String){
      java_lang_String.onekitwx()
      self(data,offset,byteCount,java_nio_charset_Charset.forNameUEE(charsetName))
   }
   init(_ data:[Int8],_ charsetName:java_lang_String){
      java_lang_String.onekitwx()
      self(data,0,data.length,java_nio_charset_Charset.forNameUEE(charsetName))
   }
   init(_ data:[Int8],_ offset:Int,_ byteCount:Int,_ charset:java_nio_charset_Charset)throws{
      java_lang_String.onekitwx()
      if((offset|byteCount)<0||byteCount>data.length-offset){
         throw failedBoundsCheck(data.length,offset,byteCount)
      }
      var canonicalCharsetName:java_lang_String = charset.name()
      if(canonicalCharsetName.equals("UTF-8")){
         var data:[Int8]
         var v:[Character] = [Character]()
         var offset:Int
         var last:Int = offset+byteCount
         var s:Int = 0
                  if(s==byteCount){
            self.offset = 0
            self.value = v
            self.count = s
         }
         else {
            self.offset = 0
            self.value = [Character]()
            self.count = s
            java_lang_System.arraycopy(v,0,value,0,s)
         }
      }
      else if(canonicalCharsetName.equals("ISO-8859-1")){
         self.offset = 0
         self.value = [Character]()
         self.count = byteCount
         java_nio_charset_Charsets.isoLatin1BytesToChars(data,offset,byteCount,value)
      }
      else if(canonicalCharsetName.equals("US-ASCII")){
         self.offset = 0
         self.value = [Character]()
         self.count = byteCount
         java_nio_charset_Charsets.asciiBytesToChars(data,offset,byteCount,value)
      }
      else {
         var cb:java_nio_CharBuffer = charset.decode(java_nio_ByteBuffer.wrap(data,offset,byteCount))
         self.offset = 0
         self.count = cb.length()
         if(count>0){
            self.value = [Character]()
            java_lang_System.arraycopy(cb.array(),0,value,0,count)
         }
         else {
            self.value = libcore_util_EmptyArray.CHAR
         }
      }
   }
   init(_ data:[Int8],_ charset:java_nio_charset_Charset){
      java_lang_String.onekitwx()
      self(data,0,data.length,charset)
   }
   init(_ data:[Character]){
      java_lang_String.onekitwx()
      self(data,0,data.length)
   }
   init(_ data:[Character],_ offset:Int,_ charCount:Int)throws{
      java_lang_String.onekitwx()
      if((offset|charCount)<0||charCount>data.length-offset){
         throw failedBoundsCheck(data.length,offset,charCount)
      }
      self.offset = 0
      self.value = [Character]()
      self.count = charCount
      java_lang_System.arraycopy(data,offset,value,0,count)
   }
   init(_ offset:Int,_ charCount:Int,_ chars:[Character]){
      java_lang_String.onekitwx()
      self.value = chars
      self.offset = offset
      self.count = charCount
   }
   init(_ toCopy:java_lang_String){
      java_lang_String.onekitwx()
      value = (toCopy.value.length==toCopy.count)?toCopy.value:java_util_Arrays.copyOfRange(toCopy.value,toCopy.offset,toCopy.offset+toCopy.length())
      offset = 0
      count = value.length
   }
   init(_ s1:java_lang_String,_ s2:java_lang_String){
      java_lang_String.onekitwx()
      if(s1==nil){
         s1 = "null"
      }
      if(s2==nil){
         s2 = "null"
      }
      count = s1.count+s2.count
      value = [Character]()
      offset = 0
      java_lang_System.arraycopy(s1.value,s1.offset,value,0,s1.count)
      java_lang_System.arraycopy(s2.value,s2.offset,value,s1.count,s2.count)
   }
   init(_ s1:java_lang_String,_ s2:java_lang_String,_ s3:java_lang_String){
      java_lang_String.onekitwx()
      if(s1==nil){
         s1 = "null"
      }
      if(s2==nil){
         s2 = "null"
      }
      if(s3==nil){
         s3 = "null"
      }
      count = s1.count+s2.count+s3.count
      value = [Character]()
      offset = 0
      java_lang_System.arraycopy(s1.value,s1.offset,value,0,s1.count)
      java_lang_System.arraycopy(s2.value,s2.offset,value,s1.count,s2.count)
      java_lang_System.arraycopy(s3.value,s3.offset,value,s1.count+s2.count,s3.count)
   }
   init(_ stringBuffer:java_lang_StringBuffer){
      java_lang_String.onekitwx()
      offset = 0
      synchronized(stringBuffer){
         value = stringBuffer.shareValue()
         count = stringBuffer.length()
      }
   }
   init(_ codePoints:[Int],_ offset:Int,_ count:Int)throws{
      java_lang_String.onekitwx()
      if(codePoints==nil){
         throw java_lang_NullPointerException()

      }
      if((offset|count)<0||count>codePoints.length-offset){
         throw failedBoundsCheck(codePoints.length,offset,count)
      }
      self.offset = 0
      self.value = [Character]()
      var end:Int = offset+count
      var c:Int = 0
      for(var offset:Int;java_lang_i<end;java_lang_i++){
         c += java_lang_Character.toChars(codePoints[java_lang_i],self.value,c)
      }
      self.count = c
   }
   init(_ stringBuilder:java_lang_StringBuilder)throws{
      java_lang_String.onekitwx()
      if(stringBuilder==nil){
         throw java_lang_NullPointerException("stringBuilder == null")

      }
      self.offset = 0
      self.count = stringBuilder.length()
      self.value = [Character]()
      stringBuilder.getChars(0,self.count,self.value,0)
   }
   init(_ s1:java_lang_String,_ v1:Int){
      java_lang_String.onekitwx()
      if(s1==nil){
         s1 = "null"
      }
      var s2:java_lang_String = java_lang_String.valueOf(v1)
      var len:Int = s1.count+s2.count
      value = [Character]()
      offset = 0
      java_lang_System.arraycopy(s1.value,s1.offset,value,0,s1.count)
      java_lang_System.arraycopy(s2.value,s2.offset,value,s1.count,s2.count)
      count = len
   }
   func charAt(_ index:Int)->Character   func indexAndLength(_ index:Int)throws->java_lang_StringIndexOutOfBoundsException{
      throw java_lang_StringIndexOutOfBoundsException(self,index)

   }
   func startEndAndLength(_ start:Int,_ end:Int)throws->java_lang_StringIndexOutOfBoundsException{
      throw java_lang_StringIndexOutOfBoundsException(self,start,end-start)

   }
   func failedBoundsCheck(_ arrayLength:Int,_ offset:Int,_ count:Int)throws->java_lang_StringIndexOutOfBoundsException{
      throw java_lang_StringIndexOutOfBoundsException(arrayLength,offset,count)

   }
   func foldCase(_ ch:Character)->Character{
      if(ch<128){
         if("'"<=ch&&ch<="'"){
            return Character(UnicodeScalar((ch+("'"-"'"))))
         }
         return ch
      }
      return java_lang_Character.toLowerCase(java_lang_Character.toUpperCase(ch))
   }
   func compareTo(_ string:java_lang_String)->Int   func compareToIgnoreCase(_ string:java_lang_String)->Int{
      var result:Int
      var end:Int = offset+(count<string.count?count:string.count)
      var c2:Character
      var target:[Character] = string.value
      while(java_lang_o1<end){
         if((c1 = value[java_lang_o1++])==(c2 = target[o2++])){
            continue
         }
         c1 = foldCase(c1)
         c2 = foldCase(c2)
         if((result = c1-c2)!=0){
            return result
         }
      }
      return count-string.count
   }
   func concat(_ string:java_lang_String)->java_lang_String{
      if(string.count>0&&count>0){
         var buffer:[Character] = [Character]()
         java_lang_System.arraycopy(value,offset,buffer,0,count)
         java_lang_System.arraycopy(string.value,string.offset,buffer,count,string.count)
         return java_lang_String(0,buffer.length,buffer)

      }
      return count==0?string:self
   }
   func copyValueOf(_ data:[Character])->java_lang_String{
      return java_lang_String(data,0,data.length)

   }
   func copyValueOf(_ data:[Character],_ start:Int,_ length:Int)->java_lang_String{
      return java_lang_String(data,start,length)

   }
   func endsWith(_ suffix:java_lang_String)->java_lang_boolean{
      return regionMatches(count-suffix.count,suffix,0,suffix.count)
   }
   func equals(_ object:java_lang_Object)->java_lang_boolean   func equalsIgnoreCase(_ string:java_lang_String)->java_lang_boolean{
      if(string==self){
         return true
      }
      if(string==nil||count!=string.count){
         return false
      }
      var o2:Int = string.offset
      var end:Int = offset+count
      var target:[Character] = string.value
      while(java_lang_o1<end){
         var c1:Character = value[java_lang_o1++]
         var c2:Character = target[o2++]
         if(c1!=c2&&foldCase(c1)!=foldCase(c2)){
            return false
         }
      }
      return true
   }
   func getBytes(_ start:Int,_ end:Int,_ data:[Int8],_ index:Int)throws->java_lang_void{
      if(start>=0&&start<=end&&end<=count){
         end += offset
         try{
            for(var i:Int = offset+start;i<end;i++){
               data[index++] = (Int8)value[i]
            }
         }
         catch(ignored:java_lang_ArrayIndexOutOfBoundsException){
            throw failedBoundsCheck(data.length,index,end-start)
         }
      }
      else {
         throw startEndAndLength(start,end)
      }
   }
   func getBytes()->[Int8]{
      return getBytes(java_nio_charset_Charset.defaultCharset())
   }
   func getBytes(_ charsetName:java_lang_String)->java_io_UnsupportedEncodingException{
      return getBytes(java_nio_charset_Charset.forNameUEE(charsetName))
   }
   func getBytes(_ charset:java_nio_charset_Charset)->[Int8]{
      var canonicalCharsetName:java_lang_String = charset.name()
      if(canonicalCharsetName.equals("UTF-8")){
         return java_nio_charset_Charsets.toUtf8Bytes(value,offset,count)
      }
      else if(canonicalCharsetName.equals("ISO-8859-1")){
         return java_nio_charset_Charsets.toIsoLatin1Bytes(value,offset,count)
      }
      else if(canonicalCharsetName.equals("US-ASCII")){
         return java_nio_charset_Charsets.toAsciiBytes(value,offset,count)
      }
      else if(canonicalCharsetName.equals("UTF-16BE")){
         return java_nio_charset_Charsets.toBigEndianUtf16Bytes(value,offset,count)
      }
      else {
         var chars:java_nio_CharBuffer = java_nio_CharBuffer.wrap(self.value,self.offset,self.count)
         var buffer:java_nio_ByteBuffer = charset.encode(chars.asReadOnlyBuffer())
         var bytes:[Int8] = [Int8]()
         buffer.get(bytes)
         return bytes
      }
   }
   func getChars(_ start:Int,_ end:Int,_ buffer:[Character],_ index:Int)throws->java_lang_void{
      if(start>=0&&start<=end&&end<=count){
         java_lang_System.arraycopy(value,start+offset,buffer,index,end-start)
      }
      else {
         throw startEndAndLength(start,end)
      }
   }
   func _getChars(_ start:Int,_ end:Int,_ buffer:[Character],_ index:Int)->java_lang_void{
      java_lang_System.arraycopy(value,start+offset,buffer,index,end-start)
   }
   func hashCode()->Int{
      var hashCode:Int
      if(java_lang_hash==0){
         if(count==0){
            return 0
         }
         var end:Int = count+offset
         var value:[Character]
         for(var offset:Int;java_lang_i<end;++java_lang_i){
            java_lang_hash = 31*java_lang_hash+java_lang_chars[java_lang_i]
         }
         hashCode = java_lang_hash
      }
      return java_lang_hash
   }
   func indexOf(_ c:Int)->Int{
      if(c>0xffff){
         return indexOfSupplementary(c,0)
      }
      return fastIndexOf(c,0)
   }
   func indexOf(_ c:Int,_ start:Int)->Int{
      if(c>0xffff){
         return indexOfSupplementary(c,start)
      }
      return fastIndexOf(c,start)
   }
   func fastIndexOf(_ c:Int,_ start:Int)->Int   func indexOfSupplementary(_ c:Int,_ start:Int)->Int{
      if(!java_lang_Character.isSupplementaryCodePoint(c)){
         return -1
      }
      var chars:[Character] = java_lang_Character.toChars(c)
      var needle:java_lang_String = java_lang_String(0,chars.length,chars)

      return indexOf(needle,start)
   }
   func indexOf(_ string:java_lang_String)->Int{
      var start:Int = 0
      var subCount:Int = string.count
      var count:Int
      if(subCount>0){
         if(subCount>java_lang__count){
            return -1
         }
         var target:[Character] = string.value
         var subOffset:Int = string.offset
         var firstChar:Character = target[subOffset]
         var end:Int = subOffset+subCount
         while(true){
            var i:Int = indexOf(firstChar,start)
            if(i==-1||subCount+i>java_lang__count){
               return -1
            }
            var subOffset:Int
            var value:[Character]
            while(++java_lang_o2<end&&java_lang__value[++o1]==target[java_lang_o2]){
            }
            if(java_lang_o2==end){
               return i
            }
            start = i+1
         }
      }
      return start<java_lang__count?start:java_lang__count
   }
   func indexOf(_ subString:java_lang_String,_ start:Int)->Int{
      if(start<0){
         start = 0
      }
      var subCount:Int = subString.count
      var count:Int
      if(subCount>0){
         if(subCount+start>java_lang__count){
            return -1
         }
         var target:[Character] = subString.value
         var subOffset:Int = subString.offset
         var firstChar:Character = target[subOffset]
         var end:Int = subOffset+subCount
         while(true){
            var i:Int = indexOf(firstChar,start)
            if(i==-1||subCount+i>java_lang__count){
               return -1
            }
            var subOffset:Int
            var value:[Character]
            while(++java_lang_o2<end&&java_lang__value[++o1]==target[java_lang_o2]){
            }
            if(java_lang_o2==end){
               return i
            }
            start = i+1
         }
      }
      return start<java_lang__count?start:java_lang__count
   }
   func intern()->java_lang_String   func isEmpty()->java_lang_boolean   func lastIndexOf(_ c:Int)->Int{
      if(c>0xffff){
         return lastIndexOfSupplementary(c,java_lang_Integer.MAX_VALUE)
      }
      var count:Int
      var offset:Int
      var value:[Character]
      for(var i:Int = java_lang__offset+java_lang__count-1;i>=java_lang__offset;--i){
         if(java_lang__value[i]==c){
            return i-java_lang__offset
         }
      }
      return -1
   }
   func lastIndexOf(_ c:Int,_ start:Int)->Int{
      if(c>0xffff){
         return lastIndexOfSupplementary(c,start)
      }
      var count:Int
      var offset:Int
      var value:[Character]
      if(start>=0){
         if(start>=java_lang__count){
            start = java_lang__count-1
         }
         for(var i:Int = java_lang__offset+start;i>=java_lang__offset;--i){
            if(java_lang__value[i]==c){
               return i-java_lang__offset
            }
         }
      }
      return -1
   }
   func lastIndexOfSupplementary(_ c:Int,_ start:Int)->Int{
      if(!java_lang_Character.isSupplementaryCodePoint(c)){
         return -1
      }
      var chars:[Character] = java_lang_Character.toChars(c)
      var needle:java_lang_String = java_lang_String(0,chars.length,chars)

      return lastIndexOf(needle,start)
   }
   func lastIndexOf(_ string:java_lang_String)->Int{
      return lastIndexOf(string,count)
   }
   func lastIndexOf(_ subString:java_lang_String,_ start:Int)->Int{
      var subCount:Int = subString.count
      if(subCount<=count&&start>=0){
         if(subCount>0){
            if(start>count-subCount){
               start = count-subCount
            }
            var target:[Character] = subString.value
            var subOffset:Int = subString.offset
            var firstChar:Character = target[subOffset]
            var end:Int = subOffset+subCount
            while(true){
               var i:Int = lastIndexOf(firstChar,start)
               if(i==-1){
                  return -1
               }
               var subOffset:Int
               while(++java_lang_o2<end&&value[++o1]==target[java_lang_o2]){
               }
               if(java_lang_o2==end){
                  return i
               }
               start = i-1
            }
         }
         return start<count?start:count
      }
      return -1
   }
   func length()->Int   func regionMatches(_ thisStart:Int,_ string:java_lang_String,_ start:Int,_ length:Int)throws->java_lang_boolean{
      if(string==nil){
         throw java_lang_NullPointerException()

      }
      if(start<0||string.count-start<length){
         return false
      }
      if(thisStart<0||count-thisStart<length){
         return false
      }
      if(length<=0){
         return true
      }
      var o2:Int = string.offset+start
      var value:[Character]
      var value2:[Character] = string.value
      for(var i:Int = 0;i<length;++i){
         if(java_lang_value1[o1+i]!=value2[o2+i]){
            return false
         }
      }
      return true
   }
   func regionMatches(_ ignoreCase:java_lang_boolean,_ thisStart:Int,_ string:java_lang_String,_ start:Int,_ length:Int)throws->java_lang_boolean{
      if(!ignoreCase){
         return regionMatches(thisStart,string,start,length)
      }
      if(string==nil){
         throw java_lang_NullPointerException("string == null")

      }
      if(thisStart<0||length>count-thisStart){
         return false
      }
      if(start<0||length>string.count-start){
         return false
      }
      thisStart += offset
      start += string.offset
      var end:Int = thisStart+length
      var target:[Character] = string.value
      while(thisStart<end){
         var c1:Character = value[thisStart++]
         var c2:Character = target[start++]
         if(c1!=c2&&foldCase(c1)!=foldCase(c2)){
            return false
         }
      }
      return true
   }
   func replace(_ oldChar:Character,_ newChar:Character)->java_lang_String{
      var value:[Character]
      var offset:Int
      var count:Int
      var _offset:Int
      var last:Int = _offset+java_lang__count
      var copied:java_lang_boolean = false
      while(java_lang_idx<last){
         if(java_lang_buffer[java_lang_idx]==oldChar){
            if(!copied){
               var newBuffer:[Character] = [Character]()
               java_lang_System.arraycopy(java_lang_buffer,_offset,newBuffer,0,java_lang__count)
               java_lang_buffer = newBuffer
               java_lang_idx -= _offset
               last -= _offset
               copied = true
            }
            java_lang_buffer[java_lang_idx] = newChar
         }
         java_lang_idx++
      }
      return copied?java_lang_String(0,count,java_lang_buffer)
:self
   }
   func replace(_ target:java_lang_CharSequence,_ replacement:java_lang_CharSequence)throws->java_lang_String{
      if(target==nil){
         throw java_lang_NullPointerException("target == null")

      }
      if(replacement==nil){
         throw java_lang_NullPointerException("replacement == null")

      }
      var targetString:java_lang_String = target.toString()
      var matchStart:Int = indexOf(targetString,0)
      if(matchStart==-1){
         return self
      }
      var replacementString:java_lang_String = replacement.toString()
      var targetLength:Int = targetString.length()
      if(targetLength==0){
         var resultLength:Int = (count+2)*replacementString.length()
         var result:java_lang_StringBuilder = java_lang_StringBuilder(resultLength)

         result.append(replacementString)
         for(var offset:Int;java_lang_i<count;++java_lang_i){
            result.append(value[java_lang_i])
            result.append(replacementString)
         }
         return result.toString()
      }
      var result:java_lang_StringBuilder = java_lang_StringBuilder(count)

      var searchStart:Int = 0
      dp
{
         result.append(value,offset+searchStart,matchStart-searchStart)
         result.append(replacementString)
         searchStart = matchStart+targetLength
      }
while((matchStart = indexOf(targetString,searchStart))!=-1)
      result.append(value,offset+searchStart,count-searchStart)
      return result.toString()
   }
   func startsWith(_ prefix:java_lang_String)->java_lang_boolean{
      return startsWith(prefix,0)
   }
   func startsWith(_ prefix:java_lang_String,_ start:Int)->java_lang_boolean{
      return regionMatches(start,prefix,0,prefix.count)
   }
   func substring(_ start:Int)throws->java_lang_String{
      if(start==0){
         return self
      }
      if(start>=0&&start<=count){
         return java_lang_String(offset+start,count-start,value)

      }
      throw indexAndLength(start)
   }
   func substring(_ start:Int,_ end:Int)throws->java_lang_String{
      if(start==0&&end==count){
         return self
      }
      if(start>=0&&start<=end&&end<=count){
         return java_lang_String(offset+start,end-start,value)

      }
      throw startEndAndLength(start,end)
   }
   func toCharArray()->[Character]{
      var buffer:[Character] = [Character]()
      java_lang_System.arraycopy(value,offset,buffer,0,count)
      return buffer
   }
   func toLowerCase()->java_lang_String{
      return java_lang_CaseMapper.toLowerCase(java_util_Locale.getDefault(),self,value,offset,count)
   }
   func toLowerCase(_ locale:java_util_Locale)->java_lang_String{
      return java_lang_CaseMapper.toLowerCase(locale,self,value,offset,count)
   }
   func toString()->java_lang_String{
      return self
   }
   func toUpperCase()->java_lang_String{
      return java_lang_CaseMapper.toUpperCase(java_util_Locale.getDefault(),self,value,offset,count)
   }
   func toUpperCase(_ locale:java_util_Locale)->java_lang_String{
      return java_lang_CaseMapper.toUpperCase(locale,self,value,offset,count)
   }
   func trim()->java_lang_String{
      var last:Int = offset+count-1
      var last:Int
      while((java_lang_start<=java_lang_end)&&(value[java_lang_start]<="'")){
         java_lang_start++
      }
      while((java_lang_end>=java_lang_start)&&(value[java_lang_end]<="'")){
         java_lang_end++
      }
      if(java_lang_start==offset&&java_lang_end==last){
         return self
      }
      return java_lang_String(java_lang_start,java_lang_end-java_lang_start+1,value)

   }
   func valueOf(_ data:[Character])->java_lang_String{
      return java_lang_String(data,0,data.length)

   }
   func valueOf(_ data:[Character],_ start:Int,_ length:Int)->java_lang_String{
      return java_lang_String(data,start,length)

   }
   func valueOf(_ value:Character)->java_lang_String{
      var s:java_lang_String
      if(value<128){
         s = java_lang_String(value,1,ASCII)

      }
      else {
         s = java_lang_String(0,1,[Character][value])

      }
      s.hashCode = value
      return s
   }
   func valueOf(_ value:java_lang_double)->java_lang_String{
      return java_lang_Double.toString(value)
   }
   func valueOf(_ value:java_lang_float)->java_lang_String{
      return java_lang_Float.toString(value)
   }
   func valueOf(_ value:Int)->java_lang_String{
      return java_lang_Integer.toString(value)
   }
   func valueOf(_ value:Int64)->java_lang_String{
      return java_lang_Long.toString(value)
   }
   func valueOf(_ value:java_lang_Object)->java_lang_String{
      return value!=nil?value.toString():"null"
   }
   func valueOf(_ value:java_lang_boolean)->java_lang_String{
      return value?"true":"false"
   }
   func contentEquals(_ strbuf:java_lang_StringBuffer)->java_lang_boolean{
      synchronized(strbuf){
         var size:Int = strbuf.length()
         if(count!=size){
            return false
         }
         return regionMatches(0,java_lang_String(0,size,strbuf.getValue())
,0,size)
      }
   }
   func contentEquals(_ cs:java_lang_CharSequence)throws->java_lang_boolean{
      if(cs==nil){
         throw java_lang_NullPointerException()

      }
      var len:Int = cs.length()
      if(len!=count){
         return false
      }
      if(len==0&&count==0){
         return true
      }
      return regionMatches(0,cs.toString(),0,len)
   }
   func matches(_ regularExpression:java_lang_String)->java_lang_boolean{
      return java_util_regex_Pattern.matches(regularExpression,self)
   }
   func replaceAll(_ regularExpression:java_lang_String,_ replacement:java_lang_String)->java_lang_String{
      return java_util_regex_Pattern.compile(regularExpression).matcher(self).replaceAll(replacement)
   }
   func replaceFirst(_ regularExpression:java_lang_String,_ replacement:java_lang_String)->java_lang_String{
      return java_util_regex_Pattern.compile(regularExpression).matcher(self).replaceFirst(replacement)
   }
   func split(_ regularExpression:java_lang_String)->[java_lang_String]{
      return split(regularExpression,0)
   }
   func split(_ regularExpression:java_lang_String,_ limit:Int)->[java_lang_String]{
      var result:[java_lang_String] = java_lang_java.util.regex.Splitter.fastSplit(regularExpression,self,limit)
      return result!=nil?result:java_util_regex_Pattern.compile(regularExpression).split(self,limit)
   }
   func subSequence(_ start:Int,_ end:Int)->java_lang_CharSequence{
      return substring(start,end)
   }
   func codePointAt(_ index:Int)throws->Int{
      if(index<0||index>=count){
         throw indexAndLength(index)
      }
      return java_lang_Character.codePointAt(value,offset+index,offset+count)
   }
   func codePointBefore(_ index:Int)throws->Int{
      if(index<1||index>count){
         throw indexAndLength(index)
      }
      return java_lang_Character.codePointBefore(value,offset+index,offset)
   }
   func codePointCount(_ start:Int,_ end:Int)throws->Int{
      if(start<0||end>count||start>end){
         throw startEndAndLength(start,end)
      }
      return java_lang_Character.codePointCount(value,offset+start,end-start)
   }
   func contains(_ cs:java_lang_CharSequence)throws->java_lang_boolean{
      if(cs==nil){
         throw java_lang_NullPointerException()

      }
      return indexOf(cs.toString())>=0
   }
   func offsetByCodePoints(_ index:Int,_ codePointOffset:Int)->Int{
      var s:Int = index+offset
      var r:Int = java_lang_Character.offsetByCodePoints(value,offset,count,s,codePointOffset)
      return r-offset
   }
   func format(_ format:java_lang_String,_ args:java_lang_Object)->java_lang_String{
      return format(java_util_Locale.getDefault(),format,args)
   }
   func format(_ locale:java_util_Locale,_ format:java_lang_String,_ args:java_lang_Object)throws->java_lang_String{
      if(format==nil){
         throw java_lang_NullPointerException("null format argument")

      }
      var bufferSize:Int = format.length()+(args==nil?0:args.length*10)
      var f:java_util_Formatter = java_util_Formatter(java_lang_StringBuilder(bufferSize)
,locale)

      return f.format(format,args).toString()
   }
   func indexOf(_ haystackString:java_lang_String,_ needleString:java_lang_String,_ cache:Int,_ md2:Int,_ lastChar:Character)->Int{
      var haystack:[Character] = haystackString.value
      var haystackOffset:Int = haystackString.offset
      var haystackLength:Int = haystackString.count
      var needle:[Character] = needleString.value
      var needleOffset:Int = needleString.offset
      var needleLength:Int = needleString.count
      var needleLengthMinus1:Int = needleLength-1
      var haystackEnd:Int = haystackOffset+haystackLength
            return -1
   }
}
///////////////////////////////
class java_lang_String_CaseInsensitiveComparator:java_util_Comparator<java_lang_String>,java_io_Serializable{
   static var serialVersionUID:Int64 = 8575799808933029326
   func compare(_ o1:java_lang_String,_ o2:java_lang_String)->Int{
      return o1.compareToIgnoreCase(o2)
   }
}
