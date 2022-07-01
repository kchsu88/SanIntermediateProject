.class final Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$a;
.super Lccsancom/mbridge/msdk/playercommon/DefaultVideoPlayerStatusListener;
.source "MBridgeBTVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

.field private b:Lccsanandroid/webkit/WebView;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:I

.field private l:I

.field private m:Z


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;Lccsanandroid/webkit/WebView;)V
    .locals 1

    .line 465
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/DefaultVideoPlayerStatusListener;-><init>()V

    .line 453
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$a;->h:Z

    .line 454
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$a;->i:Z

    .line 455
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$a;->j:Z

    .line 459
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$a;->m:Z

    .line 466
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$a;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    .line 467
    iput-object p2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$a;->b:Lccsanandroid/webkit/WebView;

    .line 468
    if-eqz p1, :cond_0

    .line 469
    iget-object p2, p1, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->d:Ljava/lang/String;

    iput-object p2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$a;->c:Ljava/lang/String;

    .line 470
    iget-object p1, p1, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->c:Ljava/lang/String;

    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$a;->d:Ljava/lang/String;

    .line 472
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 0

    .line 475
    iput p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$a;->k:I

    .line 476
    iput p2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$a;->l:I

    .line 477
    return-void
.end method

.method public final onBufferingEnd()V
    .locals 1

    .line 607
    :try_start_0
    invoke-super {p0}, Lccsancom/mbridge/msdk/playercommon/DefaultVideoPlayerStatusListener;->onBufferingEnd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 610
    goto :goto_0

    .line 608
    :catch_0
    move-exception v0

    .line 609
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 611
    :goto_0
    return-void
.end method

