.class Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager;
.super Ljava/lang/Object;
.source "NotificationManagerCompat.java"

# interfaces
.implements Lccsanandroid/os/Handler$Callback;
.implements Lccsanandroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/app/NotificationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SideChannelManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;
    }
.end annotation


# static fields
.field private static final MSG_QUEUE_TASK:I = 0x0

.field private static final MSG_RETRY_LISTENER_QUEUE:I = 0x3

.field private static final MSG_SERVICE_CONNECTED:I = 0x1

.field private static final MSG_SERVICE_DISCONNECTED:I = 0x2


# instance fields
.field private mCachedEnabledPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Lccsanandroid/content/Context;

.field private final mHandler:Lccsanandroid/os/Handler;

.field private final mHandlerThread:Lccsanandroid/os/HandlerThread;

.field private final mRecordMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lccsanandroid/content/ComponentName;",
            "Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lccsanandroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 709
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 705
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager;->mRecordMap:Ljava/util/Map;

    .line 707
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager;->mCachedEnabledPackages:Ljava/util/Set;

    .line 710
    iput-object p1, p0, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager;->mContext:Lccsanandroid/content/Context;

    .line 711
    new-instance v0, Lccsanandroid/os/HandlerThread;

    const-string v1, "NotificationManagerCompat"

    invoke-direct {v0, v1}, Lccsanandroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager;->mHandlerThread:Lccsanandroid/os/HandlerThread;

    .line 712
    invoke-virtual {v0}, Lccsanandroid/os/HandlerThread;->start()V

    .line 713
    new-instance v1, Lccsanandroid/os/Handler;

    invoke-virtual {v0}, Lccsanandroid/os/HandlerThread;->getLooper()Lccsanandroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;Lccsanandroid/os/Handler$Callback;)V

    iput-object v1, p0, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager;->mHandler:Lccsanandroid/os/Handler;

    .line 714
    return-void
.end method

.method private ensureServiceBound(Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;)Z
    .locals 3
    .param p1, "record"    # Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "record"
        }
    .end annotation

    .line 850
    iget-boolean v0, p1, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->bound:Z

    if-eqz v0, :cond_0

    .line 851
    const/4 v0, 0x1

    return v0

    .line 853
    :cond_0
    new-instance v0, Lccsanandroid/content/Intent;

    const-string v1, "android.support.BIND_NOTIFICATION_SIDE_CHANNEL"

    invoke-direct {v0, v1}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->componentName:Lccsanandroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lccsanandroid/content/Intent;->setComponent(Lccsanandroid/content/ComponentName;)Lccsanandroid/content/Intent;

    move-result-object v0

    .line 854
    .local v0, "intent":Lccsanandroid/content/Intent;
    iget-object v1, p0, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager;->mContext:Lccsanandroid/content/Context;

    const/16 v2, 0x21

    invoke-virtual {v1, v0, p0, v2}, Lccsanandroid/content/Context;->bindService(Lccsanandroid/content/Intent;Lccsanandroid/content/ServiceConnection;I)Z

    move-result v1

    iput-boolean v1, p1, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->bound:Z

    .line 856
    iget-boolean v1, p1, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->bound:Z

    if-eqz v1, :cond_1

    .line 857
    const/4 v1, 0x0

    iput v1, p1, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->retryCount:I

    goto :goto_0

    .line 859
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to bind to listener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->componentName:Lccsanandroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NotifManCompat"

    invoke-static {v2, v1}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    iget-object v1, p0, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager;->mContext:Lccsanandroid/content/Context;

    invoke-virtual {v1, p0}, Lccsanandroid/content/Context;->unbindService(Lccsanandroid/content/ServiceConnection;)V

    .line 862
    :goto_0
    iget-boolean v1, p1, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->bound:Z

    return v1
.end method

