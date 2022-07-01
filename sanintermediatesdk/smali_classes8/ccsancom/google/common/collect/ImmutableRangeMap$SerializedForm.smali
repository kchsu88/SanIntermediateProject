.class Lccsancom/google/common/collect/ImmutableRangeMap$SerializedForm;
.super Ljava/lang/Object;
.source "ImmutableRangeMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/ImmutableRangeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializedForm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/lang/Comparable<",
        "*>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final mapOfRanges:Lccsancom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/ImmutableMap<",
            "Lccsancom/google/common/collect/Range<",
            "TK;>;TV;>;"
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
            "Lccsancom/google/common/collect/Range<",
            "TK;>;TV;>;)V"
        }
    .end annotation

    .line 363
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeMap$SerializedForm;, "Lccsancom/google/common/collect/ImmutableRangeMap$SerializedForm<TK;TV;>;"
    .local p1, "mapOfRanges":Lccsancom/google/common/collect/ImmutableMap;, "Lccsancom/google/common/collect/ImmutableMap<Lccsancom/google/common/collect/Range<TK;>;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    iput-object p1, p0, Lccsancom/google/common/collect/ImmutableRangeMap$SerializedForm;->mapOfRanges:Lccsancom/google/common/collect/ImmutableMap;

    .line 365
    return-void
.end method


# virtual methods
.method createRangeMap()Ljava/lang/Object;
    .locals 5

    .line 376
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeMap$SerializedForm;, "Lccsancom/google/common/collect/ImmutableRangeMap$SerializedForm<TK;TV;>;"
    new-instance v0, Lccsancom/google/common/collect/ImmutableRangeMap$Builder;

    invoke-direct {v0}, Lccsancom/google/common/collect/ImmutableRangeMap$Builder;-><init>()V

    .line 377
    .local v0, "builder":Lccsancom/google/common/collect/ImmutableRangeMap$Builder;, "Lccsancom/google/common/collect/ImmutableRangeMap$Builder<TK;TV;>;"
    iget-object v1, p0, Lccsancom/google/common/collect/ImmutableRangeMap$SerializedForm;->mapOfRanges:Lccsancom/google/common/collect/ImmutableMap;

    invoke-virtual {v1}, Lccsancom/google/common/collect/ImmutableMap;->entrySet()Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/google/common/collect/ImmutableSet;->iterator()Lccsancom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 378
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lccsancom/google/common/collect/Range<TK;>;TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/google/common/collect/Range;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lccsancom/google/common/collect/ImmutableRangeMap$Builder;->put(Lccsancom/google/common/collect/Range;Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableRangeMap$Builder;

    .line 379
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lccsancom/google/common/collect/Range<TK;>;TV;>;"
    goto :goto_0

    .line 380
    :cond_0
    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableRangeMap$Builder;->build()Lccsancom/google/common/collect/ImmutableRangeMap;

    move-result-object v1

    return-object v1
.end method

.method readResolve()Ljava/lang/Object;
    .locals 1

    .line 368
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeMap$SerializedForm;, "Lccsancom/google/common/collect/ImmutableRangeMap$SerializedForm<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableRangeMap$SerializedForm;->mapOfRanges:Lccsancom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    invoke-static {}, Lccsancom/google/common/collect/ImmutableRangeMap;->of()Lccsancom/google/common/collect/ImmutableRangeMap;

    move-result-object v0

    return-object v0

    .line 371
    :cond_0
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableRangeMap$SerializedForm;->createRangeMap()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
