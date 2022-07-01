.class public final Lccsancom/google/common/collect/ImmutableClassToInstanceMap;
.super Lccsancom/google/common/collect/ForwardingMap;
.source "ImmutableClassToInstanceMap.java"

# interfaces
.implements Lccsancom/google/common/collect/ClassToInstanceMap;
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lccsancom/google/errorprone/annotations/Immutable;
    containerOf = {
        "B"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/common/collect/ImmutableClassToInstanceMap$Builder;
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


# static fields
.field private static final EMPTY:Lccsancom/google/common/collect/ImmutableClassToInstanceMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/ImmutableClassToInstanceMap<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final delegate:Lccsancom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/ImmutableMap<",
            "Ljava/lang/Class<",
            "+TB;>;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Lccsancom/google/common/collect/ImmutableClassToInstanceMap;

    .line 42
    invoke-static {}, Lccsancom/google/common/collect/ImmutableMap;->of()Lccsancom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsancom/google/common/collect/ImmutableClassToInstanceMap;-><init>(Lccsancom/google/common/collect/ImmutableMap;)V

    sput-object v0, Lccsancom/google/common/collect/ImmutableClassToInstanceMap;->EMPTY:Lccsancom/google/common/collect/ImmutableClassToInstanceMap;

    .line 41
    return-void
.end method

.method private constructor <init>(Lccsancom/google/common/collect/ImmutableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/ImmutableMap<",
            "Ljava/lang/Class<",
            "+TB;>;TB;>;)V"
        }
    .end annotation

    .line 163
    .local p0, "this":Lccsancom/google/common/collect/ImmutableClassToInstanceMap;, "Lccsancom/google/common/collect/ImmutableClassToInstanceMap<TB;>;"
    .local p1, "delegate":Lccsancom/google/common/collect/ImmutableMap;, "Lccsancom/google/common/collect/ImmutableMap<Ljava/lang/Class<+TB;>;TB;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/ForwardingMap;-><init>()V

    .line 164
    iput-object p1, p0, Lccsancom/google/common/collect/ImmutableClassToInstanceMap;->delegate:Lccsancom/google/common/collect/ImmutableMap;

    .line 165
    return-void
.end method

.method synthetic constructor <init>(Lccsancom/google/common/collect/ImmutableMap;Lccsancom/google/common/collect/ImmutableClassToInstanceMap$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/google/common/collect/ImmutableMap;
    .param p2, "x1"    # Lccsancom/google/common/collect/ImmutableClassToInstanceMap$1;

    .line 38
    .local p0, "this":Lccsancom/google/common/collect/ImmutableClassToInstanceMap;, "Lccsancom/google/common/collect/ImmutableClassToInstanceMap<TB;>;"
    invoke-direct {p0, p1}, Lccsancom/google/common/collect/ImmutableClassToInstanceMap;-><init>(Lccsancom/google/common/collect/ImmutableMap;)V

    return-void
.end method

.method public static builder()Lccsancom/google/common/collect/ImmutableClassToInstanceMap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()",
            "Lccsancom/google/common/collect/ImmutableClassToInstanceMap$Builder<",
            "TB;>;"
        }
    .end annotation

    .line 69
    new-instance v0, Lccsancom/google/common/collect/ImmutableClassToInstanceMap$Builder;

    invoke-direct {v0}, Lccsancom/google/common/collect/ImmutableClassToInstanceMap$Builder;-><init>()V

    return-object v0
.end method

.method public static copyOf(Ljava/util/Map;)Lccsancom/google/common/collect/ImmutableClassToInstanceMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "S:TB;>(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/Class<",
            "+TS;>;+TS;>;)",
            "Lccsancom/google/common/collect/ImmutableClassToInstanceMap<",
            "TB;>;"
        }
    .end annotation

    .line 152
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/Class<+TS;>;+TS;>;"
    instance-of v0, p0, Lccsancom/google/common/collect/ImmutableClassToInstanceMap;

    if-eqz v0, :cond_0

    .line 155
    move-object v0, p0

    check-cast v0, Lccsancom/google/common/collect/ImmutableClassToInstanceMap;

    .line 156
    .local v0, "cast":Lccsancom/google/common/collect/ImmutableClassToInstanceMap;, "Lccsancom/google/common/collect/ImmutableClassToInstanceMap<TB;>;"
    return-object v0

    .line 158
    .end local v0    # "cast":Lccsancom/google/common/collect/ImmutableClassToInstanceMap;, "Lccsancom/google/common/collect/ImmutableClassToInstanceMap<TB;>;"
    :cond_0
    new-instance v0, Lccsancom/google/common/collect/ImmutableClassToInstanceMap$Builder;

    invoke-direct {v0}, Lccsancom/google/common/collect/ImmutableClassToInstanceMap$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lccsancom/google/common/collect/ImmutableClassToInstanceMap$Builder;->putAll(Ljava/util/Map;)Lccsancom/google/common/collect/ImmutableClassToInstanceMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableClassToInstanceMap$Builder;->build()Lccsancom/google/common/collect/ImmutableClassToInstanceMap;

    move-result-object v0

    return-object v0
