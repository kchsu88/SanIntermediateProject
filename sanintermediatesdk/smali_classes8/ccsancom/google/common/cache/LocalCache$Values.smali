.class final Lccsancom/google/common/cache/LocalCache$Values;
.super Ljava/util/AbstractCollection;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final map:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "**>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lccsancom/google/common/cache/LocalCache;


# direct methods
.method constructor <init>(Lccsancom/google/common/cache/LocalCache;Ljava/util/concurrent/ConcurrentMap;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/cache/LocalCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentMap<",
            "**>;)V"
        }
    .end annotation

    .line 4436
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$Values;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>.Values;"
    .local p2, "map":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<**>;"
    iput-object p1, p0, Lccsancom/google/common/cache/LocalCache$Values;->this$0:Lccsancom/google/common/cache/LocalCache;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 4437
    iput-object p2, p0, Lccsancom/google/common/cache/LocalCache$Values;->map:Ljava/util/concurrent/ConcurrentMap;

    .line 4438
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 4452
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$Values;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>.Values;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$Values;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 4453
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 4462
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$Values;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>.Values;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$Values;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 4447
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$Values;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>.Values;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$Values;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 4457
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$Values;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>.Values;"
    new-instance v0, Lccsancom/google/common/cache/LocalCache$ValueIterator;

    iget-object v1, p0, Lccsancom/google/common/cache/LocalCache$Values;->this$0:Lccsancom/google/common/cache/LocalCache;

    invoke-direct {v0, v1}, Lccsancom/google/common/cache/LocalCache$ValueIterator;-><init>(Lccsancom/google/common/cache/LocalCache;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 4442
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$Values;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>.Values;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$Values;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 4470
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$Values;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>.Values;"
    invoke-static {p0}, Lccsancom/google/common/cache/LocalCache;->access$200(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)[TE;"
        }
    .end annotation

    .line 4475
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$Values;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>.Values;"
    .local p1, "a":[Ljava/lang/Object;, "[TE;"
    invoke-static {p0}, Lccsancom/google/common/cache/LocalCache;->access$200(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
