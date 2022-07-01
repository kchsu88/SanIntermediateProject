.class Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession$PostResponseHandler;
.super Lccsanandroid/os/Handler;
.source "DefaultDrmSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PostResponseHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;Lccsanandroid/os/Looper;)V
    .locals 0

    .line 465
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession$PostResponseHandler;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;

    .line 466
    invoke-direct {p0, p2}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    .line 467
    return-void
.end method


# virtual methods
.method public handleMessage(Lccsanandroid/os/Message;)V
    .locals 2

    .line 471
    iget-object v0, p1, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lccsanandroid/util/Pair;

    .line 472
    iget-object v1, v0, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    .line 473
    iget-object v0, v0, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    .line 474
    iget p1, p1, Lccsanandroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 479
    :pswitch_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession$PostResponseHandler;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;

    invoke-static {p1, v1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->access$100(Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 480
    goto :goto_0

    .line 476
    :pswitch_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession$PostResponseHandler;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;

    invoke-static {p1, v1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->access$000(Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 477
    nop

    .line 485
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
