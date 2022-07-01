.class final Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$3;
.super Ljava/lang/Object;
.source "MBridgeBTVideoView.java"

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;)V
    .locals 0

    .line 423
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$3;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Lccsanandroid/view/View;)V
    .locals 5

    .line 426
    const-string v0, "onClicked"

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$3;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    invoke-static {v1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->b(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;)Lccsanandroid/webkit/WebView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 428
    :try_start_0
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1}, Lccsanorg/json/JSONObject;-><init>()V

    .line 429
    const-string v2, "code"

    sget v3, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->n:I

    invoke-virtual {v1, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 430
    const-string v2, "id"

    iget-object v3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$3;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    iget-object v3, v3, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 431
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2}, Lccsanorg/json/JSONObject;-><init>()V

    .line 432
    const-string v3, "x"

    invoke-virtual {p1}, Lccsanandroid/view/View;->getX()F

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 433
    const-string v3, "y"

    invoke-virtual {p1}, Lccsanandroid/view/View;->getY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 434
    const-string p1, "data"

    invoke-virtual {v1, p1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 435
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object p1

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$3;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    invoke-static {v2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->b(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;)Lccsanandroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v1}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v1, v3}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v0, v1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    goto :goto_0

    .line 436
    :catch_0
    move-exception p1

    .line 437
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object p1

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$3;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    invoke-static {v1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->b(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;)Lccsanandroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$3;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    iget-object v2, v2, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->d:Ljava/lang/String;

    invoke-virtual {p1, v1, v0, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    :cond_0
    :goto_0
    return-void
.end method
