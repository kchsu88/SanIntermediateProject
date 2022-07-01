.class final Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC$4;
.super Ljava/lang/Object;
.source "MBridgeBTNativeEC.java"

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC$4;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Lccsanandroid/view/View;)V
    .locals 4

    .line 300
    const-string p1, "BTBaseView"

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC$4;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->c(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;)Lccsanandroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 301
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 303
    :try_start_0
    const-string v1, "id"

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC$4;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;

    iget-object v2, v2, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 304
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1}, Lccsanorg/json/JSONObject;-><init>()V

    .line 305
    const-string v2, "unitId"

    iget-object v3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC$4;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;

    invoke-static {v3}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->d(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 306
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NativeEC Call H5 onCloseBtnClicked "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    goto :goto_0

    .line 308
    :catch_0
    move-exception v1

    .line 309
    invoke-virtual {v1}, Lccsanorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    :goto_0
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object p1

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC$4;->a:Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;

    invoke-static {v1}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;->c(Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTNativeEC;)Lccsanandroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string v2, "onCloseBtnClicked"

    invoke-virtual {p1, v1, v2, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    :cond_0
    return-void
.end method
