.class final Lccsancom/google/common/collect/MapMakerInternalMap$KeyIterator;
.super Lccsancom/google/common/collect/MapMakerInternalMap$HashIterator;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KeyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/MapMakerInternalMap<",
        "TK;TV;TE;TS;>.HashIterator<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/collect/MapMakerInternalMap;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/MapMakerInternalMap;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/collect/MapMakerInternalMap;

    .line 2619
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$KeyIterator;, "Lccsancom/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>.KeyIterator;"
    iput-object p1, p0, Lccsancom/google/common/collect/MapMakerInternalMap$KeyIterator;->this$0:Lccsancom/google/common/collect/MapMakerInternalMap;

    invoke-direct {p0, p1}, Lccsancom/google/common/collect/MapMakerInternalMap$HashIterator;-><init>(Lccsancom/google/common/collect/MapMakerInternalMap;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 2623
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$KeyIterator;, "Lccsancom/google/common/collect/MapMakerInternalMap<TK;TV;TE;TS;>.KeyIterator;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/MapMakerInternalMap$KeyIterator;->nextEntry()Lccsancom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
