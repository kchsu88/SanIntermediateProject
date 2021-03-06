.class public final Lccsancom/google/common/collect/MutableClassToInstanceMap;
.super Lccsancom/google/common/collect/ForwardingMap;
.source "MutableClassToInstanceMap.java"

# interfaces
.implements Lccsancom/google/common/collect/ClassToInstanceMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/common/collect/MutableClassToInstanceMap$SerializedForm;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/collect/ForwardingMap<",
        "Ljava/lang/Class<",
        "+TB;>;TB;>;",
        "Lccsancom/google/common/collect/ClassToInstanceMap<",
        "TB;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final delegate:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+TB;>;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+TB;>;TB;>;)V"
        }
    .end annotation

    .line 66
    .local p0, "this":Lccsancom/google/common/collect/MutableClassToInstanceMap;, "Lccsancom/google/common/collect/MutableClassToInstanceMap<TB;>;"
    .local p1, "delegate":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<+TB;>;TB;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/ForwardingMap;-><init>()V

    .line 67
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lccsancom/google/common/collect/MutableClassToInstanceMap;->delegate:Ljava/util/Map;

    .line 68
    return-void
.end method

.method static synthetic access$000(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Class;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 44
    invoke-static {p0, p1}, Lccsancom/google/common/collect/MutableClassToInstanceMap;->cast(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static cast(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "T:TB;>(",
            "Ljava/lang/Class<",
            "TT;>;TB;)TT;"
        }
    .end annotation

    .line 149
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TB;"
    invoke-static {p0}, Lccsancom/google/common/primitives/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static checkedEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Class<",
            "+TB;>;TB;>;)",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Class<",
            "+TB;>;TB;>;"
        }
    .end annotation

    .line 76
    .local p0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<+TB;>;TB;>;"
    new-instance v0, Lccsancom/google/common/collect/MutableClassToInstanceMap$1;

    invoke-direct {v0, p0}, Lccsancom/google/common/collect/MutableClassToInstanceMap$1;-><init>(Ljava/util/Map$Entry;)V

    return-object v0
.end method

.method public static create()Lccsancom/google/common/collect/MutableClassToInstanceMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()",
            "Lccsancom/google/common/collect/MutableClassToInstanceMap<",
            "TB;>;"
        }
    .end annotation

    .line 52
    new-instance v0, Lccsancom/google/common/collect/MutableClassToInstanceMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v0, v1}, Lccsancom/google/common/collect/MutableClassToInstanceMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static create(Ljava/util/Map;)Lccsancom/google/common/collect/MutableClassToInstanceMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+TB;>;TB;>;)",
            "Lccsancom/google/common/collect/MutableClassToInstanceMap<",
            "TB;>;"
        }
    .end annotation

    .line 61
    .local p0, "backingMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<+TB;>;TB;>;"
    new-instance v0, Lccsancom/google/common/collect/MutableClassToInstanceMap;

    invoke-direct {v0, p0}, Lccsancom/google/common/collect/MutableClassToInstanceMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 153
    .local p0, "this":Lccsancom/google/common/collect/MutableClassToInstanceMap;, "Lccsancom/google/common/collect/MutableClassToInstanceMap<TB;>;"
    new-instance v0, Lccsancom/google/common/collect/MutableClassToInstanceMap$SerializedForm;

    invoke-virtual {p0}, Lccsancom/google/common/collect/MutableClassToInstanceMap;->delegate()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsancom/google/common/collect/MutableClassToInstanceMap$SerializedForm;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 42
    .local p0, "this":Lccsancom/google/common/collect/MutableClassToInstanceMap;, "Lccsancom/google/common/collect/MutableClassToInstanceMap<TB;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/MutableClassToInstanceMap;->delegate()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+TB;>;TB;>;"
        }
    .end annotation

    .line 72
    .local p0, "this":Lccsancom/google/common/collect/MutableClassToInstanceMap;, "Lccsancom/google/common/collect/MutableClassToInstanceMap<TB;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/MutableClassToInstanceMap;->delegate:Ljava/util/Map;

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Class<",
            "+TB;>;TB;>;>;"
        }
    .end annotation

    .line 91
    .local p0, "this":Lccsancom/google/common/collect/MutableClassToInstanceMap;, "Lccsancom/google/common/collect/MutableClassToInstanceMap<TB;>;"
    new-instance v0, Lccsancom/google/common/collect/MutableClassToInstanceMap$2;

    invoke-direct {v0, p0}, Lccsancom/google/common/collect/MutableClassToInstanceMap$2;-><init>(Lccsancom/google/common/collect/MutableClassToInstanceMap;)V

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

    .line 144
    .local p0, "this":Lccsancom/google/common/collect/MutableClassToInstanceMap;, "Lccsancom/google/common/collect/MutableClassToInstanceMap<TB;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/MutableClassToInstanceMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lccsancom/google/common/collect/MutableClassToInstanceMap;->cast(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TB;>;TB;)TB;"
        }
    .end annotation

    .line 124
    .local p0, "this":Lccsancom/google/common/collect/MutableClassToInstanceMap;, "Lccsancom/google/common/collect/MutableClassToInstanceMap<TB;>;"
    .local p1, "key":Ljava/lang/Class;, "Ljava/lang/Class<+TB;>;"
    .local p2, "value":Ljava/lang/Object;, "TB;"
    invoke-static {p1, p2}, Lccsancom/google/common/collect/MutableClassToInstanceMap;->cast(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lccsancom/google/common/collect/ForwardingMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 42
    .local p0, "this":Lccsancom/google/common/collect/MutableClassToInstanceMap;, "Lccsancom/google/common/collect/MutableClassToInstanceMap<TB;>;"
    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lccsancom/google/common/collect/MutableClassToInstanceMap;->put(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/Class<",
            "+TB;>;+TB;>;)V"
        }
    .end annotation

    .line 129
    .local p0, "this":Lccsancom/google/common/collect/MutableClassToInstanceMap;, "Lccsancom/google/common/collect/MutableClassToInstanceMap<TB;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/Class<+TB;>;+TB;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 130
    .local v0, "copy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<+TB;>;TB;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 131
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/lang/Class<+TB;>;TB;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lccsancom/google/common/collect/MutableClassToInstanceMap;->cast(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/lang/Class<+TB;>;TB;>;"
    goto :goto_0

    .line 133
    :cond_0
    invoke-super {p0, v0}, Lccsancom/google/common/collect/ForwardingMap;->putAll(Ljava/util/Map;)V

    .line 134
    return-void
.end method

.method public putInstance(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .line 139
    .local p0, "this":Lccsancom/google/common/collect/MutableClassToInstanceMap;, "Lccsancom/google/common/collect/MutableClassToInstanceMap<TB;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1, p2}, Lccsancom/google/common/collect/MutableClassToInstanceMap;->put(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lccsancom/google/common/collect/MutableClassToInstanceMap;->cast(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
