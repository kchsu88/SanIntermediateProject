.class Lccsancom/google/common/collect/ImmutableSortedMap$1EntrySet;
.super Lccsancom/google/common/collect/ImmutableMapEntrySet;
.source "ImmutableSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/collect/ImmutableSortedMap;->createEntrySet()Lccsancom/google/common/collect/ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/ImmutableMapEntrySet<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/collect/ImmutableSortedMap;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/ImmutableSortedMap;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/collect/ImmutableSortedMap;

    .line 586
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap$1EntrySet;, "Lccsancom/google/common/collect/ImmutableSortedMap$1EntrySet;"
    iput-object p1, p0, Lccsancom/google/common/collect/ImmutableSortedMap$1EntrySet;->this$0:Lccsancom/google/common/collect/ImmutableSortedMap;

    invoke-direct {p0}, Lccsancom/google/common/collect/ImmutableMapEntrySet;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 594
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap$1EntrySet;, "Lccsancom/google/common/collect/ImmutableSortedMap$1EntrySet;"
    new-instance v0, Lccsancom/google/common/collect/ImmutableSortedMap$1EntrySet$1;

    invoke-direct {v0, p0}, Lccsancom/google/common/collect/ImmutableSortedMap$1EntrySet$1;-><init>(Lccsancom/google/common/collect/ImmutableSortedMap$1EntrySet;)V

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

    .line 589
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap$1EntrySet;, "Lccsancom/google/common/collect/ImmutableSortedMap$1EntrySet;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableSortedMap$1EntrySet;->asList()Lccsancom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableList;->iterator()Lccsancom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 585
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap$1EntrySet;, "Lccsancom/google/common/collect/ImmutableSortedMap$1EntrySet;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableSortedMap$1EntrySet;->iterator()Lccsancom/google/common/collect/UnmodifiableIterator;

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

    .line 615
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap$1EntrySet;, "Lccsancom/google/common/collect/ImmutableSortedMap$1EntrySet;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableSortedMap$1EntrySet;->this$0:Lccsancom/google/common/collect/ImmutableSortedMap;

    return-object v0
.end method
