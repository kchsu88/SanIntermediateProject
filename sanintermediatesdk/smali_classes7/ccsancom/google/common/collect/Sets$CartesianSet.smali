.class final Lccsancom/google/common/collect/Sets$CartesianSet;
.super Lccsancom/google/common/collect/ForwardingCollection;
.source "Sets.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/Sets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CartesianSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/collect/ForwardingCollection<",
        "Ljava/util/List<",
        "TE;>;>;",
        "Ljava/util/Set<",
        "Ljava/util/List<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field private final transient axes:Lccsancom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/ImmutableList<",
            "Lccsancom/google/common/collect/ImmutableSet<",
            "TE;>;>;"
        }
    .end annotation
.end field

.field private final transient delegate:Lccsancom/google/common/collect/CartesianList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/CartesianList<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lccsancom/google/common/collect/ImmutableList;Lccsancom/google/common/collect/CartesianList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/ImmutableList<",
            "Lccsancom/google/common/collect/ImmutableSet<",
            "TE;>;>;",
            "Lccsancom/google/common/collect/CartesianList<",
            "TE;>;)V"
        }
    .end annotation

    .line 1329
    .local p0, "this":Lccsancom/google/common/collect/Sets$CartesianSet;, "Lccsancom/google/common/collect/Sets$CartesianSet<TE;>;"
    .local p1, "axes":Lccsancom/google/common/collect/ImmutableList;, "Lccsancom/google/common/collect/ImmutableList<Lccsancom/google/common/collect/ImmutableSet<TE;>;>;"
    .local p2, "delegate":Lccsancom/google/common/collect/CartesianList;, "Lccsancom/google/common/collect/CartesianList<TE;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/ForwardingCollection;-><init>()V

    .line 1330
    iput-object p1, p0, Lccsancom/google/common/collect/Sets$CartesianSet;->axes:Lccsancom/google/common/collect/ImmutableList;

    .line 1331
    iput-object p2, p0, Lccsancom/google/common/collect/Sets$CartesianSet;->delegate:Lccsancom/google/common/collect/CartesianList;

    .line 1332
    return-void
.end method

