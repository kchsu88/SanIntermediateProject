.class Lccsankotlin/sequences/SequencesKt___SequencesJvmKt;
.super Lccsankotlin/sequences/SequencesKt__SequencesKt;
.source "_SequencesJvm.kt"


# annotations
.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000D\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u001f\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a(\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0006\u0012\u0002\u0008\u00030\u00012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0004\u001aA\u0010\u0005\u001a\u0002H\u0006\"\u0010\u0008\u0000\u0010\u0006*\n\u0012\u0006\u0008\u0000\u0012\u0002H\u00020\u0007\"\u0004\u0008\u0001\u0010\u0002*\u0006\u0012\u0002\u0008\u00030\u00012\u0006\u0010\u0008\u001a\u0002H\u00062\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0004\u00a2\u0006\u0002\u0010\t\u001a5\u0010\n\u001a\u00020\u000b\"\u0004\u0008\u0000\u0010\u000c*\u0008\u0012\u0004\u0012\u0002H\u000c0\u00012\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u0002H\u000c\u0012\u0004\u0012\u00020\u000b0\u000eH\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0008\u000f\u001a5\u0010\n\u001a\u00020\u0010\"\u0004\u0008\u0000\u0010\u000c*\u0008\u0012\u0004\u0012\u0002H\u000c0\u00012\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u0002H\u000c\u0012\u0004\u0012\u00020\u00100\u000eH\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0008\u0011\u001a&\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u0002H\u000c0\u0013\"\u000e\u0008\u0000\u0010\u000c*\u0008\u0012\u0004\u0012\u0002H\u000c0\u0014*\u0008\u0012\u0004\u0012\u0002H\u000c0\u0001\u001a8\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u0002H\u000c0\u0013\"\u0004\u0008\u0000\u0010\u000c*\u0008\u0012\u0004\u0012\u0002H\u000c0\u00012\u001a\u0010\u0015\u001a\u0016\u0012\u0006\u0008\u0000\u0012\u0002H\u000c0\u0016j\n\u0012\u0006\u0008\u0000\u0012\u0002H\u000c`\u0017\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u0018"
    }
    d2 = {
        "filterIsInstance",
        "Lccsankotlin/sequences/Sequence;",
        "R",
        "klass",
        "Ljava/lang/Class;",
        "filterIsInstanceTo",
        "C",
        "",
        "destination",
        "(Lccsankotlin/sequences/Sequence;Ljava/util/Collection;Ljava/lang/Class;)Ljava/util/Collection;",
        "sumOf",
        "Ljava/math/BigDecimal;",
        "T",
        "selector",
        "Lccsankotlin/Function1;",
        "sumOfBigDecimal",
        "Ljava/math/BigInteger;",
        "sumOfBigInteger",
        "toSortedSet",
        "Ljava/util/SortedSet;",
        "",
        "comparator",
        "Ljava/util/Comparator;",
        "Lccsankotlin/Comparator;",
        "kotlin-stdlib"
    }
    k = 0x5
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x1
    xs = "kotlin/sequences/SequencesKt"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lccsankotlin/sequences/SequencesKt__SequencesKt;-><init>()V

    return-void
.end method

