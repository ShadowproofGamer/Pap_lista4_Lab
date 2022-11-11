/*
Zad. 3. [3p] Wyznaczyć wartość g’(f’(x)) dla zadanego x.
Funkcje f i g są dowolnymi wcześniej zdefiniowanymi funkcjami wykorzystującymi wielomian
i funkcje trygonometryczne lub logarytm. Uwzględnić fakt, że wartość ilorazu  różnicowego
jest przybliżeniem wartości pochodnej funkcji. Iloraz różnicowy należy specjalizować dla dx=0.0000001.
Zadanie wykonać w Scala.

 */



def doubleDerive(f:(Double=>Double), g:Double=>Double):(Double=>Double) = {
  def derive(f: Double => Double, x: Double): Double = {
    (f(x + 0.0000001) - f(x)) / 0.0000001
  }
  x => derive(g, derive(f, x))
}

doubleDerive(x=>x*x +1, y=>2*y*y)(2);
doubleDerive(x=>x*x*x + 1, y=>2*y*y)(2);
doubleDerive(x=>Math.sin(x), x=>Math.cos(x))(0);
