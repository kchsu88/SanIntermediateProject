.class Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher$DeviceStatusChangeReceiver;
.super Lccsanandroid/content/BroadcastReceiver;
.source "RequirementsWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceStatusChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;


# direct methods
.method private constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher$DeviceStatusChangeReceiver;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;

    invoke-direct {p0}, Lccsanandroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher$1;)V
    .locals 0

    .line 185
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher$DeviceStatusChangeReceiver;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;)V

    return-void
.end method


# virtual methods
.method public onReceive(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)V
    .locals 1

    .line 188
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher$DeviceStatusChangeReceiver;->isInitialStickyBroadcast()Z

    move-result p1

    if-nez p1, :cond_0

    .line 189
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher$DeviceStatusChangeReceiver;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " received "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lccsanandroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;->access$200(Ljava/lang/String;)V

    .line 190
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher$DeviceStatusChangeReceiver;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;->access$300(Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;Z)V

    .line 192
    :cond_0
    return-void
.end method
