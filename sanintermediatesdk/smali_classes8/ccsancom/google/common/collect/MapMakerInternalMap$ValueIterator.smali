.class final Lccsancom/google/common/collect/MapMakerInternalMap$ValueIterator;
.super Lccsancom/google/common/collect/MapMakerInternalMap$HashIterator;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ValueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/MapMakerInternalMap<",
        "TK;TV;TE;TS;>.HashIterator<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/collect/MapMakerInternalMap;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/MapMakerInternalMap;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/collect/MapMakerInternalMap;

    .line 2627
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$ValueIterator;, "Lccsancom/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>.ValueIterator;"
    iput-object p1, p0, Lccsancom/google/common/collect/MapMakerInternalMap$ValueIterator;->this$0:Lccsancom/google/common/collect/MapMakerInternalMap;

    invoke-direct {p0, p1}, Lccsancom/google/common/collect/MapMakerInternalMap$HashIterator;-><init>(Lccsancom/google/common/collect/MapMakerInternalMap;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 2631
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$ValueIterator;, "Lccsancom/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>.ValueIterator;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/MapMakerInternalMap$ValueIterator;->nextEntry()Lccsancom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