.method static create(Ljava/util/List;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+",
            "Ljava/util/Set<",
            "+TE;>;>;)",
            "Ljava/util/Set<",
            "Ljava/util/List<",
            "TE;>;>;"
        }
    .end annotation

    .line 1300
    .local p0, "sets":Ljava/util/List;, "Ljava/util/List<+Ljava/util/Set<+TE;>;>;"
    new-instance v0, Lccsancom/google/common/collect/ImmutableList$Builder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lccsancom/google/common/collect/ImmutableList$Builder;-><init>(I)V

    .line 1301
    .local v0, "axesBuilder":Lccsancom/google/common/collect/ImmutableList$Builder;, "Lccsancom/google/common/collect/ImmutableList$Builder<Lccsancom/google/common/collect/ImmutableSet<TE;>;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 1302
    .local v2, "set":Ljava/util/Set;, "Ljava/util/Set<+TE;>;"
    invoke-static {v2}, Lccsancom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v3

    .line 1303
    .local v3, "copy":Lccsancom/google/common/collect/ImmutableSet;, "Lccsancom/google/common/collect/ImmutableSet<TE;>;"
    invoke-virtual {v3}, Lccsancom/google/common/collect/ImmutableSet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1304
    invoke-static {}, Lccsancom/google/common/collect/ImmutableSet;->of()Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v1

    return-object v1

    .line 1306
    :cond_0
    invoke-virtual {v0, v3}, Lccsancom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableList$Builder;

    .line 1307
    .end local v2    # "set":Ljava/util/Set;, "Ljava/util/Set<+TE;>;"
    .end local v3    # "copy":Lccsancom/google/common/collect/ImmutableSet;, "Lccsancom/google/common/collect/ImmutableSet<TE;>;"
    goto :goto_0

    .line 1308
    :cond_1
    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableList$Builder;->build()Lccsancom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 1309
    .local v1, "axes":Lccsancom/google/common/collect/ImmutableList;, "Lccsancom/google/common/collect/ImmutableList<Lccsancom/google/common/collect/ImmutableSet<TE;>;>;"
    new-instance v2, Lccsancom/google/common/collect/Sets$CartesianSet$1;

    invoke-direct {v2, v1}, Lccsancom/google/common/collect/Sets$CartesianSet$1;-><init>(Lccsancom/google/common/collect/ImmutableList;)V

    .line 1326
    .local v2, "listAxes":Lccsancom/google/common/collect/ImmutableList;, "Lccsancom/google/common/collect/ImmutableList<Ljava/util/List<TE;>;>;"
    new-instance v3, Lccsancom/google/common/collect/Sets$CartesianSet;

    new-instance v4, Lccsancom/google/common/collect/CartesianList;

    invoke-direct {v4, v2}, Lccsancom/google/common/collect/CartesianList;-><init>(Lccsancom/google/common/collect/ImmutableList;)V

    invoke-direct {v3, v1, v4}, Lccsancom/google/common/collect/Sets$CartesianSet;-><init>(Lccsancom/google/common/collect/ImmutableList;Lccsancom/google/common/collect/CartesianList;)V

    return-object v3
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 1294
    .local p0, "this":Lccsancom/google/common/collect/Sets$CartesianSet;, "Lccsancom/google/common/collect/Sets$CartesianSet<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/Sets$CartesianSet;->delegate()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/List<",
            "TE;>;>;"
        }
    .end annotation

    .line 1336
    .local p0, "this":Lccsancom/google/common/collect/Sets$CartesianSet;, "Lccsancom/google/common/collect/Sets$CartesianSet<TE;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Sets$CartesianSet;->delegate:Lccsancom/google/common/collect/CartesianList;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1343
    .local p0, "this":Lccsancom/google/common/collect/Sets$CartesianSet;, "Lccsancom/google/common/collect/Sets$CartesianSet<TE;>;"
    instance-of v0, p1, Lccsancom/google/common/collect/Sets$CartesianSet;

    if-eqz v0, :cond_0

    .line 1344
    move-object v0, p1

    check-cast v0, Lccsancom/google/common/collect/Sets$CartesianSet;

    .line 1345
    .local v0, "that":Lccsancom/google/common/collect/Sets$CartesianSet;, "Lccsancom/google/common/collect/Sets$CartesianSet<*>;"
    iget-object v1, p0, Lccsancom/google/common/collect/Sets$CartesianSet;->axes:Lccsancom/google/common/collect/ImmutableList;

    iget-object v2, v0, Lccsancom/google/common/collect/Sets$CartesianSet;->axes:Lccsancom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v2}, Lccsancom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 1347
    .end local v0    # "that":Lccsancom/google/common/collect/Sets$CartesianSet;, "Lccsancom/google/common/collect/Sets$CartesianSet<*>;"
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 7

    .line 1356
    .local p0, "this":Lccsancom/google/common/collect/Sets$CartesianSet;, "Lccsancom/google/common/collect/Sets$CartesianSet<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/Sets$CartesianSet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1357
    .local v0, "adjust":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lccsancom/google/common/collect/Sets$CartesianSet;->axes:Lccsancom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lccsancom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1358
    mul-int/lit8 v0, v0, 0x1f

    .line 1359
    xor-int/lit8 v2, v0, -0x1

    xor-int/lit8 v0, v2, -0x1

    .line 1357
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1362
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x1

    .line 1363
    .local v1, "hash":I
    iget-object v2, p0, Lccsancom/google/common/collect/Sets$CartesianSet;->axes:Lccsancom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lccsancom/google/common/collect/ImmutableList;->iterator()Lccsancom/google/common/collect/UnmodifiableIterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 1364
    .local v3, "axis":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    mul-int/lit8 v4, v1, 0x1f

    invoke-virtual {p0}, Lccsancom/google/common/collect/Sets$CartesianSet;->size()I

    move-result v5

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v6

    div-int/2addr v5, v6

    invoke-interface {v3}, Ljava/util/Set;->hashCode()I

    move-result v6

    mul-int v5, v5, v6

    add-int/2addr v4, v5

    .line 1366
    .end local v1    # "hash":I
    .local v4, "hash":I
    xor-int/lit8 v1, v4, -0x1

    xor-int/lit8 v1, v1, -0x1

    .line 1367
    .end local v3    # "axis":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    .end local v4    # "hash":I
    .restart local v1    # "hash":I
    goto :goto_1

    .line 1368
    :cond_1
    add-int/2addr v1, v0

    .line 1369
    xor-int/lit8 v2, v1, -0x1

    xor-int/lit8 v2, v2, -0x1

    return v2
.end method
