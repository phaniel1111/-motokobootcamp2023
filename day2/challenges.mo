import Array "mo:base/Array";
import Char "mo:base/Char";
import Text "mo:base/Text";
import Iter "mo:base/Iter";
import Buffer "mo:base/Buffer";
import Nat "mo:base/Nat";
actor {
  // 1
  public func average_array(array : [Int]) : async Int { 
    var a: Int = 0;
    var sum: Int = 0;
    var count: Int = 0;
    for (element in array.vals()) {
      sum += element;
      count +=1;
    };
    a := sum/ count;
    return a;
  };
  //2
  public func count_character(t : Text, c : Char) : async Nat{
    var counter: Nat =0;
    let CharArray = Text.toIter(t);
    Iter.iterate<Char>(CharArray, func(x, _index) {
      if(x == c){counter +=1};
    });
    return counter;
  };
  //3
  public func factorial(n : Nat) :  async Nat{
    var f: Nat = 1;
    if(n==0) return 1;
    var i :Nat= 1;
    while (i <= n)
    {
      f *= i;
      i+=1;
    };
    return f;
  };
  //4
  public func number_of_words(t : Text) : async Nat {
    var counter: Nat =1;
    var trim : Text  = Text.trim(t, #text " ");
    let CharArray = Text.toIter(trim);
    Iter.iterate<Char>(CharArray, func(c, _index) {
      if (c == ' '){counter +=1};
    });
    return counter;
  };
  //5
  public func find_duplicates(a : [Nat]) : async [Nat]{
    let c: [Nat] = [];
    let b = Buffer.fromArray<Nat>(c);
    var i = 0;
    var j = 0;
    for(c1 in a.vals())
        {
          for(c2 in a.vals())
          {
            if(j > i)
            {
              if (c1 == c2)
                {
                  b.add(c1);
                }
            };
            j += 1;
          };
          i += 1;
          j := 0;
        };
    let t = Buffer.toArray(b);
    return t;
  };
  //6
  public func convert_to_binary(n : Nat) : async Text{
    var natBit: Nat = 0;
    var p : Nat = 0;
    var temp = n;
    while (temp > 0)
    {
      natBit += (temp % 2) * (10 ** p);
      p += 1;
      temp := temp / 2;
    };
    let bits = Nat.toText(natBit);
    return bits;
  }

}