import Nat "mo:base/Nat";

actor {
  var counter : Nat = 0;
  // 1
  public func multiply (n : Nat, m : Nat) : async Nat { 
    let mul = n * m;
    return mul;
  };
  //2
  public func volume (n : Nat) : async Nat { 
    let v = n * n * n;
    return v;
  };
  //3
  public func hours_to_minutes (n : Nat)  : async Nat { 
    let m = n * 60;
    return m;
  };
  //4
  public func set_counter(n : Nat) : async (){
    counter := n;
  };
  public query func get_counter() : async Nat{
    return counter;
  };
  //5
  public func test_divide(n: Nat, m : Nat) : async Bool{
    if (n % m == 0)
      return true;
    return false;
  };
  //6
  public func is_even(n: Nat) : async Bool{
    if (n % 2 == 0)
      return true;
    return false;
  };
}