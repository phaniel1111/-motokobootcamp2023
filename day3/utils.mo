import Array "mo:base/Array";
import Int "mo:base/Int";
import Nat "mo:base/Nat";
import Buffer "mo:base/Buffer";
actor{
  //1
  func second_maximum(array : [Int]) : Int{
    var x :Int =0;
    var y :Int =0;
    for(i in array.vals()){
      if(i > x)
        x := i;
    };
    for(i in array.vals()){
      if(i > y and i != x)
        y := i;
    };
    return y;
  };
  //2
  func remove_even(array : [Nat]) : [Nat]{
    return Array.filter<Nat>(array, func x = x%2 == 1)
  };
  //3
  func drop<T>(xs : [T], n : Nat) : [T] {
      let buffer = Buffer.fromArray<T>(xs);
      buffer.filterEntries(func(index, value) = index >= n);
      return Buffer.toArray(buffer);
  };
}