.method public static final filterIsInstance(Lccsankotlin/sequences/Sequence;Ljava/lang/Class;)Lccsankotlin/sequences/Sequence;
    .locals 2
    .param p0, "$this$filterIsInstance"    # Lccsankotlin/sequences/Sequence;
    .param p1, "klass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsankotlin/sequences/Sequence<",
            "*>;",
            "Ljava/lang/Class<",
            "TR;>;)",
            "Lccsankotlin/sequences/Sequence<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "$this$filterIsInstance"

    invoke-static {p0, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "klass"

    invoke-static {p1, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    nop

    .line 26
    new-instance v0, Lccsankotlin/sequences/SequencesKt___SequencesJvmKt$filterIsInstance$1;

    invoke-direct {v0, p1}, Lccsankotlin/sequences/SequencesKt___SequencesJvmKt$filterIsInstance$1;-><init>(Ljava/lang/Class;)V

    check-cast v0, Lccsankotlin/jvm/functions/Function1;

    invoke-static {p0, v0}, Lccsankotlin/sequences/SequencesKt;->filter(Lccsankotlin/sequences/Sequence;Lccsankotlin/jvm/functions/Function1;)Lccsankotlin/sequences/Sequence;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlin.sequences.Sequence<R>"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final filterIsInstanceTo(Lccsankotlin/sequences/Sequence;Ljava/util/Collection;Ljava/lang/Class;)Ljava/util/Collection;
    .locals 3
    .param p0, "$this$filterIsInstanceTo"    # Lccsankotlin/sequences/Sequence;
    .param p1, "destination"    # Ljava/util/Collection;
    .param p2, "klass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/util/Collection<",
            "-TR;>;R:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsankotlin/sequences/Sequence<",
            "*>;TC;",
            "Ljava/lang/Class<",
            "TR;>;)TC;"
        }
    .end annotation

    const-string v0, "$this$filterIsInstanceTo"

    invoke-static {p0, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p1, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "klass"

    invoke-static {p2, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    nop

    .line 38
    invoke-interface {p0}, Lccsankotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .local v1, "element":Ljava/lang/Object;
    invoke-virtual {p2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 39
    .end local v1    # "element":Ljava/lang/Object;
    :cond_1
    return-object p1
.end method

.method private static final sumOfBigDecimal(Lccsankotlin/sequences/Sequence;Lccsankotlin/jvm/functions/Function1;)Ljava/math/BigDecimal;
    .locals 6
    .param p0, "$this$sumOf"    # Lccsankotlin/sequences/Sequence;
    .param p1, "selector"    # Lccsankotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsankotlin/sequences/Sequence<",
            "+TT;>;",
            "Lccsankotlin/jvm/functions/Function1<",
            "-TT;+",
            "Ljava/math/BigDecimal;",
            ">;)",
            "Ljava/math/BigDecimal;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 73
    .local v0, "$i$f$sumOfBigDecimal":I
    const/4 v1, 0x0

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    const-string v2, "BigDecimal.valueOf(this.toLong())"

    invoke-static {v1, v2}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .local v1, "sum":Ljava/math/BigDecimal;
    invoke-interface {p0}, Lccsankotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 75
    .local v3, "element":Ljava/lang/Object;
    invoke-interface {p1, v3}, Lccsankotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/math/BigDecimal;

    invoke-virtual {v1, v4}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v4

    const-string v5, "this.add(other)"

    invoke-static {v4, v5}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v4

    .line 74
    .end local v3    # "element":Ljava/lang/Object;
    goto :goto_0

    .line 77
    :cond_0
    return-object v1
.end method

.method private static final sumOfBigInteger(Lccsankotlin/sequences/Sequence;Lccsankotlin/jvm/functions/Function1;)Ljava/math/BigInteger;
    .locals 6
    .param p0, "$this$sumOf"    # Lccsankotlin/sequences/Sequence;
    .param p1, "selector"    # Lccsankotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsankotlin/sequences/Sequence<",
            "+TT;>;",
            "Lccsankotlin/jvm/functions/Function1<",
            "-TT;+",
            "Ljava/math/BigInteger;",
            ">;)",
            "Ljava/math/BigInteger;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 91
    .local v0, "$i$f$sumOfBigInteger":I
    const/4 v1, 0x0

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    const-string v2, "BigInteger.valueOf(this.toLong())"

    invoke-static {v1, v2}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .local v1, "sum":Ljava/math/BigInteger;
    invoke-interface {p0}, Lccsankotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 93
    .local v3, "element":Ljava/lang/Object;
    invoke-interface {p1, v3}, Lccsankotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/math/BigInteger;

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    const-string v5, "this.add(other)"

    invoke-static {v4, v5}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v4

    .line 92
    .end local v3    # "element":Ljava/lang/Object;
    goto :goto_0

    .line 95
    :cond_0
    return-object v1
.end method

.method public static final toSortedSet(Lccsankotlin/sequences/Sequence;)Ljava/util/SortedSet;
    .locals 1
    .param p0, "$this$toSortedSet"    # Lccsankotlin/sequences/Sequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>(",
            "Lccsankotlin/sequences/Sequence<",
            "+TT;>;)",
            "Ljava/util/SortedSet<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "$this$toSortedSet"

    invoke-static {p0, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    check-cast v0, Ljava/util/Collection;

    invoke-static {p0, v0}, Lccsankotlin/sequences/SequencesKt;->toCollection(Lccsankotlin/sequences/Sequence;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method

.method public static final toSortedSet(Lccsankotlin/sequences/Sequence;Ljava/util/Comparator;)Ljava/util/SortedSet;
    .locals 1
    .param p0, "$this$toSortedSet"    # Lccsankotlin/sequences/Sequence;
    .param p1, "comparator"    # Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsankotlin/sequences/Sequence<",
            "+TT;>;",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Ljava/util/SortedSet<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "$this$toSortedSet"

    invoke-static {p0, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "comparator"

    invoke-static {p1, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0, p1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    check-cast v0, Ljava/util/Collection;

    invoke-static {p0, v0}, Lccsankotlin/sequences/SequencesKt;->toCollection(Lccsankotlin/sequences/Sequence;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method
