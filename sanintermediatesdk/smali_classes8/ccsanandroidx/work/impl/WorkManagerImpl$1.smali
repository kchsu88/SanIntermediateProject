.class Lccsanandroidx/work/impl/WorkManagerImpl$1;
.super Ljava/lang/Object;
.source "WorkManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/work/impl/WorkManagerImpl;->getLastCancelAllTimeMillis()Lccsancom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/work/impl/WorkManagerImpl;

.field final synthetic val$future:Lccsanandroidx/work/impl/utils/futures/SettableFuture;

.field final synthetic val$preferences:Lccsanandroidx/work/impl/utils/Preferences;


# direct methods
.method constructor <init>(Lccsanandroidx/work/impl/WorkManagerImpl;Lccsanandroidx/work/impl/utils/futures/SettableFuture;Lccsanandroidx/work/impl/utils/Preferences;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/work/impl/WorkManagerImpl;

    .line 438
    iput-object p1, p0, Lccsanandroidx/work/impl/WorkManagerImpl$1;->this$0:Lccsanandroidx/work/impl/WorkManagerImpl;

    iput-object p2, p0, Lccsanandroidx/work/impl/WorkManagerImpl$1;->val$future:Lccsanandroidx/work/impl/utils/futures/SettableFuture;

    iput-object p3, p0, Lccsanandroidx/work/impl/WorkManagerImpl$1;->val$preferences:Lccsanandroidx/work/impl/utils/Preferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 442
    :try_start_0
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkManagerImpl$1;->val$future:Lccsanandroidx/work/impl/utils/futures/SettableFuture;

    iget-object v1, p0, Lccsanandroidx/work/impl/WorkManagerImpl$1;->val$preferences:Lccsanandroidx/work/impl/utils/Preferences;

    invoke-virtual {v1}, Lccsanandroidx/work/impl/utils/Preferences;->getLastCancelAllTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroidx/work/impl/utils/futures/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    goto :goto_0

    .line 443
    :catchall_0
    move-exception v0

    .line 444
    .local v0, "throwable":Ljava/lang/Throwable;
    iget-object v1, p0, Lccsanandroidx/work/impl/WorkManagerImpl$1;->val$future:Lccsanandroidx/work/impl/utils/futures/SettableFuture;

    invoke-virtual {v1, v0}, Lccsanandroidx/work/impl/utils/futures/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 446
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
