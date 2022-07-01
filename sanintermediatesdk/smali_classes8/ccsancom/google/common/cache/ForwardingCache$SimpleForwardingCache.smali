.class public abstract Lccsancom/google/common/cache/ForwardingCache$SimpleForwardingCache;
.super Lccsancom/google/common/cache/ForwardingCache;
.source "ForwardingCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/cache/ForwardingCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SimpleForwardingCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/cache/ForwardingCache<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final delegate:Lccsancom/google/common/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/cache/Cache<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lccsancom/google/common/cache/Cache;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/cache/Cache<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 120
    .local p0, "this":Lccsancom/google/common/cache/ForwardingCache$SimpleForwardingCache;, "Lccsancom/google/common/cache/ForwardingCache$SimpleForwardingCache<TK;TV;>;"
    .local p1, "delegate":Lccsancom/google/common/cache/Cache;, "Lccsancom/google/common/cache/Cache<TK;TV;>;"
    invoke-direct {p0}, Lccsancom/google/common/cache/ForwardingCache;-><init>()V

    .line 121
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/cache/Cache;

    iput-object v0, p0, Lccsancom/google/common/cache/ForwardingCache$SimpleForwardingCache;->delegate:Lccsancom/google/common/cache/Cache;

    .line 122
    return-void
.end method


# virtual methods
.method protected final delegate()Lccsancom/google/common/cache/Cache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/cache/Cache<",
            "TK;TV;>;"
        }
    .end annotation

    .line 126
    .local p0, "this":Lccsancom/google/common/cache/ForwardingCache$SimpleForwardingCache;, "Lccsancom/google/common/cache/ForwardingCache$SimpleForwardingCache<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/ForwardingCache$SimpleForwardingCache;->delegate:Lccsancom/google/common/cache/Cache;

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 117
    .local p0, "this":Lccsancom/google/common/cache/ForwardingCache$SimpleForwardingCache;, "Lccsancom/google/common/cache/ForwardingCache$SimpleForwardingCache<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/cache/ForwardingCache$SimpleForwardingCache;->delegate()Lccsancom/google/common/cache/Cache;

    move-result-object v0

    return-object v0
.end method
