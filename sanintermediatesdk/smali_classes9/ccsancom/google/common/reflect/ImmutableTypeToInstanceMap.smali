.class public final Lccsancom/google/common/reflect/ImmutableTypeToInstanceMap;
.super Lccsancom/google/common/collect/ForwardingMap;
.source "ImmutableTypeToInstanceMap.java"

# interfaces
.implements Lccsancom/google/common/reflect/TypeToInstanceMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/common/reflect/ImmutableTypeToInstanceMap$Builder;
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
.field private final delegate:Lccsancom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/ImmutableMap<",
            "Lccsancom/google/common/reflect/TypeToken<",
            "+TB;>;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lccsancom/google/common/collect/ImmutableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/ImmutableMap<",
            "Lccsancom/google/common/reflect/TypeToken<",
            "+TB;>;TB;>;)V"
        }
    .end annotation

    .line 99
    .local p0, "this":Lccsancom/google/common/reflect/ImmutableTypeToInstanceMap;, "Lccsancom/google/common/reflect/ImmutableTypeToInstanceMap<TB;>;"
    .local p1, "delegate":Lccsancom/google/common/collect/ImmutableMap;, "Lccsancom/google/common/collect/ImmutableMap<Lccsancom/google/common/reflect/TypeToken<+TB;>;TB;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/ForwardingMap;-><init>()V

    .line 100
    iput-object p1, p0, Lccsancom/google/common/reflect/ImmutableTypeToInstanceMap;->delegate:Lccsancom/google/common/collect/ImmutableMap;

    .line 101
    return-void
.end method

.method synthetic constructor <init>(Lccsancom/google/common/collect/ImmutableMap;Lccsancom/google/common/reflect/ImmutableTypeToInstanceMap$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/google/common/collect/ImmutableMap;
    .param p2, "x1"    # Lccsancom/google/common/reflect/ImmutableTypeToInstanceMap$1;

    .line 31
    .local p0, "this":Lccsancom/google/common/reflect/ImmutableTypeToInstanceMap;, "Lccsancom/google/common/reflect/ImmutableTypeToInstanceMap<TB;>;"
    invoke-direct {p0, p1}, Lccsancom/google/common/reflect/ImmutableTypeToInstanceMap;-><init>(Lccsancom/google/common/collect/ImmutableMap;)V

    return-void
.end method

.method public static builder()Lccsancom/google/common/reflect/ImmutableTypeToInstanceMap$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()",
            "Lccsancom/google/common/reflect/ImmutableTypeToInstanceMap$Builder<",
            "TB;>;"
        }
    .end annotation

    .line 41
    new-instance v0, Lccsancom/google/common/reflect/ImmutableTypeToInstanceMap$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lccsancom/google/common/reflect/ImmutableTypeToInstanceMap$Builder;-><init>(Lccsancom/google/common/reflect/ImmutableTypeToInstanceMap$1;)V

    return-object v0
.end method

