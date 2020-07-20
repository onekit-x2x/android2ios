//
//  java_util_Comparator<T>.swift
//  OnekitWX_java
//
//  Created by 张瑾 on 2019/9/25.
//  Copyright © 2019 onekitwx.com. All rights reserved.
//

import Foundation
public protocol java_util_Comparator {associatedtype T
    //func compare(_ o1:T, _ o2:T)->Int;

    //func equals(_ obj:java_lang_Object)->Bool;
}
//extension java_util_Comparator{
     /*  func  reversed()->Comparator<T> {
           return Collections.reverseOrder(self);
       }

       func thenComparing(Comparator<? super T> other)-> Comparator<T> {
           Objects.requireNonNull(other);
           return (Comparator<T> & Serializable) (c1, c2) -> {
               int res = compare(c1, c2);
               return (res != 0) ? res : other.compare(c1, c2);
           };
       }

      
       default <U> Comparator<T> thenComparing(
               Function<? super T, ? extends U> keyExtractor,
               Comparator<? super U> keyComparator)
       {
           return thenComparing(comparing(keyExtractor, keyComparator));
       }

       default <U extends Comparable<? super U>> Comparator<T> thenComparing(
               Function<? super T, ? extends U> keyExtractor)
       {
           return thenComparing(comparing(keyExtractor));
       }

       default Comparator<T> thenComparingInt(ToIntFunction<? super T> keyExtractor) {
           return thenComparing(comparingInt(keyExtractor));
       }

       default Comparator<T> thenComparingLong(ToLongFunction<? super T> keyExtractor) {
           return thenComparing(comparingLong(keyExtractor));
       }

       default Comparator<T> thenComparingDouble(ToDoubleFunction<? super T> keyExtractor) {
           return thenComparing(comparingDouble(keyExtractor));
       }

}

       public static <T extends Comparable<? super T>> Comparator<T> reverseOrder() {
           return Collections.reverseOrder();
       }
  public static <T extends Comparable<? super T>> Comparator<T> naturalOrder() {
           return (Comparator<T>) Comparators.NaturalOrderComparator.INSTANCE;
       }

       public static <T> Comparator<T> nullsFirst(Comparator<? super T> comparator) {
           return new Comparators.NullComparator<>(true, comparator);
       }

     
       public static <T> Comparator<T> nullsLast(Comparator<? super T> comparator) {
           return new Comparators.NullComparator<>(false, comparator);
       }

       public static <T, U> Comparator<T> comparing(
               Function<? super T, ? extends U> keyExtractor,
               Comparator<? super U> keyComparator)
       {
           Objects.requireNonNull(keyExtractor);
           Objects.requireNonNull(keyComparator);
           return (Comparator<T> & Serializable)
               (c1, c2) -> keyComparator.compare(keyExtractor.apply(c1),
                                                 keyExtractor.apply(c2));
       }

      
       public static <T, U extends Comparable<? super U>> Comparator<T> comparing(
               Function<? super T, ? extends U> keyExtractor)
       {
           Objects.requireNonNull(keyExtractor);
           return (Comparator<T> & Serializable)
               (c1, c2) -> keyExtractor.apply(c1).compareTo(keyExtractor.apply(c2));
       }

       public static <T> Comparator<T> comparingInt(ToIntFunction<? super T> keyExtractor) {
           Objects.requireNonNull(keyExtractor);
           return (Comparator<T> & Serializable)
               (c1, c2) -> Integer.compare(keyExtractor.applyAsInt(c1), keyExtractor.applyAsInt(c2));
       }

       public static <T> Comparator<T> comparingLong(ToLongFunction<? super T> keyExtractor) {
           Objects.requireNonNull(keyExtractor);
           return (Comparator<T> & Serializable)
               (c1, c2) -> Long.compare(keyExtractor.applyAsLong(c1), keyExtractor.applyAsLong(c2));
       }

       public static<T> Comparator<T> comparingDouble(ToDoubleFunction<? super T> keyExtractor) {
           Objects.requireNonNull(keyExtractor);
           return (Comparator<T> & Serializable)
               (c1, c2) -> Double.compare(keyExtractor.applyAsDouble(c1), keyExtractor.applyAsDouble(c2));
       }*/
//}
