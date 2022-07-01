.class Lccsancom/bumptech/glide/load/engine/Engine$EngineJobFactory;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/bumptech/glide/load/engine/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EngineJobFactory"
.end annotation


# instance fields
.field private final diskCacheService:Ljava/util/concurrent/ExecutorService;

.field private final listener:Lccsancom/bumptech/glide/load/engine/EngineJobListener;

.field private final sourceService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Lccsancom/bumptech/glide/load/engine/EngineJobListener;)V
    .locals 0
    .param p1, "diskCacheService"    # Ljava/util/concurrent/ExecutorService;
    .param p2, "sourceService"    # Ljava/util/concurrent/ExecutorService;
    .param p3, "listener"    # Lccsancom/bumptech/glide/load/engine/EngineJobListener;

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    iput-object p1, p0, Lccsancom/bumptech/glide/load/engine/Engine$EngineJobFactory;->diskCacheService:Ljava/util/concurrent/ExecutorService;

    .line 375
    iput-object p2, p0, Lccsancom/bumptech/glide/load/engine/Engine$EngineJobFactory;->sourceService:Ljava/util/concurrent/ExecutorService;

    .line 376
    iput-object p3, p0, Lccsancom/bumptech/glide/load/engine/Engine$EngineJobFactory;->listener:Lccsancom/bumptech/glide/load/engine/EngineJobListener;

    .line 377
    return-void
.end method


# virtual methods
.method public build(Lccsancom/bumptech/glide/load/Key;Z)Lccsancom/bumptech/glide/load/engine/EngineJob;
    .locals 7
    .param p1, "key"    # Lccsancom/bumptech/glide/load/Key;
    .param p2, "isMemoryCacheable"    # Z

    .line 380
    new-instance v6, Lccsancom/bumptech/glide/load/engine/EngineJob;

    iget-object v2, p0, Lccsancom/bumptech/glide/load/engine/Engine$EngineJobFactory;->diskCacheService:Ljava/util/concurrent/ExecutorService;

    iget-object v3, p0, Lccsancom/bumptech/glide/load/engine/Engine$EngineJobFactory;->sourceService:Ljava/util/concurrent/ExecutorService;

    iget-object v5, p0, Lccsancom/bumptech/glide/load/engine/Engine$EngineJobFactory;->listener:Lccsancom/bumptech/glide/load/engine/EngineJobListener;

    move-object v0, v6

    move-object v1, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lccsancom/bumptech/glide/load/engine/EngineJob;-><init>(Lccsancom/bumptech/glide/load/Key;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;ZLccsancom/bumptech/glide/load/engine/EngineJobListener;)V

    return-object v6
.end method
