.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher$CapabilityValidatedCallback;
.super Lccsanandroid/net/ConnectivityManager$NetworkCallback;
.source "RequirementsWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CapabilityValidatedCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;


# direct methods
.method private constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher$CapabilityValidatedCallback;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;

    invoke-direct {p0}, Lccsanandroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher$1;)V
    .locals 0

    .line 196
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher$CapabilityValidatedCallback;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;)V

    return-void
.end method


# virtual methods
.method public final onAvailable(Lccsanandroid/net/Network;)V
    .locals 1

    .line 199
    invoke-super {p0, p1}, Lccsanandroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Lccsanandroid/net/Network;)V

    .line 200
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher$CapabilityValidatedCallback;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " NetworkCallback.onAvailable"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;->access$200(Ljava/lang/String;)V

    .line 201
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher$CapabilityValidatedCallback;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;->access$300(Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;Z)V

    .line 202
    return-void
.end method

.method public final onLost(Lccsanandroid/net/Network;)V
    .locals 1

    .line 206
    invoke-super {p0, p1}, Lccsanandroid/net/ConnectivityManager$NetworkCallback;->onLost(Lccsanandroid/net/Network;)V

    .line 207
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher$CapabilityValidatedCallback;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " NetworkCallback.onLost"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;->access$200(Ljava/lang/String;)V

    .line 208
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher$CapabilityValidatedCallback;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;->access$300(Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;Z)V

    .line 209
    return-void
.end method