.method private ensureServiceUnbound(Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;)V
    .locals 1
    .param p1, "record"    # Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "record"
        }
    .end annotation

    .line 869
    iget-boolean v0, p1, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->bound:Z

    if-eqz v0, :cond_0

    .line 870
    iget-object v0, p0, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager;->mContext:Lccsanandroid/content/Context;

    invoke-virtual {v0, p0}, Lccsanandroid/content/Context;->unbindService(Lccsanandroid/content/ServiceConnection;)V

    .line 871
    const/4 v0, 0x0

    iput-boolean v0, p1, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->bound:Z

    .line 873
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p1, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->service:Lccsanandroid/support/v4/app/INotificationSideChannel;

    .line 874
    return-void
.end method

.method private handleQueueTask(Lccsanandroidx/core/app/NotificationManagerCompat$Task;)V
    .locals 3
    .param p1, "task"    # Lccsanandroidx/core/app/NotificationManagerCompat$Task;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "task"
        }
    .end annotation

    .line 745
    invoke-direct {p0}, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager;->updateListenerMap()V

    .line 746
    iget-object v0, p0, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager;->mRecordMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;

    .line 747
    .local v1, "record":Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;
    iget-object v2, v1, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->taskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 748
    invoke-direct {p0, v1}, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager;->processListenerQueue(Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;)V

    .line 749
    .end local v1    # "record":Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;
    goto :goto_0

    .line 750
    :cond_0
    return-void
.end method

.method private handleRetryListenerQueue(Lccsanandroid/content/ComponentName;)V
    .locals 1
    .param p1, "componentName"    # Lccsanandroid/content/ComponentName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "componentName"
        }
    .end annotation

    .line 769
    iget-object v0, p0, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager;->mRecordMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;

    .line 770
    .local v0, "record":Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;
    if-eqz v0, :cond_0

    .line 771
    invoke-direct {p0, v0}, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager;->processListenerQueue(Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;)V

    .line 773
    :cond_0
    return-void
.end method

.method private handleServiceConnected(Lccsanandroid/content/ComponentName;Lccsanandroid/os/IBinder;)V
    .locals 2
    .param p1, "componentName"    # Lccsanandroid/content/ComponentName;
    .param p2, "iBinder"    # Lccsanandroid/os/IBinder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "componentName",
            "iBinder"
        }
    .end annotation

    .line 753
    iget-object v0, p0, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager;->mRecordMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;

    .line 754
    .local v0, "record":Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;
    if-eqz v0, :cond_0

    .line 755
    invoke-static {p2}, Lccsanandroid/support/v4/app/INotificationSideChannel$Stub;->asInterface(Lccsanandroid/os/IBinder;)Lccsanandroid/support/v4/app/INotificationSideChannel;

    move-result-object v1

    iput-object v1, v0, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->service:Lccsanandroid/support/v4/app/INotificationSideChannel;

    .line 756
    const/4 v1, 0x0

    iput v1, v0, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->retryCount:I

    .line 757
    invoke-direct {p0, v0}, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager;->processListenerQueue(Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;)V

    .line 759
    :cond_0
    return-void
.end method

.method private handleServiceDisconnected(Lccsanandroid/content/ComponentName;)V
    .locals 1
    .param p1, "componentName"    # Lccsanandroid/content/ComponentName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "componentName"
        }
    .end annotation

    .line 762
    iget-object v0, p0, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager;->mRecordMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;

    .line 763
    .local v0, "record":Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;
    if-eqz v0, :cond_0

    .line 764
    invoke-direct {p0, v0}, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager;->ensureServiceUnbound(Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;)V

    .line 766
    :cond_0
    return-void
.end method

