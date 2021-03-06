.class final Lccsancom/google/common/collect/RegularImmutableBiMap;
.super Lccsancom/google/common/collect/ImmutableBiMap;
.source "RegularImmutableBiMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/collect/ImmutableBiMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field static final EMPTY:Lccsancom/google/common/collect/RegularImmutableBiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/RegularImmutableBiMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final transient alternatingKeysAndValues:[Ljava/lang/Object;

.field private final transient inverse:Lccsancom/google/common/collect/RegularImmutableBiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/RegularImmutableBiMap<",
            "TV;TK;>;"
        }
    .end annotation
.end field

.field private final transient keyHashTable:[I

.field private final transient keyOffset:I

.field private final transient size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lccsancom/google/common/collect/RegularImmutableBiMap;

    invoke-direct {v0}, Lccsancom/google/common/collect/RegularImmutableBiMap;-><init>()V

    sput-object v0, Lccsancom/google/common/collect/RegularImmutableBiMap;->EMPTY:Lccsancom/google/common/collect/RegularImmutableBiMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 41
    .local p0, "this":Lccsancom/google/common/collect/RegularImmutableBiMap;, "Lccsancom/google/common/collect/RegularImmutableBiMap<TK;TV;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/ImmutableBiMap;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/google/common/collect/RegularImmutableBiMap;->keyHashTable:[I

    .line 43
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lccsancom/google/common/collect/RegularImmutableBiMap;->alternatingKeysAndValues:[Ljava/lang/Object;

    .line 44
    iput v0, p0, Lccsancom/google/common/collect/RegularImmutableBiMap;->keyOffset:I

    .line 45
    iput v0, p0, Lccsancom/google/common/collect/RegularImmutableBiMap;->size:I

    .line 46
    iput-object p0, p0, Lccsancom/google/common/collect/RegularImmutableBiMap;->inverse:Lccsancom/google/common/collect/RegularImmutableBiMap;

    .line 47
    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;ILccsancom/google/common/collect/RegularImmutableBiMap;)V
    .locals 1
    .param p1, "valueHashTable"    # [I
    .param p2, "alternatingKeysAndValues"    # [Ljava/lang/Object;
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/Object;",
            "I",
            "Lccsancom/google/common/collect/RegularImmutableBiMap<",
            "TV;TK;>;)V"
        }
    .end annotation

    .line 68
    .local p0, "this":Lccsancom/google/common/collect/RegularImmutableBiMap;, "Lccsancom/google/common/collect/RegularImmutableBiMap<TK;TV;>;"
    .local p4, "inverse":Lccsancom/google/common/collect/RegularImmutableBiMap;, "Lccsancom/google/common/collect/RegularImmutableBiMap<TV;TK;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/ImmutableBiMap;-><init>()V

    .line 69
    iput-object p1, p0, Lccsancom/google/common/collect/RegularImmutableBiMap;->keyHashTable:[I

    .line 70
    iput-object p2, p0, Lccsancom/google/common/collect/RegularImmutableBiMap;->alternatingKeysAndValues:[Ljava/lang/Object;

    .line 71
    const/4 v0, 0x1

    iput v0, p0, Lccsancom/google/common/collect/RegularImmutableBiMap;->keyOffset:I

    .line 72
    iput p3, p0, Lccsancom/google/common/collect/RegularImmutableBiMap;->size:I

    .line 73
    iput-object p4, p0, Lccsancom/google/common/collect/RegularImmutableBiMap;->inverse:Lccsancom/google/common/collect/RegularImmutableBiMap;

    .line 74
    return-void
.end method

.method constructor <init>([Ljava/lang/Object;I)V
    .locals 3
    .param p1, "alternatingKeysAndValues"    # [Ljava/lang/Object;
    .param p2, "size"    # I

    .line 50
    .local p0, "this":Lccsancom/google/common/collect/RegularImmutableBiMap;, "Lccsancom/google/common/collect/RegularImmutableBiMap<TK;TV;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/ImmutableBiMap;-><init>()V

    .line 51
    iput-object p1, p0, Lccsancom/google/common/collect/RegularImmutableBiMap;->alternatingKeysAndValues:[Ljava/lang/Object;

    .line 52
    iput p2, p0, Lccsancom/google/common/collect/RegularImmutableBiMap;->size:I

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/google/common/collect/RegularImmutableBiMap;->keyOffset:I

    .line 54
    const/4 v1, 0x2

    if-lt p2, v1, :cond_0

    invoke-static {p2}, Lccsancom/google/common/collect/ImmutableSet;->chooseTableSize(I)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 55
    .local v1, "tableSize":I
    :goto_0
    nop

    .line 56
    invoke-static {p1, p2, v1, v0}, Lccsancom/google/common/collect/RegularImmutableMap;->createHashTable([Ljava/lang/Object;III)[I

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/common/collect/RegularImmutableBiMap;->keyHashTable:[I

    .line 57
    const/4 v0, 0x1

    .line 58
    invoke-static {p1, p2, v1, v0}, Lccsancom/google/common/collect/RegularImmutableMap;->createHashTable([Ljava/lang/Object;III)[I

    move-result-object v0

    .line 59
    .local v0, "valueHashTable":[I
    new-instance v2, Lccsancom/google/common/collect/RegularImmutableBiMap;

    invoke-direct {v2, v0, p1, p2, p0}, Lccsancom/google/common/collect/RegularImmutableBiMap;-><init>([I[Ljava/lang/Object;ILccsancom/google/common/collect/RegularImmutableBiMap;)V

    iput-object v2, p0, Lccsancom/google/common/collect/RegularImmutableBiMap;->inverse:Lccsancom/google/common/collect/RegularImmutableBiMap;

    .line 61
    return-void
.end method


# virtual methods
.method createEntrySet()Lccsancom/google/common/collect/ImmutableSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableSet<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 95
    .local p0, "this":Lccsancom/google/common/collect/RegularImmutableBiMap;, "Lccsancom/google/common/collect/RegularImmutableBiMap<TK;TV;>;"
    new-instance v0, Lccsancom/google/common/collect/RegularImmutableMap$EntrySet;

    iget-object v1, p0, Lccsancom/google/common/collect/RegularImmutableBiMap;->alternatingKeysAndValues:[Ljava/lang/Object;

    iget v2, p0, Lccsancom/google/common/collect/RegularImmutableBiMap;->keyOffset:I

    iget v3, p0, Lccsancom/google/common/collect/RegularImmutableBiMap;->size:I

    invoke-direct {v0, p0, v1, v2, v3}, Lccsancom/google/common/collect/RegularImmutableMap$EntrySet;-><init>(Lccsancom/google/common/collect/ImmutableMap;[Ljava/lang/Object;II)V

    return-object v0
.end method

.method createKeySet()Lccsancom/google/common/collect/ImmutableSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableSet<",
            "TK;>;"
        }
    .end annotation

    .line 101
    .local p0, "this":Lccsancom/google/common/collect/RegularImmutableBiMap;, "Lccsancom/google/common/collect/RegularImmutableBiMap<TK;TV;>;"
    new-instance v0, Lccsancom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;

    iget-object v1, p0, Lccsancom/google/common/collect/RegularImmutableBiMap;->alternatingKeysAndValues:[Ljava/lang/Object;

    iget v2, p0, Lccsancom/google/common/collect/RegularImmutableBiMap;->keyOffset:I

    iget v3, p0, Lccsancom/google/common/collect/RegularImmutableBiMap;->size:I

    invoke-direct {v0, v1, v2, v3}, Lccsancom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;-><init>([Ljava/lang/Object;II)V

    .line 104
    .local v0, "keyList":Lccsancom/google/common/collect/ImmutableList;, "Lccsancom/google/common/collect/ImmutableList<TK;>;"
    new-instance v1, Lccsancom/google/common/collect/RegularImmutableMap$KeySet;

    invoke-direct {v1, p0, v0}, Lccsancom/google/common/collect/RegularImmutableMap$KeySet;-><init>(Lccsancom/google/common/collect/ImmutableMap;Lccsancom/google/common/collect/ImmutableList;)V

    return-object v1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 89
    .local p0, "this":Lccsancom/google/common/collect/RegularImmutableBiMap;, "Lccsancom/google/common/collect/RegularImmutableBiMap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/RegularImmutableBiMap;->keyHashTable:[I

    iget-object v1, p0, Lccsancom/google/common/collect/RegularImmutableBiMap;->alternatingKeysAndValues:[Ljava/lang/Object;

    iget v2, p0, Lccsancom/google/common/collect/RegularImmutableBiMap;->size:I

    iget v3, p0, Lccsancom/google/common/collect/RegularImmutableBiMap;->keyOffset:I

    .line 90
    invoke-static {v0, v1, v2, v3, p1}, Lccsancom/google/common/collect/RegularImmutableMap;->get([I[Ljava/lang/Object;IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 89
    return-object v0
.end method

.method public bridge synthetic inverse()Lccsancom/google/common/collect/BiMap;
    .locals 1

    .line 28
    .local p0, "this":Lccsancom/google/common/collect/RegularImmutableBiMap;, "Lccsancom/google/common/collect/RegularImmutableBiMap<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/RegularImmutableBiMap;->inverse()Lccsancom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method public inverse()Lccsancom/google/common/collect/ImmutableBiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableBiMap<",
            "TV;TK;>;"
        }
    .end annotation

    .line 83
    .local p0, "this":Lccsancom/google/common/collect/RegularImmutableBiMap;, "Lccsancom/google/common/collect/RegularImmutableBiMap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/RegularImmutableBiMap;->inverse:Lccsancom/google/common/collect/RegularImmutableBiMap;

    return-object v0
.end method

.method isPartialView()Z
    .locals 1

    .line 109
    .local p0, "this":Lccsancom/google/common/collect/RegularImmutableBiMap;, "Lccsancom/google/common/collect/RegularImmutableBiMap<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    .line 78
    .local p0, "this":Lccsancom/google/common/collect/RegularImmutableBiMap;, "Lccsancom/google/common/collect/RegularImmutableBiMap<TK;TV;>;"
    iget v0, p0, Lccsancom/google/common/collect/RegularImmutableBiMap;->size:I

    return v0
.end method
