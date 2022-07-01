.class final Lccsancom/google/common/collect/MapMakerInternalMap$1;
.super Ljava/lang/Object;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Lccsancom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1007
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .line 1014
    return-void
.end method

.method public copyFor(Ljava/lang/ref/ReferenceQueue;Lccsancom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference;
    .locals 0
    .param p2, "entry"    # Lccsancom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;",
            "Lccsancom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;",
            ")",
            "Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lccsancom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;",
            ">;"
        }
    .end annotation

    .line 1024
    .local p1, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<Ljava/lang/Object;>;"
    return-object p0
.end method

.method public bridge synthetic copyFor(Ljava/lang/ref/ReferenceQueue;Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference;
    .locals 0

    .line 1007
    check-cast p2, Lccsancom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;

    invoke-virtual {p0, p1, p2}, Lccsancom/google/common/collect/MapMakerInternalMap$1;->copyFor(Ljava/lang/ref/ReferenceQueue;Lccsancom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference;

    move-result-object p1

    return-object p1
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    .line 1018
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEntry()Lccsancom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;
    .locals 1

    .line 1010
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getEntry()Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 1

    .line 1007
    invoke-virtual {p0}, Lccsancom/google/common/collect/MapMakerInternalMap$1;->getEntry()Lccsancom/google/common/collect/MapMakerInternalMap$DummyInternalEntry;

    move-result-object v0

    return-object v0
.end method
