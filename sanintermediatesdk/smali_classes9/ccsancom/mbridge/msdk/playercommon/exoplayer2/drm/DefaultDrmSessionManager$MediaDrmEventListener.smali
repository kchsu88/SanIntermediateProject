.class Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmEventListener;
.super Ljava/lang/Object;
.source "DefaultDrmSessionManager.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm$OnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaDrmEventListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm$OnEventListener<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionManager;


# direct methods
.method private constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionManager;)V
    .locals 0

    .line 668
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmEventListener;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionManager;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionManager$1;)V
    .locals 0

    .line 668
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmEventListener;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionManager;)V

    return-void
.end method


# virtual methods
.method public onEvent(Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm;[BII[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm<",
            "+TT;>;[BII[B)V"
        }
    .end annotation

    .line 673
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmEventListener;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionManager;->access$300(Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionManager;)I

    move-result p1

    if-nez p1, :cond_0

    .line 674
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmEventListener;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionManager;

    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionManager;->mediaDrmHandler:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmHandler;

    invoke-virtual {p1, p3, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmHandler;->obtainMessage(ILjava/lang/Object;)Lccsanandroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroid/os/Message;->sendToTarget()V

    .line 676
    :cond_0
    return-void
.end method
