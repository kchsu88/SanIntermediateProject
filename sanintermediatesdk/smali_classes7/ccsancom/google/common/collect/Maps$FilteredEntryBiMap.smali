.class final Lccsancom/google/common/collect/Maps$FilteredEntryBiMap;
.super Lccsancom/google/common/collect/Maps$FilteredEntryMap;
.source "Maps.java"

# interfaces
.implements Lccsancom/google/common/collect/BiMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FilteredEntryBiMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/collect/Maps$FilteredEntryMap<",
        "TK;TV;>;",
        "Lccsancom/google/common/collect/BiMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final inverse:Lccsancom/google/common/collect/BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/BiMap<",
            "TV;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/BiMap;Lccsancom/google/common/base/Predicate;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/BiMap<",
            "TK;TV;>;",
            "Lccsancom/google/common/base/Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 3062
    .local p0, "this":Lccsancom/google/common/collect/Maps$FilteredEntryBiMap;, "Lccsancom/google/common/collect/Maps$FilteredEntryBiMap<TK;TV;>;"
    .local p1, "delegate":Lccsancom/google/common/collect/BiMap;, "Lccsancom/google/common/collect/BiMap<TK;TV;>;"
    .local p2, "predicate":Lccsancom/google/common/base/Predicate;, "Lccsancom/google/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-direct {p0, p1, p2}, Lccsancom/google/common/collect/Maps$FilteredEntryMap;-><init>(Ljava/util/Map;Lccsancom/google/common/base/Predicate;)V

    .line 3063
    new-instance v0, Lccsancom/google/common/collect/Maps$FilteredEntryBiMap;

    .line 3064
    invoke-interface {p1}, Lccsancom/google/common/collect/BiMap;->inverse()Lccsancom/google/common/collect/BiMap;

    move-result-object v1

    invoke-static {p2}, Lccsancom/google/common/collect/Maps$FilteredEntryBiMap;->inversePredicate(Lccsancom/google/common/base/Predicate;)Lccsancom/google/common/base/Predicate;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lccsancom/google/common/collect/Maps$FilteredEntryBiMap;-><init>(Lccsancom/google/common/collect/BiMap;Lccsancom/google/common/base/Predicate;Lccsancom/google/common/collect/BiMap;)V

    iput-object v0, p0, Lccsancom/google/common/collect/Maps$FilteredEntryBiMap;->inverse:Lccsancom/google/common/collect/BiMap;

    .line 3065
    return-void
.end method

.method private constructor <init>(Lccsancom/google/common/collect/BiMap;Lccsancom/google/common/base/Predicate;Lccsancom/google/common/collect/BiMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/BiMap<",
            "TK;TV;>;",
            "Lccsancom/google/common/base/Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;",
            "Lccsancom/google/common/collect/BiMap<",
            "TV;TK;>;)V"
        }
    .end annotation

    .line 3069
    .local p0, "this":Lccsancom/google/common/collect/Maps$FilteredEntryBiMap;, "Lccsancom/google/common/collect/Maps$FilteredEntryBiMap<TK;TV;>;"
    .local p1, "delegate":Lccsancom/google/common/collect/BiMap;, "Lccsancom/google/common/collect/BiMap<TK;TV;>;"
    .local p2, "predicate":Lccsancom/google/common/base/Predicate;, "Lccsancom/google/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    .local p3, "inverse":Lccsancom/google/common/collect/BiMap;, "Lccsancom/google/common/collect/BiMap<TV;TK;>;"
    invoke-direct {p0, p1, p2}, Lccsancom/google/common/collect/Maps$FilteredEntryMap;-><init>(Ljava/util/Map;Lccsancom/google/common/base/Predicate;)V

    .line 3070
    iput-object p3, p0, Lccsancom/google/common/collect/Maps$FilteredEntryBiMap;->inverse:Lccsancom/google/common/collect/BiMap;

    .line 3071
    return-void
.end method

.method private static inversePredicate(Lccsancom/google/common/base/Predicate;)Lccsancom/google/common/base/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/base/Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Lccsancom/google/common/base/Predicate<",
            "Ljava/util/Map$Entry<",
            "TV;TK;>;>;"
        }
    .end annotation

    .line 3053
    .local p0, "forwardPredicate":Lccsancom/google/common/base/Predicate;, "Lccsancom/google/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v0, Lccsancom/google/common/collect/Maps$FilteredEntryBiMap$1;

    invoke-direct {v0, p0}, Lccsancom/google/common/collect/Maps$FilteredEntryBiMap$1;-><init>(Lccsancom/google/common/base/Predicate;)V

    return-object v0
.end method


# virtual methods
.method public forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 3079
    .local p0, "this":Lccsancom/google/common/collect/Maps$FilteredEntryBiMap;, "Lccsancom/google/common/collect/Maps$FilteredEntryBiMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, p2}, Lccsancom/google/common/collect/Maps$FilteredEntryBiMap;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lccsancom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 3080
    invoke-virtual {p0}, Lccsancom/google/common/collect/Maps$FilteredEntryBiMap;->unfiltered()Lccsancom/google/common/collect/BiMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lccsancom/google/common/collect/BiMap;->forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public inverse()Lccsancom/google/common/collect/BiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/BiMap<",
            "TV;TK;>;"
        }
    .end annotation

    .line 3085
    .local p0, "this":Lccsancom/google/common/collect/Maps$FilteredEntryBiMap;, "Lccsancom/google/common/collect/Maps$FilteredEntryBiMap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Maps$FilteredEntryBiMap;->inverse:Lccsancom/google/common/collect/BiMap;

    return-object v0
.end method

.method unfiltered()Lccsancom/google/common/collect/BiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/BiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3074
    .local p0, "this":Lccsancom/google/common/collect/Maps$FilteredEntryBiMap;, "Lccsancom/google/common/collect/Maps$FilteredEntryBiMap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Maps$FilteredEntryBiMap;->unfiltered:Ljava/util/Map;

    check-cast v0, Lccsancom/google/common/collect/BiMap;

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .line 3047
    .local p0, "this":Lccsancom/google/common/collect/Maps$FilteredEntryBiMap;, "Lccsancom/google/common/collect/Maps$FilteredEntryBiMap<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/Maps$FilteredEntryBiMap;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 3090
    .local p0, "this":Lccsancom/google/common/collect/Maps$FilteredEntryBiMap;, "Lccsancom/google/common/collect/Maps$FilteredEntryBiMap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Maps$FilteredEntryBiMap;->inverse:Lccsancom/google/common/collect/BiMap;

    invoke-interface {v0}, Lccsancom/google/common/collect/BiMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
