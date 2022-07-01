.class Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$1;
.super Ljava/lang/Object;
.source "SystemAlarmDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->processCommand()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;


# direct methods
.method constructor <init>(Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    .line 252
    iput-object p1, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$1;->this$0:Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 255
    iget-object v0, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$1;->this$0:Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    iget-object v0, v0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mIntents:Ljava/util/List;

    monitor-enter v0

    .line 256
    :try_start_0
    iget-object v1, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$1;->this$0:Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    iget-object v2, v1, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mIntents:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroid/content/Intent;

    iput-object v2, v1, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mCurrentIntent:Lccsanandroid/content/Intent;

    .line 257
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 259
    iget-object v0, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$1;->this$0:Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    iget-object v0, v0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mCurrentIntent:Lccsanandroid/content/Intent;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$1;->this$0:Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    iget-object v0, v0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mCurrentIntent:Lccsanandroid/content/Intent;

    invoke-virtual {v0}, Lccsanandroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$1;->this$0:Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    iget-object v1, v1, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mCurrentIntent:Lccsanandroid/content/Intent;

    const-string v2, "KEY_START_ID"

    invoke-virtual {v1, v2, v3}, Lccsanandroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 263
    .local v1, "startId":I
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v2

    sget-object v4, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->TAG:Ljava/lang/String;

    const-string v5, "Processing command %s, %s"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    iget-object v8, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$1;->this$0:Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    iget-object v8, v8, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mCurrentIntent:Lccsanandroid/content/Intent;

    aput-object v8, v7, v3

    .line 265
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    .line 264
    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v7, v3, [Ljava/lang/Throwable;

    .line 263
    invoke-virtual {v2, v4, v5, v7}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 266
    iget-object v2, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$1;->this$0:Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    iget-object v2, v2, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mContext:Lccsanandroid/content/Context;

    const-string v4, "%s (%s)"

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v0, v5, v3

    .line 268
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 266
    invoke-static {v2, v4}, Lccsanandroidx/work/impl/utils/WakeLocks;->newWakeLock(Lccsanandroid/content/Context;Ljava/lang/String;)Lccsanandroid/os/PowerManager$WakeLock;

    move-result-object v2

    .line 270
    .local v2, "wakeLock":Lccsanandroid/os/PowerManager$WakeLock;
    :try_start_1
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v4

    sget-object v5, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->TAG:Ljava/lang/String;

    const-string v7, "Acquiring operation wake lock (%s) %s"

    new-array v8, v6, [Ljava/lang/Object;

    aput-object v0, v8, v3

    aput-object v2, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v3, [Ljava/lang/Throwable;

    invoke-virtual {v4, v5, v7, v8}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 275
    invoke-virtual {v2}, Lccsanandroid/os/PowerManager$WakeLock;->acquire()V

    .line 276
    iget-object v4, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$1;->this$0:Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    iget-object v4, v4, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mCommandHandler:Lccsanandroidx/work/impl/background/systemalarm/CommandHandler;

    iget-object v5, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$1;->this$0:Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    iget-object v5, v5, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mCurrentIntent:Lccsanandroid/content/Intent;

    iget-object v7, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$1;->this$0:Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    invoke-virtual {v4, v5, v1, v7}, Lccsanandroidx/work/impl/background/systemalarm/CommandHandler;->onHandleIntent(Lccsanandroid/content/Intent;ILccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 284
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v4

    sget-object v5, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->TAG:Ljava/lang/String;

    const-string v7, "Releasing operation wake lock (%s) %s"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v3

    aput-object v2, v6, v9

    .line 286
    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v3, v3, [Ljava/lang/Throwable;

    .line 284
    invoke-virtual {v4, v5, v6, v3}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 290
    invoke-virtual {v2}, Lccsanandroid/os/PowerManager$WakeLock;->release()V

    .line 292
    iget-object v3, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$1;->this$0:Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    new-instance v4, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$DequeueAndCheckForCompletion;

    invoke-direct {v4, v3}, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$DequeueAndCheckForCompletion;-><init>(Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;)V

    goto :goto_0

    .line 278
    :catchall_0
    move-exception v4

    .line 279
    .local v4, "throwable":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v5

    sget-object v7, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->TAG:Ljava/lang/String;

    const-string v8, "Unexpected error in onHandleIntent"

    new-array v10, v9, [Ljava/lang/Throwable;

    aput-object v4, v10, v3

    invoke-virtual {v5, v7, v8, v10}, Lccsanandroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 284
    .end local v4    # "throwable":Ljava/lang/Throwable;
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v4

    sget-object v5, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->TAG:Ljava/lang/String;

    const-string v7, "Releasing operation wake lock (%s) %s"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v3

    aput-object v2, v6, v9

    .line 286
    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v3, v3, [Ljava/lang/Throwable;

    .line 284
    invoke-virtual {v4, v5, v6, v3}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 290
    invoke-virtual {v2}, Lccsanandroid/os/PowerManager$WakeLock;->release()V

    .line 292
    iget-object v3, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$1;->this$0:Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    new-instance v4, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$DequeueAndCheckForCompletion;

    invoke-direct {v4, v3}, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$DequeueAndCheckForCompletion;-><init>(Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;)V

    :goto_0
    invoke-virtual {v3, v4}, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 294
    goto :goto_1

    .line 284
    :catchall_1
    move-exception v4

    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v5

    sget-object v7, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->TAG:Ljava/lang/String;

    const-string v8, "Releasing operation wake lock (%s) %s"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v3

    aput-object v2, v6, v9

    .line 286
    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v3, v3, [Ljava/lang/Throwable;

    .line 284
    invoke-virtual {v5, v7, v6, v3}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 290
    invoke-virtual {v2}, Lccsanandroid/os/PowerManager$WakeLock;->release()V

    .line 292
    iget-object v3, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$1;->this$0:Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    new-instance v5, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$DequeueAndCheckForCompletion;

    invoke-direct {v5, v3}, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$DequeueAndCheckForCompletion;-><init>(Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;)V

    invoke-virtual {v3, v5}, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 294
    throw v4

    .line 296
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "startId":I
    .end local v2    # "wakeLock":Lccsanandroid/os/PowerManager$WakeLock;
    :cond_0
    :goto_1
    return-void

    .line 257
    :catchall_2
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1
.end method
