abstract class Either<L, R> {
  Either._();

  bool get isLeft => runtimeType == Left<L, R>;

  Left<L, R> castLeft() => this as Left<L, R>;

  Right<L, R> castRight() => this as Right<L, R>;

  void fold(void Function(L) l, void Function(R) r) => isLeft ? l(castLeft().value) : r(castRight().value);

  Either<L, T> mapBoth<T>(Either<L, T> Function(L) l, Either<L, T> Function(R) r) => isLeft ? l(castLeft().value) : r(castRight().value);
}

class Left<L, R> extends Either<L, R> {
  final L value;

  Left(this.value) : super._();
}

class Right<L, R> extends Either<L, R> {
  final R value;

  Right(this.value) : super._();
}
