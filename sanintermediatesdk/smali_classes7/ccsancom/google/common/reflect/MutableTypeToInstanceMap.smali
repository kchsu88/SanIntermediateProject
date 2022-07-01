.class public final Lccsancom/google/common/reflect/MutableTypeToInstanceMap;
.super Lccsancom/google/common/collect/ForwardingMap;
.source "MutableTypeToInstanceMap.java"

# interfaces
.implements Lccsancom/google/common/reflect/TypeToInstanceMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/common/reflect/MutableTypeToInstanceMap$UnmodifiableEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/collect/ForwardingMap<",
        "Lccsancom/google/common/reflect/TypeToken<",
        "+TB;>;TB;>;",
        "Lccsancom/google/common/reflect/TypeToInstanceMap<",
        "TB;>;"
    }
.end annotation


# instance fields
.field private final backingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lccsancom/google/common/reflect/TypeToken<",
            "+TB;>;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    .local p0, "this":Lccsancom/google/common/reflect/MutableTypeToInstanceMap;, "Lccsancom/google/common/reflect/MutableTypeToInstanceMap<TB;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/ForwardingMap;-><init>()V

    .line 42
    invoke-static {}, Lccsancom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/common/reflect/MutableTypeToInstanceMap;->backingMap:Ljava/util/Map;

    return-void
.end method

.method private trustedGet(Lccsancom/google/common/reflect/TypeToken;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>(",
            "Lccsancom/google/common/reflect/TypeToken<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 114
    .local p0, "this":Lccsancom/google/common/reflect/MutableTypeToInstanceMap;, "Lccsancom/google/common/reflect/MutableTypeToInstanceMap<TB;>;"
    .local p1, "type":Lccsancom/google/common/reflect/TypeToken;, "Lccsancom/google/common/reflect/TypeToken<TT;>;"
    iget-object v0, p0, Lccsancom/google/common/reflect/MutableTypeToInstanceMap;->backingMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private trustedPut(Lccsancom/google/common/reflect/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>(",
            "Lccsancom/google/common/reflect/TypeToken<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 108
    .local p0, "this":Lccsancom/google/common/reflect/MutableTypeToInstanceMap;, "Lccsancom/google/common/reflect/MutableTypeToInstanceMap<TB;>;"
    .local p1, "type":Lccsancom/google/common/reflect/TypeToken;, "Lccsancom/google/common/reflect/TypeToken<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lccsancom/google/common/reflect/MutableTypeToInstanceMap;->backingMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 38
    .local p0, "this":Lccsancom/google/common/reflect/MutableTypeToInstanceMap;, "Lccsancom/google/common/reflect/MutableTypeToInstanceMap<TB;>;"
    invoke-virtual {p0}, Lccsancom/google/common/reflect/MutableTypeToInstanceMap;->delegate()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lccsancom/google/common/reflect/TypeToken<",
            "+TB;>;TB;>;"
        }
    .end annotation

    .line 102
    .local p0, "this":Lccsancom/google/common/reflect/MutableTypeToInstanceMap;, "Lccsancom/google/common/reflect/MutableTypeToInstanceMap<TB;>;"
    iget-object v0, p0, Lccsancom/google/common/reflect/MutableTypeToInstanceMap;->backingMap:Ljava/util/Map;

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Lccsancom/google/common/reflect/TypeToken<",
            "+TB;>;TB;>;>;"
        }
    .end annotation

    .line 97
    .local p0, "this":Lccsancom/google/common/reflect/MutableTypeToInstanceMap;, "Lccsancom/google/common/reflect/MutableTypeToInstanceMap<TB;>;"
    invoke-super {p0}, Lccsancom/google/common/collect/ForwardingMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/reflect/MutableTypeToInstanceMap$UnmodifiableEntry;->transformEntries(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getInstance(Lccsancom/google/common/reflect/TypeToken;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>(",
            "Lccsancom/google/common/reflect/TypeToken<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 53
    .local p0, "this":Lccsancom/google/common/reflect/MutableTypeToInstanceMap;, "Lccsancom/google/common/reflect/MutableTypeToInstanceMap<TB;>;"
    .local p1, "type":Lccsancom/google/common/reflect/TypeToken;, "Lccsancom/google/common/reflect/TypeToken<TT;>;"
    invoke-virtual {p1}, Lccsancom/google/common/reflect/TypeToken;->rejectTypeVariables()Lccsancom/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsancom/google/common/reflect/MutableTypeToInstanceMap;->trustedGet(Lccsancom/google/common/reflect/TypeToken;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 47
    .local p0, "this":Lccsancom/google/common/reflect/MutableTypeToInstanceMap;, "Lccsancom/google/common/reflect/MutableTypeToInstanceMap<TB;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lccsancom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lccsancom/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsancom/google/common/reflect/MutableTypeToInstanceMap;->trustedGet(Lccsancom/google/common/reflect/TypeToken;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Lccsancom/google/common/reflect/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/reflect/TypeToken<",
            "+TB;>;TB;)TB;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 80
    .local p0, "this":Lccsancom/google/common/reflect/MutableTypeToInstanceMap;, "Lccsancom/google/common/reflect/MutableTypeToInstanceMap<TB;>;"
    .local p1, "key":Lccsancom/google/common/reflect/TypeToken;, "Lccsancom/google/common/reflect/TypeToken<+TB;>;"
    .local p2, "value":Ljava/lang/Object;, "TB;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Please use putInstance() instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 38
    .local p0, "this":Lccsancom/google/common/reflect/MutableTypeToInstanceMap;, "Lccsancom/google/common/reflect/MutableTypeToInstanceMap<TB;>;"
    check-cast p1, Lccsancom/google/common/reflect/TypeToken;

    invoke-virtual {p0, p1, p2}, Lccsancom/google/common/reflect/MutableTypeToInstanceMap;->put(Lccsancom/google/common/reflect/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Lccsancom/google/common/reflect/TypeToken<",
            "+TB;>;+TB;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 92
    .local p0, "this":Lccsancom/google/common/reflect/MutableTypeToInstanceMap;, "Lccsancom/google/common/reflect/MutableTypeToInstanceMap<TB;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+Lccsancom/google/common/reflect/TypeToken<+TB;>;+TB;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Please use putInstance() instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public putInstance(Lccsancom/google/common/reflect/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>(",
            "Lccsancom/google/common/reflect/TypeToken<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 67
    .local p0, "this":Lccsancom/google/common/reflect/MutableTypeToInstanceMap;, "Lccsancom/google/common/reflect/MutableTypeToInstanceMap<TB;>;"
    .local p1, "type":Lccsancom/google/common/reflect/TypeToken;, "Lccsancom/google/common/reflect/TypeToken<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Lccsancom/google/common/reflect/TypeToken;->rejectTypeVariables()Lccsancom/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lccsancom/google/common/reflect/MutableTypeToInstanceMap;->trustedPut(Lccsancom/google/common/reflect/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putInstance(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 60
    .local p0, "this":Lccsancom/google/common/reflect/MutableTypeToInstanceMap;, "Lccsancom/google/common/reflect/MutableTypeToInstanceMap<TB;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Lccsancom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lccsancom/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lccsancom/google/common/reflect/MutableTypeToInstanceMap;->trustedPut(Lccsancom/google/common/reflect/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
