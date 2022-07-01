.class public Lccsanandroidx/work/impl/utils/ForceStopRunnable$BroadcastReceiver;
.super Lccsanandroid/content/BroadcastReceiver;
.source "ForceStopRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/work/impl/utils/ForceStopRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BroadcastReceiver"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 211
    const-string v0, "ForceStopRunnable$Rcvr"

    invoke-static {v0}, Lccsanandroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsanandroidx/work/impl/utils/ForceStopRunnable$BroadcastReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 210
    invoke-direct {p0}, Lccsanandroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "intent"    # Lccsanandroid/content/Intent;

    .line 217
    if-eqz p2, :cond_0

    .line 218
    invoke-virtual {p2}, Lccsanandroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "action":Ljava/lang/String;
    const-string v1, "ACTION_FORCE_STOP_RESCHEDULE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v1

    sget-object v2, Lccsanandroidx/work/impl/utils/ForceStopRunnable$BroadcastReceiver;->TAG:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Throwable;

    const-string v4, "Rescheduling alarm that keeps track of force-stops."

    invoke-virtual {v1, v2, v4, v3}, Lccsanandroidx/work/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 223
    invoke-static {p1}, Lccsanandroidx/work/impl/utils/ForceStopRunnable;->setAlarm(Lccsanandroid/content/Context;)V

    .line 226
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    return-void
.end method
