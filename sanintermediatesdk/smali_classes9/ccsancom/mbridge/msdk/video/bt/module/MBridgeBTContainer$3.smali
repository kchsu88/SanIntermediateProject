.class final Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer$3;
.super Ljava/lang/Object;
.source "MBridgeBTContainer.java"

# interfaces
.implements Lccsancom/mbridge/msdk/video/bt/module/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer$3;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    .line 330
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer$3;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->j(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 331
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 333
    :try_start_0
    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 334
    new-instance p1, Lccsanorg/json/JSONObject;

    invoke-direct {p1}, Lccsanorg/json/JSONObject;-><init>()V

    .line 335
    sget-object v1, Lccsancom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer$3;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    invoke-static {v2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->k(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 336
    const-string v1, "unitId"

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer$3;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    invoke-static {v2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->l(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 337
    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 338
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->a()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " BT Call H5 onAdShow "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    goto :goto_0

    .line 339
    :catch_0
    move-exception p1

    .line 340
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lccsanorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    :goto_0
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object p1

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer$3;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    invoke-static {v1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->j(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    move-result-object v1

    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string v2, "onSubPlayTemplateViewPlayStart"

    invoke-virtual {p1, v1, v2, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 452
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer$3;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    invoke-static {p1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->o(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Lccsancom/mbridge/msdk/video/bt/module/b/h;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 453
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer$3;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    invoke-static {p1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->o(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Lccsancom/mbridge/msdk/video/bt/module/b/h;

    move-result-object p1

    invoke-interface {p1, p2, p3, p4}, Lccsancom/mbridge/msdk/video/bt/module/b/h;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 455
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 378
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer$3;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->j(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 379
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 381
    :try_start_0
    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 382
    new-instance p1, Lccsanorg/json/JSONObject;

    invoke-direct {p1}, Lccsanorg/json/JSONObject;-><init>()V

    .line 383
    sget-object v1, Lccsancom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer$3;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    invoke-static {v2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->m(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 384
    const-string v1, "unitId"

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer$3;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    invoke-static {v2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->n(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 385
    const-string v1, "error"

    invoke-virtual {p1, v1, p2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 386
    const-string p2, "data"

    invoke-virtual {v0, p2, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 387
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->a()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " BT Call H5 onShowFail "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    goto :goto_0

    .line 388
    :catch_0
    move-exception p1

    .line 389
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lccsanorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    :goto_0
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object p1

    iget-object p2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer$3;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    invoke-static {p2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->j(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    move-result-object p2

    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSubPlayTemplateViewPlayFailed"

    invoke-virtual {p1, p2, v1, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 397
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer$3;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->j(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 398
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 400
    :try_start_0
    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 401
    new-instance p1, Lccsanorg/json/JSONObject;

    invoke-direct {p1}, Lccsanorg/json/JSONObject;-><init>()V

    .line 402
    sget-object v1, Lccsancom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    invoke-virtual {p1, v1, p2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 403
    const-string p2, "unitId"

    invoke-virtual {p1, p2, p3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 404
    const-string p2, "data"

    invoke-virtual {v0, p2, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 405
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->a()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " BT Call H5 onVideoAdClicked "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    goto :goto_0

    .line 406
    :catch_0
    move-exception p1

    .line 407
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lccsanorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    :goto_0
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object p1

    iget-object p2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer$3;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    invoke-static {p2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->j(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    move-result-object p2

    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    const/4 v0, 0x2

    invoke-static {p3, v0}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p3

    const-string v0, "onSubPlayTemplateViewClicked"

    invoke-virtual {p1, p2, v0, p3}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;ZLccsancom/mbridge/msdk/videocommon/b/c;)V
    .locals 4

    .line 348
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer$3;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->j(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 349
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 351
    :try_start_0
    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 352
    new-instance p1, Lccsanorg/json/JSONObject;

    invoke-direct {p1}, Lccsanorg/json/JSONObject;-><init>()V

    .line 353
    if-eqz p3, :cond_0

    .line 354
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1}, Lccsanorg/json/JSONObject;-><init>()V

    .line 355
    const-string v2, "name"

    invoke-virtual {p3}, Lccsancom/mbridge/msdk/videocommon/b/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 356
    const-string v2, "amount"

    invoke-virtual {p3}, Lccsancom/mbridge/msdk/videocommon/b/c;->b()I

    move-result p3

    invoke-virtual {v1, v2, p3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 357
    const-string p3, "reward"

    invoke-virtual {p1, p3, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 359
    :cond_0
    const-string p3, "isComplete"

    invoke-virtual {p1, p3, p2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Z)Lccsanorg/json/JSONObject;

    .line 360
    const-string p2, "data"

    invoke-virtual {v0, p2, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 361
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->a()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " BT Call H5 onAdClose "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    goto :goto_0

    .line 362
    :catch_0
    move-exception p1

    .line 363
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lccsanorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :goto_0
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object p1

    iget-object p2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer$3;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    invoke-static {p2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->j(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    move-result-object p2

    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    const/4 v1, 0x2

    invoke-static {p3, v1}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p3

    const-string v2, "onSubPlayTemplateViewCloseBtnClicked"

    invoke-virtual {p1, p2, v2, p3}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object p1

    iget-object p2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer$3;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    invoke-static {p2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->j(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    move-result-object p2

    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-static {p3, v1}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p3

    const-string v0, "onSubPlayTemplateViewDismissed"

    invoke-virtual {p1, p2, v0, p3}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    :cond_1
    return-void
.end method

.method public final a(ZI)V
    .locals 1

    .line 372
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer$3;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->a(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;Z)Z

    .line 373
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer$3;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->a(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;I)I

    .line 374
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 415
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer$3;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->j(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 416
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 418
    :try_start_0
    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 419
    new-instance p1, Lccsanorg/json/JSONObject;

    invoke-direct {p1}, Lccsanorg/json/JSONObject;-><init>()V

    .line 420
    const-string v1, "convert"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Z)Lccsanorg/json/JSONObject;

    .line 421
    sget-object v1, Lccsancom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    invoke-virtual {p1, v1, p2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 422
    const-string p2, "unitId"

    invoke-virtual {p1, p2, p3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 423
    const-string p2, "data"

    invoke-virtual {v0, p2, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 424
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->a()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " BT Call H5 onVideoComplete "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    goto :goto_0

    .line 425
    :catch_0
    move-exception p1

    .line 426
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lccsanorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    :goto_0
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object p1

    iget-object p2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer$3;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    invoke-static {p2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->j(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    move-result-object p2

    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    const/4 v0, 0x2

    invoke-static {p3, v0}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p3

    const-string v0, "onSubPlayTemplateViewPlayCompleted"

    invoke-virtual {p1, p2, v0, p3}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 434
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer$3;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->j(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 435
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 437
    :try_start_0
    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 438
    new-instance p1, Lccsanorg/json/JSONObject;

    invoke-direct {p1}, Lccsanorg/json/JSONObject;-><init>()V

    .line 439
    sget-object v1, Lccsancom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    invoke-virtual {p1, v1, p2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 440
    const-string p2, "unitId"

    invoke-virtual {p1, p2, p3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 441
    const-string p2, "data"

    invoke-virtual {v0, p2, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 442
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->a()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " BT Call H5 onEndcardShow "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    goto :goto_0

    .line 443
    :catch_0
    move-exception p1

    .line 444
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lccsanorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    :goto_0
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object p1

    iget-object p2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer$3;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;

    invoke-static {p2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;->j(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTContainer;)Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    move-result-object p2

    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    const/4 v0, 0x2

    invoke-static {p3, v0}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p3

    const-string v0, "onSubPlayTemplateViewEndcardShowSuccess"

    invoke-virtual {p1, p2, v0, p3}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    :cond_0
    return-void
.end method
