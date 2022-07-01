.class abstract Lccsancom/google/common/collect/Cut;
.super Ljava/lang/Object;
.source "Cut.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/common/collect/Cut$AboveValue;,
        Lccsancom/google/common/collect/Cut$BelowValue;,
        Lccsancom/google/common/collect/Cut$AboveAll;,
        Lccsancom/google/common/collect/Cut$BelowAll;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lccsancom/google/common/collect/Cut<",
        "TC;>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final endpoint:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Comparable;)V
    .locals 0
    .param p1    # Ljava/lang/Comparable;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .line 38
    .local p0, "this":Lccsancom/google/common/collect/Cut;, "Lccsancom/google/common/collect/Cut<TC;>;"
    .local p1, "endpoint":Ljava/lang/Comparable;, "TC;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lccsancom/google/common/collect/Cut;->endpoint:Ljava/lang/Comparable;

    .line 40
    return-void
.end method

.method static aboveAll()Lccsancom/google/common/collect/Cut;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lccsancom/google/common/collect/Cut<",
            "TC;>;"
        }
    .end annotation

    .line 215
    invoke-static {}, Lccsancom/google/common/collect/Cut$AboveAll;->access$100()Lccsancom/google/common/collect/Cut$AboveAll;

    move-result-object v0

    return-object v0
.end method

.method static aboveValue(Ljava/lang/Comparable;)Lccsancom/google/common/collect/Cut;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">(TC;)",
            "Lccsancom/google/common/collect/Cut<",
            "TC;>;"
        }
    .end annotation

    .line 383
    .local p0, "endpoint":Ljava/lang/Comparable;, "TC;"
    new-instance v0, Lccsancom/google/common/collect/Cut$AboveValue;

    invoke-direct {v0, p0}, Lccsancom/google/common/collect/Cut$AboveValue;-><init>(Ljava/lang/Comparable;)V

    return-object v0
.end method

.method static belowAll()Lccsancom/google/common/collect/Cut;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lccsancom/google/common/collect/Cut<",
            "TC;>;"
        }
    .end annotation

    .line 114
    invoke-static {}, Lccsancom/google/common/collect/Cut$BelowAll;->access$000()Lccsancom/google/common/collect/Cut$BelowAll;

    move-result-object v0

    return-object v0
.end method

.method static belowValue(Ljava/lang/Comparable;)Lccsancom/google/common/collect/Cut;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">(TC;)",
            "Lccsancom/google/common/collect/Cut<",
            "TC;>;"
        }
    .end annotation

    .line 300
    .local p0, "endpoint":Ljava/lang/Comparable;, "TC;"
    new-instance v0, Lccsancom/google/common/collect/Cut$BelowValue;

    invoke-direct {v0, p0}, Lccsancom/google/common/collect/Cut$BelowValue;-><init>(Ljava/lang/Comparable;)V

    return-object v0
.end method


# virtual methods
.method canonical(Lccsancom/google/common/collect/DiscreteDomain;)Lccsancom/google/common/collect/Cut;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/DiscreteDomain<",
            "TC;>;)",
            "Lccsancom/google/common/collect/Cut<",
            "TC;>;"
        }
    .end annotation

    .line 65
    .local p0, "this":Lccsancom/google/common/collect/Cut;, "Lccsancom/google/common/collect/Cut<TC;>;"
    .local p1, "domain":Lccsancom/google/common/collect/DiscreteDomain;, "Lccsancom/google/common/collect/DiscreteDomain<TC;>;"
    return-object p0
.end method

