.class final Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReferenceImpl;
.super Ljava/lang/ref/WeakReference;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WeakValueReferenceImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "E::",
        "Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry<",
        "TK;TV;TE;>;>",
        "Ljava/lang/ref/WeakReference<",
        "TV;>;",
        "Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference<",
        "TK;TV;TE;>;"
    }
.end annotation


# instance fields
.field final entry:Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;TV;TE;)V"
        }
    .end annotation

    .line 1034
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReferenceImpl;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReferenceImpl<TK;TV;TE;>;"
    .local p1, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TV;>;"
    .local p2, "referent":Ljava/lang/Object;, "TV;"
    .local p3, "entry":Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    invoke-direct {p0, p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 1035
    iput-object p3, p0, Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReferenceImpl;->entry:Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;

    .line 1036
    return-void
.end method


# virtual methods
.method public copyFor(Ljava/lang/ref/ReferenceQueue;Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;TE;)",
            "Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference<",
            "TK;TV;TE;>;"
        }
    .end annotation

    .line 1045
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReferenceImpl;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReferenceImpl<TK;TV;TE;>;"
    .local p1, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TV;>;"
    .local p2, "entry":Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    new-instance v0, Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReferenceImpl;

    invoke-virtual {p0}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReferenceImpl;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReferenceImpl;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;)V

    return-object v0
.end method

.method public getEntry()Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1040
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReferenceImpl;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReferenceImpl<TK;TV;TE;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReferenceImpl;->entry:Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;

    return-object v0
.end method