.end method

.method public static of()Lccsancom/google/common/collect/ImmutableClassToInstanceMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()",
            "Lccsancom/google/common/collect/ImmutableClassToInstanceMap<",
            "TB;>;"
        }
    .end annotation

    .line 51
    sget-object v0, Lccsancom/google/common/collect/ImmutableClassToInstanceMap;->EMPTY:Lccsancom/google/common/collect/ImmutableClassToInstanceMap;

    return-object v0
.end method

.method public static of(Ljava/lang/Class;Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableClassToInstanceMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "T:TB;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)",
            "Lccsancom/google/common/collect/ImmutableClassToInstanceMap<",
            "TB;>;"
        }
    .end annotation

    .line 60
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1}, Lccsancom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableMap;

    move-result-object v0

    .line 61
    .local v0, "map":Lccsancom/google/common/collect/ImmutableMap;, "Lccsancom/google/common/collect/ImmutableMap<Ljava/lang/Class<+TB;>;TB;>;"
    new-instance v1, Lccsancom/google/common/collect/ImmutableClassToInstanceMap;

    invoke-direct {v1, v0}, Lccsancom/google/common/collect/ImmutableClassToInstanceMap;-><init>(Lccsancom/google/common/collect/ImmutableMap;)V

    return-object v1
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 36
    .local p0, "this":Lccsancom/google/common/collect/ImmutableClassToInstanceMap;, "Lccsancom/google/common/collect/ImmutableClassToInstanceMap<TB;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableClassToInstanceMap;->delegate()Ljava/util/Map;

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

    .line 169
    .local p0, "this":Lccsancom/google/common/collect/ImmutableClassToInstanceMap;, "Lccsancom/google/common/collect/ImmutableClassToInstanceMap<TB;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableClassToInstanceMap;->delegate:Lccsancom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method public getInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TB;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 176
    .local p0, "this":Lccsancom/google/common/collect/ImmutableClassToInstanceMap;, "Lccsancom/google/common/collect/ImmutableClassToInstanceMap<TB;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableClassToInstanceMap;->delegate:Lccsancom/google/common/collect/ImmutableMap;

    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
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

    .line 189
    .local p0, "this":Lccsancom/google/common/collect/ImmutableClassToInstanceMap;, "Lccsancom/google/common/collect/ImmutableClassToInstanceMap<TB;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method readResolve()Ljava/lang/Object;
    .locals 1

    .line 193
    .local p0, "this":Lccsancom/google/common/collect/ImmutableClassToInstanceMap;, "Lccsancom/google/common/collect/ImmutableClassToInstanceMap<TB;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableClassToInstanceMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lccsancom/google/common/collect/ImmutableClassToInstanceMap;->of()Lccsancom/google/common/collect/ImmutableClassToInstanceMap;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method
