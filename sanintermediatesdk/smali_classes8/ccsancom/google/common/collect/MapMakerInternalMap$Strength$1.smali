.class final enum Lccsancom/google/common/collect/MapMakerInternalMap$Strength$1;
.super Lccsancom/google/common/collect/MapMakerInternalMap$Strength;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/MapMakerInternalMap$Strength;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 246
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lccsancom/google/common/collect/MapMakerInternalMap$Strength;-><init>(Ljava/lang/String;ILccsancom/google/common/collect/MapMakerInternalMap$1;)V

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

    .line 249
    invoke-static {}, Lccsancom/google/common/base/Equivalence;->equals()Lccsancom/google/common/base/Equivalence;

    move-result-object v0

    return-object v0
.end method