.method public final onBufferingStart(Ljava/lang/String;)V
    .locals 4

    .line 585
    :try_start_0
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/playercommon/DefaultVideoPlayerStatusListener;->onBufferingStart(Ljava/lang/String;)V

    .line 587
    const-string v0, "mediaplayer prepare timeout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "play buffering tiemout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$a;->b:Lccsanandroid/webkit/WebView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_1

    .line 589
    :try_start_1
    new-instance p1, Lccsanorg/json/JSONObject;

    invoke-direct {p1}, Lccsanorg/json/JSONObject;-><init>()V

    .line 590
    const-string v0, "code"

    sget v1, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->n:I

    invoke-virtual {p1, v0, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 591
    const-string v0, "id"

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$a;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 592
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 593
    const-string v1, "data"

    invoke-virtual {p1, v1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 594
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$a;->b:Lccsanandroid/webkit/WebView;

    const-string v2, "onPlayerTimeout"

    invoke-virtual {p1}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v3, 0x2

    invoke-static {p1, v3}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 597
    goto :goto_0

    .line 595
    :catch_0
    move-exception p1

    .line 596
    :try_start_2
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$a;->b:Lccsanandroid/webkit/WebView;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 601
    :cond_1
    :goto_0
    goto :goto_1

    .line 599
    :catch_1
    move-exception p1

    .line 600
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 602
    :goto_1
    return-void
.end method

.method public final onPlayCompleted()V
    .locals 3

    .line 493
    invoke-super {p0}, Lccsancom/mbridge/msdk/playercommon/DefaultVideoPlayerStatusListener;->onPlayCompleted()V

    .line 494
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$a;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->d(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;)Lccsanandroid/widget/TextView;

    move-result-object v0

    const-string v1, "0"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$a;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->a(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;)Lccsancom/mbridge/msdk/playercommon/PlayerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->setClickable(Z)V

    .line 496
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$a;->b:Lccsanandroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 497
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$a;->c:Ljava/lang/String;

    const-string v2, "onPlayerFinish"

    invoke-static {v0, v2, v1}, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    :cond_0
    iget v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$a;->f:I

    iput v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$a;->e:I

    .line 500
    const/4 v0, 0x1

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->a(Z)Z

    .line 501
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$a;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->stop()V

    .line 502
    return-void
.end method

.method public final onPlayError(Ljava/lang/String;)V
    .locals 4

    .line 506
    const-string v0, "id"

    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/playercommon/DefaultVideoPlayerStatusListener;->onPlayError(Ljava/lang/String;)V

    .line 507
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$a;->b:Lccsanandroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 509
    :try_start_0
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1}, Lccsanorg/json/JSONObject;-><init>()V

    .line 510
    const-string v2, "code"

    sget v3, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->o:I

    invoke-virtual {v1, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 511
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 512
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2}, Lccsanorg/json/JSONObject;-><init>()V

    .line 513
    const-string v3, "error"

    invoke-virtual {v2, v3, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 514
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$a;->c:Ljava/lang/String;

    invoke-virtual {v2, v0, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 515
    const-string p1, "data"

    invoke-virtual {v1, p1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 516
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object p1

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$a;->b:Lccsanandroid/webkit/WebView;

    const-string v2, "onPlayerFailed"

    invoke-virtual {v1}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v1, v3}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v2, v1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    goto :goto_0

    .line 517
    :catch_0
    move-exception p1

    .line 518
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$a;->b:Lccsanandroid/webkit/WebView;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V

    .line 521
    :cond_0
    :goto_0
    return-void
.end method

.method public final onPlayProgress(II)V
    .locals 6

    .line 525
    const-string v0, "id"

    const-string v1, "DefaultVideoPlayerStatusListener"

    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/DefaultVideoPlayerStatusListener;->onPlayProgress(II)V

    .line 526
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$a;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    iget-boolean v2, v2, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->h:Z

    if-eqz v2, :cond_1

    .line 527
    sub-int v2, p2, p1

    .line 528
    if-gtz v2, :cond_0

    .line 529
    const/4 v2, 0x0

    .line 531
    :cond_0
    iget-object v3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$a;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    invoke-static {v3}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->d(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;)Lccsanandroid/widget/TextView;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 533
    :cond_1
    iput p2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$a;->f:I

    .line 534
    iput p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$a;->e:I

    .line 535
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$a;->b:Lccsanandroid/webkit/WebView;

    if-eqz v2, :cond_2

    .line 537
    :try_start_0
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2}, Lccsanorg/json/JSONObject;-><init>()V

    .line 538
    const-string v3, "code"

    sget v4, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->n:I

    invoke-virtual {v2, v3, v4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 539
    iget-object v3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$a;->c:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 540
    new-instance v3, Lccsanorg/json/JSONObject;

    invoke-direct {v3}, Lccsanorg/json/JSONObject;-><init>()V

    .line 541
    iget-object v4, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$a;->c:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 542
    const-string v0, "progress"

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->a(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 543
    const-string v0, "time"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 544
    const-string v0, "duration"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 545
    const-string v0, "data"

    invoke-virtual {v2, v0, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 546
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v0

    iget-object v3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$a;->b:Lccsanandroid/webkit/WebView;

    const-string v4, "onPlayerProgressChanged"

    invoke-virtual {v2}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v5, 0x2

    invoke-static {v2, v5}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v4, v2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 549
    goto :goto_0

    .line 547
    :catch_0
    move-exception v0

    .line 548
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v2

    iget-object v3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$a;->b:Lccsanandroid/webkit/WebView;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V

    .line 553
    :cond_2
    :goto_0
    :try_start_1
    iget v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$a;->k:I

    const/16 v2, 0x64

    if-eq v0, v2, :cond_6

    iget-boolean v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$a;->m:Z

    if-nez v0, :cond_6

    .line 555
    iget v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$a;->l:I

    if-nez v0, :cond_3

    .line 556
    return-void

    .line 558
    :cond_3
    if-ltz v0, :cond_6

    .line 559
    mul-int p2, p2, v0

    div-int/2addr p2, v2

    .line 561
    if-lt p1, p2, :cond_6

    .line 563
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$a;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    iget-object p1, p1, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result p1

    const/16 v0, 0x5e

    if-eq p1, v0, :cond_5

    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$a;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    iget-object p1, p1, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result p1

    const/16 v0, 0x11f

    if-ne p1, v0, :cond_4

    goto :goto_1

    .line 566
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$a;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    iget-object v0, v0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$a;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    iget-object v0, v0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$a;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    iget-object v0, v0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getBidToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 564
    :cond_5
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$a;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    iget-object v0, v0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$a;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    iget-object v0, v0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$a;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    iget-object v0, v0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 568
    :goto_2
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/c;->getInstance()Lccsancom/mbridge/msdk/videocommon/download/c;

    move-result-object v0

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Lccsancom/mbridge/msdk/videocommon/download/c;->a(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/videocommon/download/a;

    move-result-object p1

    .line 569
    if-eqz p1, :cond_6

    .line 570
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/videocommon/download/a;->j()V

    .line 571
    const/4 p1, 0x1

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$a;->m:Z

    .line 572
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CDRate is : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " and start download !"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 579
    :cond_6
    goto :goto_3

    .line 577
    :catch_1
    move-exception p1

    .line 578
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    :goto_3
    return-void
.end method

.method public final onPlaySetDataSourceError(Ljava/lang/String;)V
    .locals 0

    .line 615
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/playercommon/DefaultVideoPlayerStatusListener;->onPlaySetDataSourceError(Ljava/lang/String;)V

    .line 616
    return-void
.end method

.method public final onPlayStarted(I)V
    .locals 2

    .line 481
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/playercommon/DefaultVideoPlayerStatusListener;->onPlayStarted(I)V

    .line 482
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$a;->g:Z

    if-nez p1, :cond_1

    .line 483
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$a;->b:Lccsanandroid/webkit/WebView;

    if-eqz p1, :cond_0

    .line 484
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$a;->c:Ljava/lang/String;

    const-string v1, "onPlayerPlay"

    invoke-static {p1, v1, v0}, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$a;->g:Z

    .line 488
    :cond_1
    const/4 p1, 0x0

    invoke-static {p1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->a(Z)Z

    .line 489
    return-void
.end method
