.class final Lccsancom/google/common/cache/LocalCache$WeightedWeakValueReference;
.super Lccsancom/google/common/cache/LocalCache$WeakValueReference;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WeightedWeakValueReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/cache/LocalCache$WeakValueReference<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final weight:I


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lccsancom/google/common/cache/ReferenceEntry;I)V
    .locals 0
    .param p4, "weight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;TV;",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;I)V"
        }
    .end annotation

    .line 1587
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$WeightedWeakValueReference;, "Lccsancom/google/common/cache/LocalCache$WeightedWeakValueReference<TK;TV;>;"
    .local p1, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TV;>;"
    .local p2, "referent":Ljava/lang/Object;, "TV;"
    .local p3, "entry":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3}, Lccsancom/google/common/cache/LocalCache$WeakValueReference;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lccsancom/google/common/cache/ReferenceEntry;)V

    .line 1588
    iput p4, p0, Lccsancom/google/common/cache/LocalCache$WeightedWeakValueReference;->weight:I

    .line 1589
    return-void
.end method


# virtual methods
.method public copyFor(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lccsancom/google/common/cache/ReferenceEntry;)Lccsancom/google/common/cache/LocalCache$ValueReference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;TV;",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)",
            "Lccsancom/google/common/cache/LocalCache$ValueReference<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1599
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$WeightedWeakValueReference;, "Lccsancom/google/common/cache/LocalCache$WeightedWeakValueReference<TK;TV;>;"
    .local p1, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "entry":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    new-instance v0, Lccsancom/google/common/cache/LocalCache$WeightedWeakValueReference;

    iget v1, p0, Lccsancom/google/common/cache/LocalCache$WeightedWeakValueReference;->weight:I

    invoke-direct {v0, p1, p2, p3, v1}, Lccsancom/google/common/cache/LocalCache$WeightedWeakValueReference;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lccsancom/google/common/cache/ReferenceEntry;I)V

    return-object v0
.end method

.method public getWeight()I
    .locals 1

    .line 1593
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$WeightedWeakValueReference;, "Lccsancom/google/common/cache/LocalCache$WeightedWeakValueReference<TK;TV;>;"
    iget v0, p0, Lccsancom/google/common/cache/LocalCache$WeightedWeakValueReference;->weight:I

    return v0
.end method