.method private processListenerQueue(Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;)V
    .locals 5
    .param p1, "record"    # Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "record"
        }
    .end annotation

    .line 905
    const-string v0, "NotifManCompat"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 906
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Processing component "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->componentName:Lccsanandroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->taskQueue:Ljava/util/ArrayDeque;

    .line 907
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " queued tasks"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 906
    invoke-static {v0, v2}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    :cond_0
    iget-object v2, p1, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->taskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 910
    return-void

    .line 912
    :cond_1
    invoke-direct {p0, p1}, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager;->ensureServiceBound(Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p1, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->service:Lccsanandroid/support/v4/app/INotificationSideChannel;

    if-nez v2, :cond_2

    goto/16 :goto_2

    .line 919
    :cond_2
    :goto_0
    iget-object v2, p1, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->taskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroidx/core/app/NotificationManagerCompat$Task;

    .line 920
    .local v2, "task":Lccsanandroidx/core/app/NotificationManagerCompat$Task;
    if-nez v2, :cond_3

    .line 921
    goto :goto_1

    .line 924
    :cond_3
    :try_start_0
    invoke-static {v0, v1}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 925
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending task "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    :cond_4
    iget-object v3, p1, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->service:Lccsanandroid/support/v4/app/INotificationSideChannel;

    invoke-interface {v2, v3}, Lccsanandroidx/core/app/NotificationManagerCompat$Task;->send(Lccsanandroid/support/v4/app/INotificationSideChannel;)V

    .line 928
    iget-object v3, p1, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->taskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;
    :try_end_0
    .catch Lccsanandroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lccsanandroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 937
    nop

    .line 938
    .end local v2    # "task":Lccsanandroidx/core/app/NotificationManagerCompat$Task;
    goto :goto_0

    .line 934
    .restart local v2    # "task":Lccsanandroidx/core/app/NotificationManagerCompat$Task;
    :catch_0
    move-exception v1

    .line 935
    .local v1, "e":Lccsanandroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException communicating with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->componentName:Lccsanandroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 936
    goto :goto_1

    .line 929
    .end local v1    # "e":Lccsanandroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 930
    .local v3, "e":Lccsanandroid/os/DeadObjectException;
    invoke-static {v0, v1}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 931
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote service has died: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->componentName:Lccsanandroid/content/ComponentName;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    :cond_5
    nop

    .line 939
    .end local v2    # "task":Lccsanandroidx/core/app/NotificationManagerCompat$Task;
    .end local v3    # "e":Lccsanandroid/os/DeadObjectException;
    :goto_1
    iget-object v0, p1, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->taskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 941
    invoke-direct {p0, p1}, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager;->scheduleListenerRetry(Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;)V

    .line 943
    :cond_6
    return-void

    .line 914
    :cond_7
    :goto_2
    invoke-direct {p0, p1}, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager;->scheduleListenerRetry(Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;)V

    .line 915
    return-void
.end method

.method private scheduleListenerRetry(Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;)V
    .locals 5
    .param p1, "record"    # Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "record"
        }
    .end annotation

    .line 882
    iget-object v0, p0, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager;->mHandler:Lccsanandroid/os/Handler;

    iget-object v1, p1, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->componentName:Lccsanandroid/content/ComponentName;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lccsanandroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 883
    return-void

    .line 885
    :cond_0
    iget v0, p1, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->retryCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p1, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->retryCount:I

    .line 886
    iget v0, p1, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->retryCount:I

    const/4 v3, 0x6

    const-string v4, "NotifManCompat"

    if-le v0, v3, :cond_1

    .line 887
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Giving up on delivering "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->taskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " tasks to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->componentName:Lccsanandroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->retryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " retries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    iget-object v0, p1, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->taskQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 890
    return-void

    .line 892
    :cond_1
    iget v0, p1, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->retryCount:I

    sub-int/2addr v0, v1

    shl-int v0, v1, v0

    mul-int/lit16 v0, v0, 0x3e8

    .line 893
    .local v0, "delayMs":I
    invoke-static {v4, v2}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 894
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheduling retry for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ms"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    :cond_2
    iget-object v1, p0, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager;->mHandler:Lccsanandroid/os/Handler;

    iget-object v3, p1, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->componentName:Lccsanandroid/content/ComponentName;

    invoke-virtual {v1, v2, v3}, Lccsanandroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Lccsanandroid/os/Message;

    move-result-object v1

    .line 897
    .local v1, "msg":Lccsanandroid/os/Message;
    iget-object v2, p0, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager;->mHandler:Lccsanandroid/os/Handler;

    int-to-long v3, v0

    invoke-virtual {v2, v1, v3, v4}, Lccsanandroid/os/Handler;->sendMessageDelayed(Lccsanandroid/os/Message;J)Z

    .line 898
    return-void
.end method

