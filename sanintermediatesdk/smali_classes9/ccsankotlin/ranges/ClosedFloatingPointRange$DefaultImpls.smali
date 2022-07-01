.class public final Lccsankotlin/ranges/ClosedFloatingPointRange$DefaultImpls;
.super Ljava/lang/Object;
.source "Ranges.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsankotlin/ranges/ClosedFloatingPointRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# direct methods
.method public static contains(Lccsankotlin/ranges/ClosedFloatingPointRange;Ljava/lang/Comparable;)Z
    .locals 1
    .param p0, "$this"    # Lccsankotlin/ranges/ClosedFloatingPointRange;
    .param p1, "value"    # Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>(",
            "Lccsankotlin/ranges/ClosedFloatingPointRange<",
            "TT;>;TT;)Z"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-interface {p0}, Lccsankotlin/ranges/ClosedFloatingPointRange;->getStart()Ljava/lang/Comparable;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Lccsankotlin/ranges/ClosedFloatingPointRange;->lessThanOrEquals(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lccsankotlin/ranges/ClosedFloatingPointRange;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lccsankotlin/ranges/ClosedFloatingPointRange;->lessThanOrEquals(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isEmpty(Lccsankotlin/ranges/ClosedFloatingPointRange;)Z
    .locals 2
    .param p0, "$this"    # Lccsankotlin/ranges/ClosedFloatingPointRange;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>(",
            "Lccsankotlin/ranges/ClosedFloatingPointRange<",
            "TT;>;)Z"
        }
    .end annotation

    .line 50
    invoke-interface {p0}, Lccsankotlin/ranges/ClosedFloatingPointRange;->getStart()Ljava/lang/Comparable;

    move-result-object v0

    invoke-interface {p0}, Lccsankotlin/ranges/ClosedFloatingPointRange;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lccsankotlin/ranges/ClosedFloatingPointRange;->lessThanOrEquals(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