.method public static of()Lccsancom/google/common/reflect/ImmutableTypeToInstanceMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()",
            "Lccsancom/google/common/reflect/ImmutableTypeToInstanceMap<",
            "TB;>;"
        }
    .end annotation

    .line 36
    new-instance v0, Lccsancom/google/common/reflect/ImmutableTypeToInstanceMap;

    invoke-static {}, Lccsancom/google/common/collect/ImmutableMap;->of()Lccsancom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsancom/google/common/reflect/ImmutableTypeToInstanceMap;-><init>(Lccsancom/google/common/collect/ImmutableMap;)V

    return-object v0
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

    .line 171
    .local p0, "this":Lccsancom/google/common/reflect/ImmutableTypeToInstanceMap;, "Lccsancom/google/common/reflect/ImmutableTypeToInstanceMap<TB;>;"
    .local p1, "type":Lccsancom/google/common/reflect/TypeToken;, "Lccsancom/google/common/reflect/TypeToken<TT;>;"
    iget-object v0, p0, Lccsancom/google/common/reflect/ImmutableTypeToInstanceMap;->delegate:Lccsancom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lccsancom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 30
    .local p0, "this":Lccsancom/google/common/reflect/ImmutableTypeToInstanceMap;, "Lccsancom/google/common/reflect/ImmutableTypeToInstanceMap<TB;>;"
    invoke-virtual {p0}, Lccsancom/google/common/reflect/ImmutableTypeToInstanceMap;->delegate()Ljava/util/Map;

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

    .line 166
    .local p0, "this":Lccsancom/google/common/reflect/ImmutableTypeToInstanceMap;, "Lccsancom/google/common/reflect/ImmutableTypeToInstanceMap<TB;>;"
    iget-object v0, p0, Lccsancom/google/common/reflect/ImmutableTypeToInstanceMap;->delegate:Lccsancom/google/common/collect/ImmutableMap;

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

    .line 105
    .local p0, "this":Lccsancom/google/common/reflect/ImmutableTypeToInstanceMap;, "Lccsancom/google/common/reflect/ImmutableTypeToInstanceMap<TB;>;"
    .local p1, "type":Lccsancom/google/common/reflect/TypeToken;, "Lccsancom/google/common/reflect/TypeToken<TT;>;"
    invoke-virtual {p1}, Lccsancom/google/common/reflect/TypeToken;->rejectTypeVariables()Lccsancom/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsancom/google/common/reflect/ImmutableTypeToInstanceMap;->trustedGet(Lccsancom/google/common/reflect/TypeToken;)Ljava/lang/Object;

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

    .line 110
    .local p0, "this":Lccsancom/google/common/reflect/ImmutableTypeToInstanceMap;, "Lccsancom/google/common/reflect/ImmutableTypeToInstanceMap<TB;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lccsancom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lccsancom/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsancom/google/common/reflect/ImmutableTypeToInstanceMap;->trustedGet(Lccsancom/google/common/reflect/TypeToken;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Lccsancom/google/common/reflect/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/reflect/TypeToken<",
            "+TB;>;TB;)TB;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 149
    .local p0, "this":Lccsancom/google/common/reflect/ImmutableTypeToInstanceMap;, "Lccsancom/google/common/reflect/ImmutableTypeToInstanceMap<TB;>;"
    .local p1, "key":Lccsancom/google/common/reflect/TypeToken;, "Lccsancom/google/common/reflect/TypeToken<+TB;>;"
    .local p2, "value":Ljava/lang/Object;, "TB;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 30
    .local p0, "this":Lccsancom/google/common/reflect/ImmutableTypeToInstanceMap;, "Lccsancom/google/common/reflect/ImmutableTypeToInstanceMap<TB;>;"
    check-cast p1, Lccsancom/google/common/reflect/TypeToken;

    invoke-virtual {p0, p1, p2}, Lccsancom/google/common/reflect/ImmutableTypeToInstanceMap;->put(Lccsancom/google/common/reflect/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
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

    .line 161
    .local p0, "this":Lccsancom/google/common/reflect/ImmutableTypeToInstanceMap;, "Lccsancom/google/common/reflect/ImmutableTypeToInstanceMap<TB;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+Lccsancom/google/common/reflect/TypeToken<+TB;>;+TB;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public putInstance(Lccsancom/google/common/reflect/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>(",
            "Lccsancom/google/common/reflect/TypeToken<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 123
    .local p0, "this":Lccsancom/google/common/reflect/ImmutableTypeToInstanceMap;, "Lccsancom/google/common/reflect/ImmutableTypeToInstanceMap<TB;>;"
    .local p1, "type":Lccsancom/google/common/reflect/TypeToken;, "Lccsancom/google/common/reflect/TypeToken<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 136
    .local p0, "this":Lccsancom/google/common/reflect/ImmutableTypeToInstanceMap;, "Lccsancom/google/common/reflect/ImmutableTypeToInstanceMap<TB;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
