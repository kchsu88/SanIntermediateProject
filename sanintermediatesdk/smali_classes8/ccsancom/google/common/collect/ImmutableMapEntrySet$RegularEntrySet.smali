.class final Lccsancom/google/common/collect/ImmutableMapEntrySet$RegularEntrySet;
.super Lccsancom/google/common/collect/ImmutableMapEntrySet;
.source "ImmutableMapEntrySet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/ImmutableMapEntrySet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RegularEntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/collect/ImmutableMapEntrySet<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final transient entries:Lccsancom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/ImmutableList<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final transient map:Lccsancom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/ImmutableMap;Lccsancom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/ImmutableMap<",
            "TK;TV;>;",
            "Lccsancom/google/common/collect/ImmutableList<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 42
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMapEntrySet$RegularEntrySet;, "Lccsancom/google/common/collect/ImmutableMapEntrySet$RegularEntrySet<TK;TV;>;"
    .local p1, "map":Lccsancom/google/common/collect/ImmutableMap;, "Lccsancom/google/common/collect/ImmutableMap<TK;TV;>;"
    .local p2, "entries":Lccsancom/google/common/collect/ImmutableList;, "Lccsancom/google/common/collect/ImmutableList<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/ImmutableMapEntrySet;-><init>()V

    .line 43
    iput-object p1, p0, Lccsancom/google/common/collect/ImmutableMapEntrySet$RegularEntrySet;->map:Lccsancom/google/common/collect/ImmutableMap;

    .line 44
    iput-object p2, p0, Lccsancom/google/common/collect/ImmutableMapEntrySet$RegularEntrySet;->entries:Lccsancom/google/common/collect/ImmutableList;

    .line 45
    return-void
.end method

.method constructor <init>(Lccsancom/google/common/collect/ImmutableMap;[Ljava/util/Map$Entry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/ImmutableMap<",
            "TK;TV;>;[",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 39
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMapEntrySet$RegularEntrySet;, "Lccsancom/google/common/collect/ImmutableMapEntrySet$RegularEntrySet<TK;TV;>;"
    .local p1, "map":Lccsancom/google/common/collect/ImmutableMap;, "Lccsancom/google/common/collect/ImmutableMap<TK;TV;>;"
    .local p2, "entries":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<TK;TV;>;"
    invoke-static {p2}, Lccsancom/google/common/collect/ImmutableList;->asImmutableList([Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lccsancom/google/common/collect/ImmutableMapEntrySet$RegularEntrySet;-><init>(Lccsancom/google/common/collect/ImmutableMap;Lccsancom/google/common/collect/ImmutableList;)V

    .line 40
    return-void
.end method


# virtual methods
.method copyIntoArray([Ljava/lang/Object;I)I
    .locals 1
    .param p1, "dst"    # [Ljava/lang/Object;
    .param p2, "offset"    # I

    .line 55
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMapEntrySet$RegularEntrySet;, "Lccsancom/google/common/collect/ImmutableMapEntrySet$RegularEntrySet<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableMapEntrySet$RegularEntrySet;->entries:Lccsancom/google/common/collect/ImmutableList;

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

    .line 65
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMapEntrySet$RegularEntrySet;, "Lccsancom/google/common/collect/ImmutableMapEntrySet$RegularEntrySet<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableMapEntrySet$RegularEntrySet;->entries:Lccsancom/google/common/collect/ImmutableList;

    return-object v0
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

    .line 60
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMapEntrySet$RegularEntrySet;, "Lccsancom/google/common/collect/ImmutableMapEntrySet$RegularEntrySet<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableMapEntrySet$RegularEntrySet;->entries:Lccsancom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableList;->iterator()Lccsancom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 34
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMapEntrySet$RegularEntrySet;, "Lccsancom/google/common/collect/ImmutableMapEntrySet$RegularEntrySet<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableMapEntrySet$RegularEntrySet;->iterator()Lccsancom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method map()Lccsancom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 49
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMapEntrySet$RegularEntrySet;, "Lccsancom/google/common/collect/ImmutableMapEntrySet$RegularEntrySet<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableMapEntrySet$RegularEntrySet;->map:Lccsancom/google/common/collect/ImmutableMap;

    return-object v0
.end method
