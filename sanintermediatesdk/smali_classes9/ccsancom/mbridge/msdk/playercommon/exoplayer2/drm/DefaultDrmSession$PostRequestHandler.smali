.class Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;
.super Lccsanandroid/os/Handler;
.source "DefaultDrmSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PostRequestHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;Lccsanandroid/os/Looper;)V
    .locals 0

    .line 492
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;

    .line 493
    invoke-direct {p0, p2}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    .line 494
    return-void
.end method

.method private getRetryDelayMillis(I)J
    .locals 2

    .line 546
    add-int/lit8 p1, p1, -0x1

    mul-int/lit16 p1, p1, 0x3e8

    const/16 v0, 0x1388

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method private maybeRetryRequest(Lccsanandroid/os/Message;)Z
    .locals 4

    .line 531
    iget v0, p1, Lccsanandroid/os/Message;->arg1:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 532
    :goto_0
    if-nez v0, :cond_1

    .line 533
    return v1

    .line 535
    :cond_1
    iget v0, p1, Lccsanandroid/os/Message;->arg2:I

    add-int/2addr v0, v2

    .line 536
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;

    invoke-static {v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->access$200(Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;)I

    move-result v3

    if-le v0, v3, :cond_2

    .line 537
    return v1

    .line 539
    :cond_2
    invoke-static {p1}, Lccsanandroid/os/Message;->obtain(Lccsanandroid/os/Message;)Lccsanandroid/os/Message;

    move-result-object p1

    .line 540
    iput v0, p1, Lccsanandroid/os/Message;->arg2:I

    .line 541
    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;->getRetryDelayMillis(I)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;->sendMessageDelayed(Lccsanandroid/os/Message;J)Z

    .line 542
    return v2
.end method


# virtual methods
.method public handleMessage(Lccsanandroid/os/Message;)V
    .locals 5

    .line 505
    iget-object v0, p1, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    .line 508
    :try_start_0
    iget v1, p1, Lccsanandroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 519
    new-instance v1, Ljava/lang/RuntimeException;

    goto :goto_1

    .line 513
    :pswitch_0
    move-object v1, v0

    check-cast v1, Lccsanandroid/util/Pair;

    .line 514
    iget-object v2, v1, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm$KeyRequest;

    .line 515
    iget-object v1, v1, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 516
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;

    iget-object v3, v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->callback:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/MediaDrmCallback;

    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;

    iget-object v4, v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->uuid:Ljava/util/UUID;

    invoke-interface {v3, v4, v2, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/MediaDrmCallback;->executeKeyRequest(Ljava/util/UUID;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm$KeyRequest;Ljava/lang/String;)[B

    move-result-object v1

    .line 517
    goto :goto_0

    .line 510
    :pswitch_1
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;

    iget-object v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->callback:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/MediaDrmCallback;

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;

    iget-object v2, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->uuid:Ljava/util/UUID;

    move-object v3, v0

    check-cast v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;

    invoke-interface {v1, v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/MediaDrmCallback;->executeProvisionRequest(Ljava/util/UUID;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;)[B

    move-result-object v1

    .line 511
    nop

    .line 526
    :goto_0
    goto :goto_2

    .line 519
    :goto_1
    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    :catch_0
    move-exception v1

    .line 522
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;->maybeRetryRequest(Lccsanandroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 523
    return-void

    .line 525
    :cond_0
    nop

    .line 527
    :goto_2
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;->this$0:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;

    iget-object v2, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession;->postResponseHandler:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession$PostResponseHandler;

    iget p1, p1, Lccsanandroid/os/Message;->what:I

    invoke-static {v0, v1}, Lccsanandroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Lccsanandroid/util/Pair;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession$PostResponseHandler;->obtainMessage(ILjava/lang/Object;)Lccsanandroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroid/os/Message;->sendToTarget()V

    .line 528
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method post(ILjava/lang/Object;Z)V
    .locals 1

    .line 497
    nop

    .line 498
    const/4 v0, 0x0

    .line 499
    invoke-virtual {p0, p1, p3, v0, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;->obtainMessage(IIILjava/lang/Object;)Lccsanandroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroid/os/Message;->sendToTarget()V

    .line 500
    return-void
.end method
