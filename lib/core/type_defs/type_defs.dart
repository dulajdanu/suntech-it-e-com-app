import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:suntech_it_e_com_app/core/errors/failures/failure.dart';

typedef RvfUnit = Future<Unit>;
typedef RvfEither<T> = Future<Either<Failure, T>>;
typedef RvfEitherUnit = Future<Either<Failure, Unit>>;
typedef RvEither<R> = Either<Failure, R>;

typedef RvStream<T> = Stream<T>;
typedef Rvf<T> = Future<T>;
typedef RvfList<T> = Future<List<T>>;

typedef RvBuilder<S> = Widget Function(BuildContext context, S state);
typedef RvBuildWhen<S> = bool Function(S previous, S current);
