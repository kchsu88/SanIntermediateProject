.class Lccsancom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;
.super Lccsancom/google/common/collect/UnmodifiableIterator;
.source "ImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;->entryIterator()Lccsancom/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/UnmodifiableIterator<",
        "Ljava/util/Map$Entry<",
        "TK;",
        "Lccsancom/google/common/collect/ImmutableSet<",
        "TV;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lccsancom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;

.field final synthetic val$backingIterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;Ljava/util/Iterator;)V
    .locals 0
    .param p1, "this$1"    # Lccsancom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;

    .line 657
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;, "Lccsancom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;"
    iput-object p1, p0, Lccsancom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;->this$1:Lccsancom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;

    iput-object p2, p0, Lccsancom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;->val$backingIterator:Ljava/util/Iterator;

    invoke-direct {p0}, Lccsancom/google/common/collect/UnmodifiableIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 660
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;, "Lccsancom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;->val$backingIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 657
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;, "Lccsancom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Lccsancom/google/common/collect/ImmutableSet<",
            "TV;>;>;"
        }
    .end annotation

    .line 665
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;, "Lccsancom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;->val$backingIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 666
    .local v0, "backingEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    new-instance v1, Lccsancom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1$1;

    invoke-direct {v1, p0, v0}, Lccsancom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1$1;-><init>(Lccsancom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;Ljava/util/Map$Entry;)V

    return-object v1
.end method
