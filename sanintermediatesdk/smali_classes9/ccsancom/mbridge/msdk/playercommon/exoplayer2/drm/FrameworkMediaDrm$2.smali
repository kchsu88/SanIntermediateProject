.class Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaDrm$2;
.super Ljava/lang/Object;
.source "FrameworkMediaDrm.java"

# interfaces
.implements Lccsanandroid/media/MediaDrm$OnKeyStatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaDrm;->setOnKeyStatusChangeListener(Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm$OnKeyStatusChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaDrm;

.field final synthetic val$listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm$OnKeyStatusChangeListener;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaDrm;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm$OnKeyStatusChangeListener;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaDrm$2;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaDrm;

    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaDrm$2;->val$listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm$OnKeyStatusChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyStatusChange(Lccsanandroid/media/MediaDrm;[BLjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/media/MediaDrm;",
            "[B",
            "Ljava/util/List<",
            "Lccsanandroid/media/MediaDrm$KeyStatus;",
            ">;Z)V"
        }
    .end annotation

    .line 105
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 106
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/media/MediaDrm$KeyStatus;

    .line 107
    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm$DefaultKeyStatus;

    invoke-virtual {v0}, Lccsanandroid/media/MediaDrm$KeyStatus;->getStatusCode()I

    move-result v2

    invoke-virtual {v0}, Lccsanandroid/media/MediaDrm$KeyStatus;->getKeyId()[B

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm$DefaultKeyStatus;-><init>(I[B)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    goto :goto_0

    .line 109
    :cond_0
    iget-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaDrm$2;->val$listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm$OnKeyStatusChangeListener;

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaDrm$2;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/FrameworkMediaDrm;

    invoke-interface {p3, v0, p2, p1, p4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm$OnKeyStatusChangeListener;->onKeyStatusChange(Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm;[BLjava/util/List;Z)V

    .line 111
    return-void
.end method
