.class Lccsancom/google/common/collect/RegularImmutableMap$EntrySet;
.super Lccsancom/google/common/collect/ImmutableSet;
.source "RegularImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/RegularImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/collect/ImmutableSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final transient alternatingKeysAndValues:[Ljava/lang/Object;

.field private final transient keyOffset:I

.field private final transient map:Lccsancom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient size:I


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/ImmutableMap;[Ljava/lang/Object;II)V
    .locals 0
    .param p2, "alternatingKeysAndValues"    # [Ljava/lang/Object;
    .param p3, "keyOffset"    # I
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/ImmutableMap<",
            "TK;TV;>;[",
            "Ljava/lang/Object;",
            "II)V"
        }
    .end annotation

    .line 175
    .local p0, "this":Lccsancom/google/common/collect/RegularImmutableMap$EntrySet;, "Lccsancom/google/common/collect/RegularImmutableMap$EntrySet<TK;TV;>;"
    .local p1, "map":Lccsancom/google/common/collect/ImmutableMap;, "Lccsancom/google/common/collect/ImmutableMap<TK;TV;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/ImmutableSet;-><init>()V

    .line 176
    iput-object p1, p0, Lccsancom/google/common/collect/RegularImmutableMap$EntrySet;->map:Lccsancom/google/common/collect/ImmutableMap;

    .line 177
    iput-object p2, p0, Lccsancom/google/common/collect/RegularImmutableMap$EntrySet;->alternatingKeysAndValues:[Ljava/lang/Object;

    .line 178
    iput p3, p0, Lccsancom/google/common/collect/RegularImmutableMap$EntrySet;->keyOffset:I

    .line 179
    iput p4, p0, Lccsancom/google/common/collect/RegularImmutableMap$EntrySet;->size:I

    .line 180
    return-void
.end method

.method static synthetic access$000(Lccsancom/google/common/collect/RegularImmutableMap$EntrySet;)I
    .locals 1
    .param p0, "x0"    # Lccsancom/google/common/collect/RegularImmutableMap$EntrySet;

    .line 169
    iget v0, p0, Lccsancom/google/common/collect/RegularImmutableMap$EntrySet;->size:I

    return v0
.end method

.method static synthetic access$100(Lccsancom/google/common/collect/RegularImmutableMap$EntrySet;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/common/collect/RegularImmutableMap$EntrySet;

    .line 169
    iget-object v0, p0, Lccsancom/google/common/collect/RegularImmutableMap$EntrySet;->alternatingKeysAndValues:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lccsancom/google/common/collect/RegularImmutableMap$EntrySet;)I
    .locals 1
    .param p0, "x0"    # Lccsancom/google/common/collect/RegularImmutableMap$EntrySet;

    .line 169
    iget v0, p0, Lccsancom/google/common/collect/RegularImmutableMap$EntrySet;->keyOffset:I

    return v0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .line 219
    .local p0, "this":Lccsancom/google/common/collect/RegularImmutableMap$EntrySet;, "Lccsancom/google/common/collect/RegularImmutableMap$EntrySet<TK;TV;>;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 220
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 221
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 222
    .local v2, "k":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 223
    .local v3, "v":Ljava/lang/Object;
    if-eqz v3, :cond_0

    iget-object v4, p0, Lccsancom/google/common/collect/RegularImmutableMap$EntrySet;->map:Lccsancom/google/common/collect/ImmutableMap;

    invoke-virtual {v4, v2}, Lccsancom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 225
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v2    # "k":Ljava/lang/Object;
    .end local v3    # "v":Ljava/lang/Object;
    :cond_1
    return v1
.end method

.method copyIntoArray([Ljava/lang/Object;I)I
    .locals 1
    .param p1, "dst"    # [Ljava/lang/Object;
    .param p2, "offset"    # I

    .line 189
    .local p0, "this":Lccsancom/google/common/collect/RegularImmutableMap$EntrySet;, "Lccsancom/google/common/collect/RegularImmutableMap$EntrySet<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/RegularImmutableMap$EntrySet;->asList()Lccsancom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lccsancom/google/common/collect/ImmutableList;->copyIntoArray([Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method createAsList()Lccsancom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableList<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 194
    .local p0, "this":Lccsancom/google/common/collect/RegularImmutableMap$EntrySet;, "Lccsancom/google/common/collect/RegularImmutableMap$EntrySet<TK;TV;>;"
    new-instance v0, Lccsancom/google/common/collect/RegularImmutableMap$EntrySet$1;

    invoke-direct {v0, p0}, Lccsancom/google/common/collect/RegularImmutableMap$EntrySet$1;-><init>(Lccsancom/google/common/collect/RegularImmutableMap$EntrySet;)V

    return-object v0
.end method

.method isPartialView()Z
    .locals 1

    .line 230
    .local p0, "this":Lccsancom/google/common/collect/RegularImmutableMap$EntrySet;, "Lccsancom/google/common/collect/RegularImmutableMap$EntrySet<TK;TV;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Lccsancom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/UnmodifiableIterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 184
    .local p0, "this":Lccsancom/google/common/collect/RegularImmutableMap$EntrySet;, "Lccsancom/google/common/collect/RegularImmutableMap$EntrySet<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/RegularImmutableMap$EntrySet;->asList()Lccsancom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableList;->iterator()Lccsancom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 169
    .local p0, "this":Lccsancom/google/common/collect/RegularImmutableMap$EntrySet;, "Lccsancom/google/common/collect/RegularImmutableMap$EntrySet<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/RegularImmutableMap$EntrySet;->iterator()Lccsancom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 235
    .local p0, "this":Lccsancom/google/common/collect/RegularImmutableMap$EntrySet;, "Lccsancom/google/common/collect/RegularImmutableMap$EntrySet<TK;TV;>;"
    iget v0, p0, Lccsancom/google/common/collect/RegularImmutableMap$EntrySet;->size:I

    return v0
.end method
