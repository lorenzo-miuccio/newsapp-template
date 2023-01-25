abstract class Either<L, R> {
  Either._();

  bool get isLeft => runtimeType == Left<L, R>;

  Left<L, R> castLeft() => this as Left<L, R>;

  Right<L, R> castRight() => this as Right<L, R>;

  void fold(void Function(L) l, void Function(R) r) => isLeft ? l(castLeft().value) : r(castRight().value);

  Either<L, T> mapBoth<T>(Either<L, T> Function(L) l, Either<L, T> Function(R) r) => isLeft ? l(castLeft().value) : r(castRight().value);

  /// Constructs a new [Either] from a function that might throw resulting in a [Future]
  static Future<Either<L, R>> tryCatchAsync<L, R, Err extends Object>(L Function(Err err) onError, Future<R> Function() fnR) async {
    try {
      final result = await fnR();
      return Right(result);
    } on Err catch (e) {
      return Left(onError(e));
    }
  }
}

class Left<L, R> extends Either<L, R> {
  final L value;

  Left(this.value) : super._();
}

class Right<L, R> extends Either<L, R> {
  final R value;

  Right(this.value) : super._();
}
