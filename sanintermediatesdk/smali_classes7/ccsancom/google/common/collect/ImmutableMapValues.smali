.class final Lccsancom/google/common/collect/ImmutableMapValues;
.super Lccsancom/google/common/collect/ImmutableCollection;
.source "ImmutableMapValues.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/common/collect/ImmutableMapValues$SerializedForm;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/collect/ImmutableCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final map:Lccsancom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
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
            "TK;TV;>;)V"
        }
    .end annotation

    .line 35
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMapValues;, "Lccsancom/google/common/collect/ImmutableMapValues<TK;TV;>;"
    .local p1, "map":Lccsancom/google/common/collect/ImmutableMap;, "Lccsancom/google/common/collect/ImmutableMap<TK;TV;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/ImmutableCollection;-><init>()V

    .line 36
    iput-object p1, p0, Lccsancom/google/common/collect/ImmutableMapValues;->map:Lccsancom/google/common/collect/ImmutableMap;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lccsancom/google/common/collect/ImmutableMapValues;)Lccsancom/google/common/collect/ImmutableMap;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/common/collect/ImmutableMapValues;

    .line 32
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableMapValues;->map:Lccsancom/google/common/collect/ImmutableMap;

    return-object v0
.end method


# virtual methods
.method public asList()Lccsancom/google/common/collect/ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableList<",
            "TV;>;"
        }
    .end annotation

    .line 73
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMapValues;, "Lccsancom/google/common/collect/ImmutableMapValues<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableMapValues;->map:Lccsancom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableMap;->entrySet()Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableSet;->asList()Lccsancom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 74
    .local v0, "entryList":Lccsancom/google/common/collect/ImmutableList;, "Lccsancom/google/common/collect/ImmutableList<Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v1, Lccsancom/google/common/collect/ImmutableMapValues$2;

    invoke-direct {v1, p0, v0}, Lccsancom/google/common/collect/ImmutableMapValues$2;-><init>(Lccsancom/google/common/collect/ImmutableMapValues;Lccsancom/google/common/collect/ImmutableList;)V

    return-object v1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 63
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMapValues;, "Lccsancom/google/common/collect/ImmutableMapValues<TK;TV;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableMapValues;->iterator()Lccsancom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    invoke-static {v0, p1}, Lccsancom/google/common/collect/Iterators;->contains(Ljava/util/Iterator;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isPartialView()Z
    .locals 1

    .line 68
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMapValues;, "Lccsancom/google/common/collect/ImmutableMapValues<TK;TV;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Lccsancom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/UnmodifiableIterator<",
            "TV;>;"
        }
    .end annotation

    .line 46
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMapValues;, "Lccsancom/google/common/collect/ImmutableMapValues<TK;TV;>;"
    new-instance v0, Lccsancom/google/common/collect/ImmutableMapValues$1;

    invoke-direct {v0, p0}, Lccsancom/google/common/collect/ImmutableMapValues$1;-><init>(Lccsancom/google/common/collect/ImmutableMapValues;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 31
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMapValues;, "Lccsancom/google/common/collect/ImmutableMapValues<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableMapValues;->iterator()Lccsancom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 41
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMapValues;, "Lccsancom/google/common/collect/ImmutableMapValues<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableMapValues;->map:Lccsancom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableMap;->size()I

    move-result v0

    return v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .line 95
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMapValues;, "Lccsancom/google/common/collect/ImmutableMapValues<TK;TV;>;"
    new-instance v0, Lccsancom/google/common/collect/ImmutableMapValues$SerializedForm;

    iget-object v1, p0, Lccsancom/google/common/collect/ImmutableMapValues;->map:Lccsancom/google/common/collect/ImmutableMap;

    invoke-direct {v0, v1}, Lccsancom/google/common/collect/ImmutableMapValues$SerializedForm;-><init>(Lccsancom/google/common/collect/ImmutableMap;)V

    return-object v0
.end method
