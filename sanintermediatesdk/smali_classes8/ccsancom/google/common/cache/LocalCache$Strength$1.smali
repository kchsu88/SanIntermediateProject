.class final enum Lccsancom/google/common/cache/LocalCache$Strength$1;
.super Lccsancom/google/common/cache/LocalCache$Strength;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/cache/LocalCache$Strength;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 378
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lccsancom/google/common/cache/LocalCache$Strength;-><init>(Ljava/lang/String;ILccsancom/google/common/cache/LocalCache$1;)V

    return-void
.end method


# virtual methods
.method defaultEquivalence()Lccsancom/google/common/base/Equivalence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 389
    invoke-static {}, Lccsancom/google/common/base/Equivalence;->equals()Lccsancom/google/common/base/Equivalence;

    move-result-object v0

    return-object v0
.end method

.method referenceValue(Lccsancom/google/common/cache/LocalCache$Segment;Lccsancom/google/common/cache/ReferenceEntry;Ljava/lang/Object;I)Lccsancom/google/common/cache/LocalCache$ValueReference;
    .locals 1
    .param p4, "weight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/cache/LocalCache$Segment<",
            "TK;TV;>;",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;TV;I)",
            "Lccsancom/google/common/cache/LocalCache$ValueReference<",
            "TK;TV;>;"
        }
    .end annotation

    .line 382
    .local p1, "segment":Lccsancom/google/common/cache/LocalCache$Segment;, "Lccsancom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p2, "entry":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    new-instance v0, Lccsancom/google/common/cache/LocalCache$StrongValueReference;

    invoke-direct {v0, p3}, Lccsancom/google/common/cache/LocalCache$StrongValueReference;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lccsancom/google/common/cache/LocalCache$WeightedStrongValueReference;

    invoke-direct {v0, p3, p4}, Lccsancom/google/common/cache/LocalCache$WeightedStrongValueReference;-><init>(Ljava/lang/Object;I)V

    :goto_0
    return-object v0
.end method
