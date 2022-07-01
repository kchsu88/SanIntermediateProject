.class final Lccsanandroidx/core/app/JobIntentService$CompatWorkEnqueuer;
.super Lccsanandroidx/core/app/JobIntentService$WorkEnqueuer;
.source "JobIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/app/JobIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CompatWorkEnqueuer"
.end annotation


# instance fields
.field private final mContext:Lccsanandroid/content/Context;

.field private final mLaunchWakeLock:Lccsanandroid/os/PowerManager$WakeLock;

.field mLaunchingService:Z

.field private final mRunWakeLock:Lccsanandroid/os/PowerManager$WakeLock;

.field mServiceProcessing:Z


# direct methods
.method constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/content/ComponentName;)V
    .locals 5
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "cn"    # Lccsanandroid/content/ComponentName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "cn"
        }
    .end annotation

    .line 167
    invoke-direct {p0, p2}, Lccsanandroidx/core/app/JobIntentService$WorkEnqueuer;-><init>(Lccsanandroid/content/ComponentName;)V

    .line 168
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/core/app/JobIntentService$CompatWorkEnqueuer;->mContext:Lccsanandroid/content/Context;

    .line 172
    const-string v0, "power"

    invoke-virtual {p1, v0}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/os/PowerManager;

    .line 173
    .local v0, "pm":Lccsanandroid/os/PowerManager;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    invoke-virtual {p2}, Lccsanandroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":launch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 173
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lccsanandroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Lccsanandroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lccsanandroidx/core/app/JobIntentService$CompatWorkEnqueuer;->mLaunchWakeLock:Lccsanandroid/os/PowerManager$WakeLock;

    .line 175
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lccsanandroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    invoke-virtual {p2}, Lccsanandroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":run"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 176
    invoke-virtual {v0, v2, v1}, Lccsanandroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Lccsanandroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lccsanandroidx/core/app/JobIntentService$CompatWorkEnqueuer;->mRunWakeLock:Lccsanandroid/os/PowerManager$WakeLock;

    .line 178
    invoke-virtual {v1, v3}, Lccsanandroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 179
    return-void
.end method


# virtual methods
.method enqueueWork(Lccsanandroid/content/Intent;)V
    .locals 4
    .param p1, "work"    # Lccsanandroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "work"
        }
    .end annotation

    .line 183
    new-instance v0, Lccsanandroid/content/Intent;

    invoke-direct {v0, p1}, Lccsanandroid/content/Intent;-><init>(Lccsanandroid/content/Intent;)V

    .line 184
    .local v0, "intent":Lccsanandroid/content/Intent;
    iget-object v1, p0, Lccsanandroidx/core/app/JobIntentService$CompatWorkEnqueuer;->mComponentName:Lccsanandroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lccsanandroid/content/Intent;->setComponent(Lccsanandroid/content/ComponentName;)Lccsanandroid/content/Intent;

    .line 186
    iget-object v1, p0, Lccsanandroidx/core/app/JobIntentService$CompatWorkEnqueuer;->mContext:Lccsanandroid/content/Context;

    invoke-virtual {v1, v0}, Lccsanandroid/content/Context;->startService(Lccsanandroid/content/Intent;)Lccsanandroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 187
    monitor-enter p0

    .line 188
    :try_start_0
    iget-boolean v1, p0, Lccsanandroidx/core/app/JobIntentService$CompatWorkEnqueuer;->mLaunchingService:Z

    if-nez v1, :cond_0

    .line 189
    const/4 v1, 0x1

    iput-boolean v1, p0, Lccsanandroidx/core/app/JobIntentService$CompatWorkEnqueuer;->mLaunchingService:Z

    .line 190
    iget-boolean v1, p0, Lccsanandroidx/core/app/JobIntentService$CompatWorkEnqueuer;->mServiceProcessing:Z

    if-nez v1, :cond_0

    .line 196
    iget-object v1, p0, Lccsanandroidx/core/app/JobIntentService$CompatWorkEnqueuer;->mLaunchWakeLock:Lccsanandroid/os/PowerManager$WakeLock;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v2, v3}, Lccsanandroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 199
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 201
    :cond_1
    :goto_0
    return-void
.end method

.method public serviceProcessingFinished()V
    .locals 3

    .line 228
    monitor-enter p0

    .line 229
    :try_start_0
    iget-boolean v0, p0, Lccsanandroidx/core/app/JobIntentService$CompatWorkEnqueuer;->mServiceProcessing:Z

    if-eqz v0, :cond_1

    .line 232
    iget-boolean v0, p0, Lccsanandroidx/core/app/JobIntentService$CompatWorkEnqueuer;->mLaunchingService:Z

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lccsanandroidx/core/app/JobIntentService$CompatWorkEnqueuer;->mLaunchWakeLock:Lccsanandroid/os/PowerManager$WakeLock;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Lccsanandroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 235
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsanandroidx/core/app/JobIntentService$CompatWorkEnqueuer;->mServiceProcessing:Z

    .line 236
    iget-object v0, p0, Lccsanandroidx/core/app/JobIntentService$CompatWorkEnqueuer;->mRunWakeLock:Lccsanandroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Lccsanandroid/os/PowerManager$WakeLock;->release()V

    .line 238
    :cond_1
    monitor-exit p0

    .line 239
    return-void

    .line 238
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public serviceProcessingStarted()V
    .locals 3

    .line 214
    monitor-enter p0

    .line 216
    :try_start_0
    iget-boolean v0, p0, Lccsanandroidx/core/app/JobIntentService$CompatWorkEnqueuer;->mServiceProcessing:Z

    if-nez v0, :cond_0

    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/core/app/JobIntentService$CompatWorkEnqueuer;->mServiceProcessing:Z

    .line 220
    iget-object v0, p0, Lccsanandroidx/core/app/JobIntentService$CompatWorkEnqueuer;->mRunWakeLock:Lccsanandroid/os/PowerManager$WakeLock;

    const-wide/32 v1, 0x927c0

    invoke-virtual {v0, v1, v2}, Lccsanandroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 221
    iget-object v0, p0, Lccsanandroidx/core/app/JobIntentService$CompatWorkEnqueuer;->mLaunchWakeLock:Lccsanandroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Lccsanandroid/os/PowerManager$WakeLock;->release()V

    .line 223
    :cond_0
    monitor-exit p0

    .line 224
    return-void

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public serviceStartReceived()V
    .locals 1

    .line 205
    monitor-enter p0

    .line 208
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lccsanandroidx/core/app/JobIntentService$CompatWorkEnqueuer;->mLaunchingService:Z

    .line 209
    monitor-exit p0

    .line 210
    return-void

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
