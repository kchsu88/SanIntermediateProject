.class final Lccsancom/google/common/graph/MapRetrievalCache$CacheEntry;
.super Ljava/lang/Object;
.source "MapRetrievalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/graph/MapRetrievalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CacheEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 100
    .local p0, "this":Lccsancom/google/common/graph/MapRetrievalCache$CacheEntry;, "Lccsancom/google/common/graph/MapRetrievalCache$CacheEntry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lccsancom/google/common/graph/MapRetrievalCache$CacheEntry;->key:Ljava/lang/Object;

    .line 102
    iput-object p2, p0, Lccsancom/google/common/graph/MapRetrievalCache$CacheEntry;->value:Ljava/lang/Object;

    .line 103
    return-void
.end method
