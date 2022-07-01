.class final Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$4;
.super Ljava/lang/Object;
.source "MBridgeH5EndCardView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->webviewshow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;)V
    .locals 0

    .line 544
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$4;->a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 548
    const-string v0, ""

    const-string v1, "webviewshow"

    const-string v2, "MBridgeBaseView"

    :try_start_0
    invoke-static {v2, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 549
    nop

    .line 551
    const/4 v3, 0x2

    const/4 v4, 0x0

    :try_start_1
    new-array v5, v3, [I

    .line 552
    iget-object v6, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$4;->a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    iget-object v6, v6, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->m:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v6, v5}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getLocationOnScreen([I)V

    .line 553
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "coordinate:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v5, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "--"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    aget v8, v5, v7

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    new-instance v6, Lccsanorg/json/JSONObject;

    invoke-direct {v6}, Lccsanorg/json/JSONObject;-><init>()V

    .line 555
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v8

    invoke-virtual {v8}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v8

    .line 556
    if-eqz v8, :cond_0

    .line 557
    const-string v9, "startX"

    aget v10, v5, v4

    int-to-float v10, v10

    invoke-static {v8, v10}, Lccsancom/mbridge/msdk/foundation/tools/u;->a(Lccsanandroid/content/Context;F)I

    move-result v10

    invoke-virtual {v6, v9, v10}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 558
    const-string v9, "startY"

    aget v5, v5, v7

    int-to-float v5, v5

    invoke-static {v8, v5}, Lccsancom/mbridge/msdk/foundation/tools/u;->a(Lccsanandroid/content/Context;F)I

    move-result v5

    invoke-virtual {v6, v9, v5}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 559
    sget-object v5, Lccsancom/mbridge/msdk/foundation/same/a;->j:Ljava/lang/String;

    invoke-static {v8}, Lccsancom/mbridge/msdk/foundation/tools/u;->d(Lccsanandroid/content/Context;)F

    move-result v7

    float-to-double v7, v7

    invoke-virtual {v6, v5, v7, v8}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;D)Lccsanorg/json/JSONObject;

    .line 561
    :cond_0
    invoke-virtual {v6}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 564
    goto :goto_0

    .line 562
    :catchall_0
    move-exception v5

    .line 563
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6, v5}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v0

    .line 565
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2, v3}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 566
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v3

    iget-object v5, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$4;->a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    iget-object v5, v5, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->m:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v3, v5, v1, v2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$4;->a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    iget-object v1, v1, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    const/16 v2, 0x6d

    invoke-interface {v1, v2, v0}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 570
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$4;->a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->d(Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;)V

    .line 572
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$4;->a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->startCounterEndCardShowTimer()V

    .line 574
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$4;->a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    iget-object v1, v1, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->m:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    const-string v2, "oncutoutfetched"

    iget-object v3, p0, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView$4;->a:Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    invoke-static {v3}, Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;->e(Lccsancom/mbridge/msdk/video/module/MBridgeH5EndCardView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3, v4}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 577
    goto :goto_1

    .line 575
    :catch_0
    move-exception v0

    .line 576
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 578
    :goto_1
    return-void
.end method
