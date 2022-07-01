.class public final Lccsankotlin/jvm/internal/ArrayIteratorsKt;
.super Ljava/lang/Object;
.source "ArrayIterators.kt"


# annotations
.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000F\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0019\n\u0002\u0018\u0002\n\u0002\u0010\u0013\n\u0002\u0018\u0002\n\u0002\u0010\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0015\n\u0002\u0018\u0002\n\u0002\u0010\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0017\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u000e\u0010\u0000\u001a\u00020\u00042\u0006\u0010\u0002\u001a\u00020\u0005\u001a\u000e\u0010\u0000\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u0007\u001a\u000e\u0010\u0000\u001a\u00020\u00082\u0006\u0010\u0002\u001a\u00020\t\u001a\u000e\u0010\u0000\u001a\u00020\n2\u0006\u0010\u0002\u001a\u00020\u000b\u001a\u000e\u0010\u0000\u001a\u00020\u000c2\u0006\u0010\u0002\u001a\u00020\r\u001a\u000e\u0010\u0000\u001a\u00020\u000e2\u0006\u0010\u0002\u001a\u00020\u000f\u001a\u000e\u0010\u0000\u001a\u00020\u00102\u0006\u0010\u0002\u001a\u00020\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "iterator",
        "Lccsankotlin/collections/BooleanIterator;",
        "array",
        "",
        "Lccsankotlin/collections/ByteIterator;",
        "",
        "Lccsankotlin/collections/CharIterator;",
        "",
        "Lccsankotlin/collections/DoubleIterator;",
        "",
        "Lccsankotlin/collections/FloatIterator;",
        "",
        "Lccsankotlin/collections/IntIterator;",
        "",
        "Lccsankotlin/collections/LongIterator;",
        "",
        "Lccsankotlin/collections/ShortIterator;",
        "",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# direct methods
.method public static final iterator([Z)Lccsankotlin/collections/BooleanIterator;
    .locals 1
    .param p0, "array"    # [Z

    const-string v0, "array"

    invoke-static {p0, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    new-instance v0, Lccsankotlin/jvm/internal/ArrayBooleanIterator;

    invoke-direct {v0, p0}, Lccsankotlin/jvm/internal/ArrayBooleanIterator;-><init>([Z)V

    check-cast v0, Lccsankotlin/collections/BooleanIterator;

    return-object v0
.end method

.method public static final iterator([B)Lccsankotlin/collections/ByteIterator;
    .locals 1
    .param p0, "array"    # [B

    const-string v0, "array"

    invoke-static {p0, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    new-instance v0, Lccsankotlin/jvm/internal/ArrayByteIterator;

    invoke-direct {v0, p0}, Lccsankotlin/jvm/internal/ArrayByteIterator;-><init>([B)V

    check-cast v0, Lccsankotlin/collections/ByteIterator;

    return-object v0
.end method

.method public static final iterator([C)Lccsankotlin/collections/CharIterator;
    .locals 1
    .param p0, "array"    # [C

    const-string v0, "array"

    invoke-static {p0, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    new-instance v0, Lccsankotlin/jvm/internal/ArrayCharIterator;

    invoke-direct {v0, p0}, Lccsankotlin/jvm/internal/ArrayCharIterator;-><init>([C)V

    check-cast v0, Lccsankotlin/collections/CharIterator;

    return-object v0
.end method

.method public static final iterator([D)Lccsankotlin/collections/DoubleIterator;
    .locals 1
    .param p0, "array"    # [D

    const-string v0, "array"

    invoke-static {p0, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    new-instance v0, Lccsankotlin/jvm/internal/ArrayDoubleIterator;

    invoke-direct {v0, p0}, Lccsankotlin/jvm/internal/ArrayDoubleIterator;-><init>([D)V

    check-cast v0, Lccsankotlin/collections/DoubleIterator;

    return-object v0
.end method

.method public static final iterator([F)Lccsankotlin/collections/FloatIterator;
    .locals 1
    .param p0, "array"    # [F

    const-string v0, "array"

    invoke-static {p0, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    new-instance v0, Lccsankotlin/jvm/internal/ArrayFloatIterator;

    invoke-direct {v0, p0}, Lccsankotlin/jvm/internal/ArrayFloatIterator;-><init>([F)V

    check-cast v0, Lccsankotlin/collections/FloatIterator;

    return-object v0
.end method

.method public static final iterator([I)Lccsankotlin/collections/IntIterator;
    .locals 1
    .param p0, "array"    # [I

    const-string v0, "array"

    invoke-static {p0, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    new-instance v0, Lccsankotlin/jvm/internal/ArrayIntIterator;

    invoke-direct {v0, p0}, Lccsankotlin/jvm/internal/ArrayIntIterator;-><init>([I)V

    check-cast v0, Lccsankotlin/collections/IntIterator;

    return-object v0
.end method

.method public static final iterator([J)Lccsankotlin/collections/LongIterator;
    .locals 1
    .param p0, "array"    # [J

    const-string v0, "array"

    invoke-static {p0, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    new-instance v0, Lccsankotlin/jvm/internal/ArrayLongIterator;

    invoke-direct {v0, p0}, Lccsankotlin/jvm/internal/ArrayLongIterator;-><init>([J)V

    check-cast v0, Lccsankotlin/collections/LongIterator;

    return-object v0
.end method

.method public static final iterator([S)Lccsankotlin/collections/ShortIterator;
    .locals 1
    .param p0, "array"    # [S

    const-string v0, "array"

    invoke-static {p0, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    new-instance v0, Lccsankotlin/jvm/internal/ArrayShortIterator;

    invoke-direct {v0, p0}, Lccsankotlin/jvm/internal/ArrayShortIterator;-><init>([S)V

    check-cast v0, Lccsankotlin/collections/ShortIterator;

    return-object v0
.end method
