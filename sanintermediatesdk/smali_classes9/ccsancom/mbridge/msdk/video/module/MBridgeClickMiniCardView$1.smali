.class final Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView$1;
.super Ljava/lang/Object;
.source "MBridgeClickMiniCardView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;->webviewshow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView$1;->a:Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 100
    const-string v0, "webviewshow"

    const-string v1, "MBridgeBaseView"

    :try_start_0
    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v2, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    const/4 v3, 0x2

    :try_start_1
    new-array v4, v3, [I

    .line 104
    iget-object v5, p0, Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView$1;->a:Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;

    iget-object v5, v5, Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;->m:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v5, v4}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getLocationOnScreen([I)V

    .line 105
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "coordinate:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    aget v7, v4, v6

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "--"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    aget v8, v4, v7

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    new-instance v5, Lccsanorg/json/JSONObject;

    invoke-direct {v5}, Lccsanorg/json/JSONObject;-><init>()V

    .line 107
    const-string v8, "startX"

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v9

    invoke-virtual {v9}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v9

    aget v6, v4, v6

    int-to-float v6, v6

    invoke-static {v9, v6}, Lccsancom/mbridge/msdk/foundation/tools/u;->a(Lccsanandroid/content/Context;F)I

    move-result v6

    invoke-virtual {v5, v8, v6}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 108
    const-string v6, "startY"

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v8

    invoke-virtual {v8}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v8

    aget v4, v4, v7

    int-to-float v4, v4

    invoke-static {v8, v4}, Lccsancom/mbridge/msdk/foundation/tools/u;->a(Lccsanandroid/content/Context;F)I

    move-result v4

    invoke-virtual {v5, v6, v4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 109
    invoke-virtual {v5}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    goto :goto_0

    .line 110
    :catchall_0
    move-exception v4

    .line 111
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, v4}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v3}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v2

    iget-object v3, p0, Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView$1;->a:Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;

    iget-object v3, v3, Lccsancom/mbridge/msdk/video/module/MBridgeClickMiniCardView;->m:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v2, v3, v0, v1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 117
    goto :goto_1

    .line 115
    :catch_0
    move-exception v0

    .line 116
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 118
    :goto_1
    return-void
.end method
