.class final Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$1;
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

    .line 392
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$1;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Lccsanandroid/view/View;)V
    .locals 5

    .line 395
    nop

    .line 396
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$1;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->a(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;)Lccsancom/mbridge/msdk/playercommon/PlayerView;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->isSilent()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 397
    const/4 p1, 0x1

    goto :goto_0

    .line 396
    :cond_0
    const/4 p1, 0x0

    .line 399
    :goto_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$1;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->b(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;)Lccsanandroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 401
    :try_start_0
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 402
    const-string v1, "code"

    sget v2, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;->n:I

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 403
    const-string v1, "id"

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$1;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    iget-object v2, v2, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 404
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1}, Lccsanorg/json/JSONObject;-><init>()V

    .line 405
    const-string v2, "mute"

    iget-object v3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$1;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    invoke-static {v3}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->c(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 406
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 407
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$1;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    invoke-static {v2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->b(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;)Lccsanandroid/webkit/WebView;

    move-result-object v2

    const-string v3, "onPlayerMuteBtnClicked"

    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v4, 0x2

    invoke-static {v0, v4}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const-string v0, "OperateViews"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayerMuteBtnClicked isMute = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mute = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$1;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->c(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    goto :goto_1

    .line 409
    :catch_0
    move-exception p1

    .line 410
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView$1;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;

    invoke-static {v1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;->b(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTVideoView;)Lccsanandroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V

    .line 413
    :cond_1
    :goto_1
    return-void
.end method
