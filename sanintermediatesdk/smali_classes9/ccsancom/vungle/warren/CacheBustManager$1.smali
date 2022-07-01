.class Lccsancom/vungle/warren/CacheBustManager$1;
.super Lccsancom/vungle/warren/utility/ActivityManager$LifeCycleCallback;
.source "CacheBustManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/CacheBustManager;->setLifecycleListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/CacheBustManager;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/CacheBustManager;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/CacheBustManager;

    .line 77
    iput-object p1, p0, Lccsancom/vungle/warren/CacheBustManager$1;->this$0:Lccsancom/vungle/warren/CacheBustManager;

    invoke-direct {p0}, Lccsancom/vungle/warren/utility/ActivityManager$LifeCycleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 6

    .line 80
    invoke-super {p0}, Lccsancom/vungle/warren/utility/ActivityManager$LifeCycleCallback;->onStart()V

    .line 81
    iget-object v0, p0, Lccsancom/vungle/warren/CacheBustManager$1;->this$0:Lccsancom/vungle/warren/CacheBustManager;

    invoke-static {v0}, Lccsancom/vungle/warren/CacheBustManager;->access$000(Lccsancom/vungle/warren/CacheBustManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/vungle/warren/CacheBustManager$1;->this$0:Lccsancom/vungle/warren/CacheBustManager;

    iget-wide v0, v0, Lccsancom/vungle/warren/CacheBustManager;->refreshRate:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 82
    iget-object v0, p0, Lccsancom/vungle/warren/CacheBustManager$1;->this$0:Lccsancom/vungle/warren/CacheBustManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsancom/vungle/warren/CacheBustManager;->access$002(Lccsancom/vungle/warren/CacheBustManager;Z)Z

    .line 83
    new-instance v0, Lccsanandroid/os/Bundle;

    invoke-direct {v0}, Lccsanandroid/os/Bundle;-><init>()V

    .line 84
    .local v0, "bundle":Lccsanandroid/os/Bundle;
    iget-object v2, p0, Lccsancom/vungle/warren/CacheBustManager$1;->this$0:Lccsancom/vungle/warren/CacheBustManager;

    iget-wide v2, v2, Lccsancom/vungle/warren/CacheBustManager;->refreshRate:J

    const-string v4, "cache_bust_interval"

    invoke-virtual {v0, v4, v2, v3}, Lccsanandroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 85
    nop

    .line 86
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lccsancom/vungle/warren/CacheBustManager$1;->this$0:Lccsancom/vungle/warren/CacheBustManager;

    iget-wide v4, v4, Lccsancom/vungle/warren/CacheBustManager;->refreshRate:J

    add-long/2addr v2, v4

    .line 85
    const-string v4, "next_cache_bust"

    invoke-virtual {v0, v4, v2, v3}, Lccsanandroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 87
    iget-object v2, p0, Lccsancom/vungle/warren/CacheBustManager$1;->this$0:Lccsancom/vungle/warren/CacheBustManager;

    invoke-static {v2}, Lccsancom/vungle/warren/CacheBustManager;->access$100(Lccsancom/vungle/warren/CacheBustManager;)Lccsancom/vungle/warren/tasks/JobRunner;

    move-result-object v2

    .line 88
    invoke-static {}, Lccsancom/vungle/warren/tasks/CacheBustJob;->makeJobInfo()Lccsancom/vungle/warren/tasks/JobInfo;

    move-result-object v3

    iget-object v4, p0, Lccsancom/vungle/warren/CacheBustManager$1;->this$0:Lccsancom/vungle/warren/CacheBustManager;

    iget-wide v4, v4, Lccsancom/vungle/warren/CacheBustManager;->refreshRate:J

    .line 89
    invoke-virtual {v3, v4, v5}, Lccsancom/vungle/warren/tasks/JobInfo;->setDelay(J)Lccsancom/vungle/warren/tasks/JobInfo;

    move-result-object v3

    iget-object v4, p0, Lccsancom/vungle/warren/CacheBustManager$1;->this$0:Lccsancom/vungle/warren/CacheBustManager;

    iget-wide v4, v4, Lccsancom/vungle/warren/CacheBustManager;->refreshRate:J

    .line 90
    invoke-virtual {v3, v4, v5, v1}, Lccsancom/vungle/warren/tasks/JobInfo;->setReschedulePolicy(JI)Lccsancom/vungle/warren/tasks/JobInfo;

    move-result-object v1

    .line 91
    invoke-virtual {v1, v0}, Lccsancom/vungle/warren/tasks/JobInfo;->setExtras(Lccsanandroid/os/Bundle;)Lccsancom/vungle/warren/tasks/JobInfo;

    move-result-object v1

    .line 87
    invoke-interface {v2, v1}, Lccsancom/vungle/warren/tasks/JobRunner;->execute(Lccsancom/vungle/warren/tasks/JobInfo;)V

    .line 94
    .end local v0    # "bundle":Lccsanandroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 98
    invoke-super {p0}, Lccsancom/vungle/warren/utility/ActivityManager$LifeCycleCallback;->onStop()V

    .line 99
    iget-object v0, p0, Lccsancom/vungle/warren/CacheBustManager$1;->this$0:Lccsancom/vungle/warren/CacheBustManager;

    invoke-static {v0}, Lccsancom/vungle/warren/CacheBustManager;->access$100(Lccsancom/vungle/warren/CacheBustManager;)Lccsancom/vungle/warren/tasks/JobRunner;

    move-result-object v0

    sget-object v1, Lccsancom/vungle/warren/tasks/CacheBustJob;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Lccsancom/vungle/warren/tasks/JobRunner;->cancelPendingJob(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lccsancom/vungle/warren/CacheBustManager$1;->this$0:Lccsancom/vungle/warren/CacheBustManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lccsancom/vungle/warren/CacheBustManager;->access$002(Lccsancom/vungle/warren/CacheBustManager;Z)Z

    .line 101
    return-void
.end method
