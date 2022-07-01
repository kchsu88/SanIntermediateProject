.class Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaDrm$1;
.super Ljava/lang/Object;
.source "FrameworkMediaDrm.java"

# interfaces
.implements Lccsanandroid/media/MediaDrm$OnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaDrm;->setOnEventListener(Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm$OnEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaDrm;

.field final synthetic val$listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm$OnEventListener;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaDrm;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm$OnEventListener;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaDrm$1;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaDrm;

    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaDrm$1;->val$listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm$OnEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lccsanandroid/media/MediaDrm;[BII[B)V
    .locals 6

    .line 88
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaDrm$1;->val$listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm$OnEventListener;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaDrm$1;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaDrm;

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm$OnEventListener;->onEvent(Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm;[BII[B)V

    .line 89
    return-void
.end method
