.class final Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;
.super Lccsancom/google/common/collect/MapMakerInternalMap$AbstractStrongKeyEntry;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lccsancom/google/common/collect/MapMakerInternalMap$StrongValueEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StrongKeyStrongValueEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/collect/MapMakerInternalMap$AbstractStrongKeyEntry<",
        "TK;TV;",
        "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<",
        "TK;TV;>;>;",
        "Lccsancom/google/common/collect/MapMakerInternalMap$StrongValueEntry<",
        "TK;TV;",
        "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private volatile value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;ILccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;)V
    .locals 1
    .param p2, "hash"    # I
    .param p3    # Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 396
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "next":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3}, Lccsancom/google/common/collect/MapMakerInternalMap$AbstractStrongKeyEntry;-><init>(Ljava/lang/Object;ILccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;)V

    .line 393
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;->value:Ljava/lang/Object;

    .line 397
    return-void
.end method


# virtual methods
.method copy(Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<",
            "TK;TV;>;)",
            "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 410
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<TK;TV;>;"
    .local p1, "newNext":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<TK;TV;>;"
    new-instance v0, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;

    iget-object v1, p0, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;->key:Ljava/lang/Object;

    iget v2, p0, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;->hash:I

    invoke-direct {v0, v1, v2, p1}, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;-><init>(Ljava/lang/Object;ILccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;)V

    .line 412
    .local v0, "newEntry":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<TK;TV;>;"
    iget-object v1, p0, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;->value:Ljava/lang/Object;

    iput-object v1, v0, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;->value:Ljava/lang/Object;

    .line 413
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 402
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method setValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 406
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;->value:Ljava/lang/Object;

    .line 407
    return-void
.end method
