.class final Lccsancom/google/common/collect/MapMakerInternalMap$EntryIterator;
.super Lccsancom/google/common/collect/MapMakerInternalMap$HashIterator;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/MapMakerInternalMap<",
        "TK;TV;TE;TS;>.HashIterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/collect/MapMakerInternalMap;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/MapMakerInternalMap;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/collect/MapMakerInternalMap;

    .line 2682
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$EntryIterator;, "Lccsancom/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>.EntryIterator;"
    iput-object p1, p0, Lccsancom/google/common/collect/MapMakerInternalMap$EntryIterator;->this$0:Lccsancom/google/common/collect/MapMakerInternalMap;

    invoke-direct {p0, p1}, Lccsancom/google/common/collect/MapMakerInternalMap$HashIterator;-><init>(Lccsancom/google/common/collect/MapMakerInternalMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 2682
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$EntryIterator;, "Lccsancom/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>.EntryIterator;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/MapMakerInternalMap$EntryIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2686
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$EntryIterator;, "Lccsancom/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>.EntryIterator;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/MapMakerInternalMap$EntryIterator;->nextEntry()Lccsancom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;

    move-result-object v0

    return-object v0
.end method