.method public compareTo(Lccsancom/google/common/collect/Cut;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/Cut<",
            "TC;>;)I"
        }
    .end annotation

    .line 71
    .local p0, "this":Lccsancom/google/common/collect/Cut;, "Lccsancom/google/common/collect/Cut<TC;>;"
    .local p1, "that":Lccsancom/google/common/collect/Cut;, "Lccsancom/google/common/collect/Cut<TC;>;"
    invoke-static {}, Lccsancom/google/common/collect/Cut;->belowAll()Lccsancom/google/common/collect/Cut;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 72
    const/4 v0, 0x1

    return v0

    .line 74
    :cond_0
    invoke-static {}, Lccsancom/google/common/collect/Cut;->aboveAll()Lccsancom/google/common/collect/Cut;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 75
    const/4 v0, -0x1

    return v0

    .line 77
    :cond_1
    iget-object v0, p0, Lccsancom/google/common/collect/Cut;->endpoint:Ljava/lang/Comparable;

    iget-object v1, p1, Lccsancom/google/common/collect/Cut;->endpoint:Ljava/lang/Comparable;

    invoke-static {v0, v1}, Lccsancom/google/common/collect/Range;->compareOrThrow(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 78
    .local v0, "result":I
    if-eqz v0, :cond_2

    .line 79
    return v0

    .line 82
    :cond_2
    instance-of v1, p0, Lccsancom/google/common/collect/Cut$AboveValue;

    instance-of v2, p1, Lccsancom/google/common/collect/Cut$AboveValue;

    invoke-static {v1, v2}, Lccsancom/google/common/primitives/Booleans;->compare(ZZ)I

    move-result v1

    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 34
    .local p0, "this":Lccsancom/google/common/collect/Cut;, "Lccsancom/google/common/collect/Cut<TC;>;"
    check-cast p1, Lccsancom/google/common/collect/Cut;

    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/Cut;->compareTo(Lccsancom/google/common/collect/Cut;)I

    move-result p1

    return p1
.end method

.method abstract describeAsLowerBound(Ljava/lang/StringBuilder;)V
.end method

.method abstract describeAsUpperBound(Ljava/lang/StringBuilder;)V
.end method

.method endpoint()Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .line 86
    .local p0, "this":Lccsancom/google/common/collect/Cut;, "Lccsancom/google/common/collect/Cut<TC;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Cut;->endpoint:Ljava/lang/Comparable;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 92
    .local p0, "this":Lccsancom/google/common/collect/Cut;, "Lccsancom/google/common/collect/Cut<TC;>;"
    instance-of v0, p1, Lccsancom/google/common/collect/Cut;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 94
    move-object v0, p1

    check-cast v0, Lccsancom/google/common/collect/Cut;

    .line 96
    .local v0, "that":Lccsancom/google/common/collect/Cut;, "Lccsancom/google/common/collect/Cut<TC;>;"
    :try_start_0
    invoke-virtual {p0, v0}, Lccsancom/google/common/collect/Cut;->compareTo(Lccsancom/google/common/collect/Cut;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .local v2, "compareResult":I
    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 98
    .end local v2    # "compareResult":I
    :catch_0
    move-exception v2

    .line 101
    .end local v0    # "that":Lccsancom/google/common/collect/Cut;, "Lccsancom/google/common/collect/Cut<TC;>;"
    :cond_1
    return v1
.end method

.method abstract greatestValueBelow(Lccsancom/google/common/collect/DiscreteDomain;)Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/DiscreteDomain<",
            "TC;>;)TC;"
        }
    .end annotation
.end method

.method public abstract hashCode()I
.end method

.method abstract isLessThan(Ljava/lang/Comparable;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation
.end method

.method abstract leastValueAbove(Lccsancom/google/common/collect/DiscreteDomain;)Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/DiscreteDomain<",
            "TC;>;)TC;"
        }
    .end annotation
.end method

.method abstract typeAsLowerBound()Lccsancom/google/common/collect/BoundType;
.end method

.method abstract typeAsUpperBound()Lccsancom/google/common/collect/BoundType;
.end method

.method abstract withLowerBoundType(Lccsancom/google/common/collect/BoundType;Lccsancom/google/common/collect/DiscreteDomain;)Lccsancom/google/common/collect/Cut;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/BoundType;",
            "Lccsancom/google/common/collect/DiscreteDomain<",
            "TC;>;)",
            "Lccsancom/google/common/collect/Cut<",
            "TC;>;"
        }
    .end annotation
.end method

.method abstract withUpperBoundType(Lccsancom/google/common/collect/BoundType;Lccsancom/google/common/collect/DiscreteDomain;)Lccsancom/google/common/collect/Cut;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/BoundType;",
            "Lccsancom/google/common/collect/DiscreteDomain<",
            "TC;>;)",
            "Lccsancom/google/common/collect/Cut<",
            "TC;>;"
        }
    .end annotation
.end method
