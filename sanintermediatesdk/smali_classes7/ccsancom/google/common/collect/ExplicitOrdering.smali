.class final Lccsancom/google/common/collect/ExplicitOrdering;
.super Lccsancom/google/common/collect/Ordering;
.source "ExplicitOrdering.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/collect/Ordering<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final rankMap:Lccsancom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/ImmutableMap<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/ImmutableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/ImmutableMap<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 33
    .local p0, "this":Lccsancom/google/common/collect/ExplicitOrdering;, "Lccsancom/google/common/collect/ExplicitOrdering<TT;>;"
    .local p1, "rankMap":Lccsancom/google/common/collect/ImmutableMap;, "Lccsancom/google/common/collect/ImmutableMap<TT;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/Ordering;-><init>()V

    .line 34
    iput-object p1, p0, Lccsancom/google/common/collect/ExplicitOrdering;->rankMap:Lccsancom/google/common/collect/ImmutableMap;

    .line 35
    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 30
    .local p0, "this":Lccsancom/google/common/collect/ExplicitOrdering;, "Lccsancom/google/common/collect/ExplicitOrdering<TT;>;"
    .local p1, "valuesInOrder":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {p1}, Lccsancom/google/common/collect/Maps;->indexMap(Ljava/util/Collection;)Lccsancom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsancom/google/common/collect/ExplicitOrdering;-><init>(Lccsancom/google/common/collect/ImmutableMap;)V

    .line 31
    return-void
.end method

.method private rank(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 43
    .local p0, "this":Lccsancom/google/common/collect/ExplicitOrdering;, "Lccsancom/google/common/collect/ExplicitOrdering<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lccsancom/google/common/collect/ExplicitOrdering;->rankMap:Lccsancom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lccsancom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 44
    .local v0, "rank":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 45
    :cond_0
    new-instance v1, Lccsancom/google/common/collect/Ordering$IncomparableValueException;

    invoke-direct {v1, p1}, Lccsancom/google/common/collect/Ordering$IncomparableValueException;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 39
    .local p0, "this":Lccsancom/google/common/collect/ExplicitOrdering;, "Lccsancom/google/common/collect/ExplicitOrdering<TT;>;"
    .local p1, "left":Ljava/lang/Object;, "TT;"
    .local p2, "right":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Lccsancom/google/common/collect/ExplicitOrdering;->rank(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p2}, Lccsancom/google/common/collect/ExplicitOrdering;->rank(Ljava/lang/Object;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 52
    .local p0, "this":Lccsancom/google/common/collect/ExplicitOrdering;, "Lccsancom/google/common/collect/ExplicitOrdering<TT;>;"
    instance-of v0, p1, Lccsancom/google/common/collect/ExplicitOrdering;

    if-eqz v0, :cond_0

    .line 53
    move-object v0, p1

    check-cast v0, Lccsancom/google/common/collect/ExplicitOrdering;

    .line 54
    .local v0, "that":Lccsancom/google/common/collect/ExplicitOrdering;, "Lccsancom/google/common/collect/ExplicitOrdering<*>;"
    iget-object v1, p0, Lccsancom/google/common/collect/ExplicitOrdering;->rankMap:Lccsancom/google/common/collect/ImmutableMap;

    iget-object v2, v0, Lccsancom/google/common/collect/ExplicitOrdering;->rankMap:Lccsancom/google/common/collect/ImmutableMap;

    invoke-virtual {v1, v2}, Lccsancom/google/common/collect/ImmutableMap;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 56
    .end local v0    # "that":Lccsancom/google/common/collect/ExplicitOrdering;, "Lccsancom/google/common/collect/ExplicitOrdering<*>;"
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 61
    .local p0, "this":Lccsancom/google/common/collect/ExplicitOrdering;, "Lccsancom/google/common/collect/ExplicitOrdering<TT;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/ExplicitOrdering;->rankMap:Lccsancom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 66
    .local p0, "this":Lccsancom/google/common/collect/ExplicitOrdering;, "Lccsancom/google/common/collect/ExplicitOrdering<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ordering.explicit("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/google/common/collect/ExplicitOrdering;->rankMap:Lccsancom/google/common/collect/ImmutableMap;

    invoke-virtual {v1}, Lccsancom/google/common/collect/ImmutableMap;->keySet()Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
