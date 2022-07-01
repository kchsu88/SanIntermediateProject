.class public Lccsanandroidx/work/impl/background/systemalarm/RescheduleReceiver;
.super Lccsanandroid/content/BroadcastReceiver;
.source "RescheduleReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-string v0, "RescheduleReceiver"

    invoke-static {v0}, Lccsanandroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsanandroidx/work/impl/background/systemalarm/RescheduleReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lccsanandroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "intent"    # Lccsanandroid/content/Intent;

    .line 36
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v0

    sget-object v1, Lccsanandroidx/work/impl/background/systemalarm/RescheduleReceiver;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const-string v4, "Received intent %s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v4}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 37
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 39
    :try_start_0
    invoke-static {p1}, Lccsanandroidx/work/impl/WorkManagerImpl;->getInstance(Lccsanandroid/content/Context;)Lccsanandroidx/work/impl/WorkManagerImpl;

    move-result-object v0

    .line 40
    .local v0, "workManager":Lccsanandroidx/work/impl/WorkManagerImpl;
    invoke-virtual {p0}, Lccsanandroidx/work/impl/background/systemalarm/RescheduleReceiver;->goAsync()Lccsanandroid/content/BroadcastReceiver$PendingResult;

    move-result-object v1

    .line 41
    .local v1, "pendingResult":Lccsanandroid/content/BroadcastReceiver$PendingResult;
    invoke-virtual {v0, v1}, Lccsanandroidx/work/impl/WorkManagerImpl;->setReschedulePendingResult(Lccsanandroid/content/BroadcastReceiver$PendingResult;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "workManager":Lccsanandroidx/work/impl/WorkManagerImpl;
    .end local v1    # "pendingResult":Lccsanandroid/content/BroadcastReceiver$PendingResult;
    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v1

    sget-object v2, Lccsanandroidx/work/impl/background/systemalarm/RescheduleReceiver;->TAG:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Throwable;

    const-string v4, "Cannot reschedule jobs. WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate()."

    invoke-virtual {v1, v2, v4, v3}, Lccsanandroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 47
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    goto :goto_1

    .line 49
    :cond_0
    invoke-static {p1}, Lccsanandroidx/work/impl/background/systemalarm/CommandHandler;->createRescheduleIntent(Lccsanandroid/content/Context;)Lccsanandroid/content/Intent;

    move-result-object v0

    .line 50
    .local v0, "reschedule":Lccsanandroid/content/Intent;
    invoke-virtual {p1, v0}, Lccsanandroid/content/Context;->startService(Lccsanandroid/content/Intent;)Lccsanandroid/content/ComponentName;

    .line 52
    .end local v0    # "reschedule":Lccsanandroid/content/Intent;
    :goto_1
    return-void
.end method
