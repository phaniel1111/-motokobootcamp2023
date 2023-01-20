import List "mo:base/List";
import Buffer "mo:base/Buffer";

module{
    public type List<T> = ?(T, List<T>);
    //1
    func unique<T>(l : List<T>, equal: (T,?T) -> Bool) : List<?T> {
      var n : List<?T> = null;
      var h : List<T> = l;
      while(List.isNil(h) == false){
        let (p, r) = List.pop<T>(l);
        h := r;
        if (List.find<T>(h, func (e){equal(e, p)}) == false){
          n := List.push(p, n);
        };
      };
      n;
    };

    //2
    public func reverse<T>(l : List<T>) : List<T> {
        func rec(l : List<T>, r : List<T>) : List<T> {
        switch l {
            case null { r };
            case (?(h, t)) { rec(t, ?(h, r)) }
        }
        };
        rec(l, null)
    };

    //4
    func find_in_buffer<T> (buf: Buffer.Buffer<T>, val: T, equal: (T,T) -> Bool) : ?Nat{
        Buffer.indexOf<T>(val, buf, equal);
    };
}