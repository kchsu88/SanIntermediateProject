.class Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/SimpleCache$1;
.super Ljava/lang/Thread;
.source "SimpleCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/SimpleCache;-><init>(Ljava/io/File;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheEvictor;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CachedContentIndex;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/SimpleCache;

.field final synthetic val$conditionVariable:Lccsanandroid/os/ConditionVariable;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/SimpleCache;Ljava/lang/String;Lccsanandroid/os/ConditionVariable;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/SimpleCache$1;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/SimpleCache;

    iput-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/SimpleCache$1;->val$conditionVariable:Lccsanandroid/os/ConditionVariable;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 137
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/SimpleCache$1;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/SimpleCache;

    monitor-enter v0

    .line 138
    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/SimpleCache$1;->val$conditionVariable:Lccsanandroid/os/ConditionVariable;

    invoke-virtual {v1}, Lccsanandroid/os/ConditionVariable;->open()V

    .line 139
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/SimpleCache$1;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/SimpleCache;

    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/SimpleCache;->access$000(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/SimpleCache;)V

    .line 140
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/SimpleCache$1;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/SimpleCache;

    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/SimpleCache;->access$100(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/SimpleCache;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheEvictor;

    move-result-object v1

    invoke-interface {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheEvictor;->onCacheInitialized()V

    .line 141
    monitor-exit v0

    .line 142
    return-void

    .line 141
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
