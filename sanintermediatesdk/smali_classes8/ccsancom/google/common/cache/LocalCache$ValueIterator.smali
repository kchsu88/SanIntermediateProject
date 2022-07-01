.class final Lccsancom/google/common/cache/LocalCache$ValueIterator;
.super Lccsancom/google/common/cache/LocalCache$HashIterator;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ValueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/cache/LocalCache<",
        "TK;TV;>.HashIterator<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/cache/LocalCache;


# direct methods
.method constructor <init>(Lccsancom/google/common/cache/LocalCache;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/cache/LocalCache;

    .line 4298
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$ValueIterator;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>.ValueIterator;"
    iput-object p1, p0, Lccsancom/google/common/cache/LocalCache$ValueIterator;->this$0:Lccsancom/google/common/cache/LocalCache;

    invoke-direct {p0, p1}, Lccsancom/google/common/cache/LocalCache$HashIterator;-><init>(Lccsancom/google/common/cache/LocalCache;)V

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

    .line 4302
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$ValueIterator;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>.ValueIterator;"
    invoke-virtual {p0}, Lccsancom/google/common/cache/LocalCache$ValueIterator;->nextEntry()Lccsancom/google/common/cache/LocalCache$WriteThroughEntry;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/cache/LocalCache$WriteThroughEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
