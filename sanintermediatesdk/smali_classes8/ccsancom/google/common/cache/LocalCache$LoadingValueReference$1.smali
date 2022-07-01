.class Lccsancom/google/common/cache/LocalCache$LoadingValueReference$1;
.super Ljava/lang/Object;
.source "LocalCache.java"

# interfaces
.implements Lccsancom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/cache/LocalCache$LoadingValueReference;->loadFuture(Ljava/lang/Object;Lccsancom/google/common/cache/CacheLoader;)Lccsancom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/google/common/base/Function<",
        "TV;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/cache/LocalCache$LoadingValueReference;


# direct methods
.method constructor <init>(Lccsancom/google/common/cache/LocalCache$LoadingValueReference;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/cache/LocalCache$LoadingValueReference;

    .line 3456
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$LoadingValueReference$1;, "Lccsancom/google/common/cache/LocalCache$LoadingValueReference$1;"
    iput-object p1, p0, Lccsancom/google/common/cache/LocalCache$LoadingValueReference$1;->this$0:Lccsancom/google/common/cache/LocalCache$LoadingValueReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 3459
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$LoadingValueReference$1;, "Lccsancom/google/common/cache/LocalCache$LoadingValueReference$1;"
    .local p1, "newValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$LoadingValueReference$1;->this$0:Lccsancom/google/common/cache/LocalCache$LoadingValueReference;

    invoke-virtual {v0, p1}, Lccsancom/google/common/cache/LocalCache$LoadingValueReference;->set(Ljava/lang/Object;)Z

    .line 3460
    return-object p1
.end method