.method private updateListenerMap()V
    .locals 9

    .line 798
    iget-object v0, p0, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager;->mContext:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsanandroidx/core/app/NotificationManagerCompat;->getEnabledListenerPackages(Lccsanandroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 799
    .local v0, "enabledPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager;->mCachedEnabledPackages:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 801
    return-void

    .line 803
    :cond_0
    iput-object v0, p0, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager;->mCachedEnabledPackages:Ljava/util/Set;

    .line 804
    iget-object v1, p0, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager;->mContext:Lccsanandroid/content/Context;

    invoke-virtual {v1}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Lccsanandroid/content/Intent;

    invoke-direct {v2}, Lccsanandroid/content/Intent;-><init>()V

    .line 805
    const-string v3, "android.support.BIND_NOTIFICATION_SIDE_CHANNEL"

    invoke-virtual {v2, v3}, Lccsanandroid/content/Intent;->setAction(Ljava/lang/String;)Lccsanandroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    .line 804
    invoke-virtual {v1, v2, v3}, Lccsanandroid/content/pm/PackageManager;->queryIntentServices(Lccsanandroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 806
    .local v1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/content/pm/ResolveInfo;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 807
    .local v2, "enabledComponents":Ljava/util/Set;, "Ljava/util/Set<Lccsanandroid/content/ComponentName;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "NotifManCompat"

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsanandroid/content/pm/ResolveInfo;

    .line 808
    .local v4, "resolveInfo":Lccsanandroid/content/pm/ResolveInfo;
    iget-object v6, v4, Lccsanandroid/content/pm/ResolveInfo;->serviceInfo:Lccsanandroid/content/pm/ServiceInfo;

    iget-object v6, v6, Lccsanandroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 809
    goto :goto_0

    .line 811
    :cond_1
    new-instance v6, Lccsanandroid/content/ComponentName;

    iget-object v7, v4, Lccsanandroid/content/pm/ResolveInfo;->serviceInfo:Lccsanandroid/content/pm/ServiceInfo;

    iget-object v7, v7, Lccsanandroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v8, v4, Lccsanandroid/content/pm/ResolveInfo;->serviceInfo:Lccsanandroid/content/pm/ServiceInfo;

    iget-object v8, v8, Lccsanandroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Lccsanandroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    .local v6, "componentName":Lccsanandroid/content/ComponentName;
    iget-object v7, v4, Lccsanandroid/content/pm/ResolveInfo;->serviceInfo:Lccsanandroid/content/pm/ServiceInfo;

    iget-object v7, v7, Lccsanandroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 814
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permission present on component "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", not adding listener record."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    goto :goto_0

    .line 818
    :cond_2
    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 819
    .end local v4    # "resolveInfo":Lccsanandroid/content/pm/ResolveInfo;
    .end local v6    # "componentName":Lccsanandroid/content/ComponentName;
    goto :goto_0

    .line 821
    :cond_3
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v6, 0x3

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsanandroid/content/ComponentName;

    .line 822
    .local v4, "componentName":Lccsanandroid/content/ComponentName;
    iget-object v7, p0, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager;->mRecordMap:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 823
    invoke-static {v5, v6}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 824
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Adding listener record for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    :cond_4
    iget-object v6, p0, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager;->mRecordMap:Ljava/util/Map;

    new-instance v7, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;

    invoke-direct {v7, v4}, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;-><init>(Lccsanandroid/content/ComponentName;)V

    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    .end local v4    # "componentName":Lccsanandroid/content/ComponentName;
    :cond_5
    goto :goto_1

    .line 830
    :cond_6
    iget-object v3, p0, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager;->mRecordMap:Ljava/util/Map;

    .line 831
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 832
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lccsanandroid/content/ComponentName;Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;>;>;"
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 833
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 834
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lccsanandroid/content/ComponentName;Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 835
    invoke-static {v5, v6}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 836
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removing listener record for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    :cond_7
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;

    invoke-direct {p0, v7}, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager;->ensureServiceUnbound(Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;)V

    .line 839
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 841
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lccsanandroid/content/ComponentName;Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;>;"
    :cond_8
    goto :goto_2

    .line 842
    :cond_9
    return-void
.end method


# virtual methods
.method public handleMessage(Lccsanandroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Lccsanandroid/os/Message;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 726
    iget v0, p1, Lccsanandroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 741
    const/4 v0, 0x0

    return v0

    .line 738
    :pswitch_0
    iget-object v0, p1, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lccsanandroid/content/ComponentName;

    invoke-direct {p0, v0}, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager;->handleRetryListenerQueue(Lccsanandroid/content/ComponentName;)V

    .line 739
    return v1

    .line 735
    :pswitch_1
    iget-object v0, p1, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lccsanandroid/content/ComponentName;

    invoke-direct {p0, v0}, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager;->handleServiceDisconnected(Lccsanandroid/content/ComponentName;)V

    .line 736
    return v1

    .line 731
    :pswitch_2
    iget-object v0, p1, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lccsanandroidx/core/app/NotificationManagerCompat$ServiceConnectedEvent;

    .line 732
    .local v0, "event":Lccsanandroidx/core/app/NotificationManagerCompat$ServiceConnectedEvent;
    iget-object v2, v0, Lccsanandroidx/core/app/NotificationManagerCompat$ServiceConnectedEvent;->componentName:Lccsanandroid/content/ComponentName;

    iget-object v3, v0, Lccsanandroidx/core/app/NotificationManagerCompat$ServiceConnectedEvent;->iBinder:Lccsanandroid/os/IBinder;

    invoke-direct {p0, v2, v3}, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager;->handleServiceConnected(Lccsanandroid/content/ComponentName;Lccsanandroid/os/IBinder;)V

    .line 733
    return v1

    .line 728
    .end local v0    # "event":Lccsanandroidx/core/app/NotificationManagerCompat$ServiceConnectedEvent;
    :pswitch_3
    iget-object v0, p1, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lccsanandroidx/core/app/NotificationManagerCompat$Task;

    invoke-direct {p0, v0}, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager;->handleQueueTask(Lccsanandroidx/core/app/NotificationManagerCompat$Task;)V

    .line 729
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onServiceConnected(Lccsanandroid/content/ComponentName;Lccsanandroid/os/IBinder;)V
    .locals 3
    .param p1, "componentName"    # Lccsanandroid/content/ComponentName;
    .param p2, "iBinder"    # Lccsanandroid/os/IBinder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "componentName",
            "iBinder"
        }
    .end annotation

    .line 777
    const-string v0, "NotifManCompat"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 778
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connected to service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    :cond_0
    iget-object v0, p0, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager;->mHandler:Lccsanandroid/os/Handler;

    const/4 v1, 0x1

    new-instance v2, Lccsanandroidx/core/app/NotificationManagerCompat$ServiceConnectedEvent;

    invoke-direct {v2, p1, p2}, Lccsanandroidx/core/app/NotificationManagerCompat$ServiceConnectedEvent;-><init>(Lccsanandroid/content/ComponentName;Lccsanandroid/os/IBinder;)V

    invoke-virtual {v0, v1, v2}, Lccsanandroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Lccsanandroid/os/Message;

    move-result-object v0

    .line 782
    invoke-virtual {v0}, Lccsanandroid/os/Message;->sendToTarget()V

    .line 783
    return-void
.end method

.method public onServiceDisconnected(Lccsanandroid/content/ComponentName;)V
    .locals 3
    .param p1, "componentName"    # Lccsanandroid/content/ComponentName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "componentName"
        }
    .end annotation

    .line 787
    const-string v0, "NotifManCompat"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 788
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disconnected from service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    :cond_0
    iget-object v0, p0, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager;->mHandler:Lccsanandroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lccsanandroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Lccsanandroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/os/Message;->sendToTarget()V

    .line 791
    return-void
.end method

.method public queueTask(Lccsanandroidx/core/app/NotificationManagerCompat$Task;)V
    .locals 2
    .param p1, "task"    # Lccsanandroidx/core/app/NotificationManagerCompat$Task;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "task"
        }
    .end annotation

    .line 721
    iget-object v0, p0, Lccsanandroidx/core/app/NotificationManagerCompat$SideChannelManager;->mHandler:Lccsanandroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lccsanandroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Lccsanandroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/os/Message;->sendToTarget()V

    .line 722
    return-void
.end method