.class final Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$1$1;
.super Lccsancom/mbridge/msdk/widget/a;
.source "MBridgeVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$1;->a(Lccsanandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$1;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$1;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$1$1;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$1;

    invoke-direct {p0}, Lccsancom/mbridge/msdk/widget/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lccsanandroid/view/View;)V
    .locals 4

    .line 223
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$1$1;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$1;

    iget-object p1, p1, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$1;->b:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->a(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;)Lccsancom/mbridge/msdk/video/module/a/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 224
    const/4 p1, 0x0

    .line 226
    :try_start_0
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 227
    :try_start_1
    sget-object p1, Lccsancom/mbridge/msdk/foundation/same/a;->g:Ljava/lang/String;

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$1$1;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$1;

    iget-object v1, v1, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$1;->b:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->a(I)Lccsanorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_1
    .catch Lccsanorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 230
    goto :goto_1

    .line 228
    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    .line 229
    :goto_0
    invoke-virtual {p1}, Lccsanorg/json/JSONException;->printStackTrace()V

    .line 231
    :goto_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$1$1;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$1;

    iget-object p1, p1, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$1;->b:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->a(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;)Lccsancom/mbridge/msdk/video/module/a/a;

    move-result-object p1

    const/16 v1, 0x69

    invoke-interface {p1, v1, v0}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 232
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$1$1;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$1;

    iget-object v0, v0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$1;->b:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-object v0, v0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/video/module/b/a;->d(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 234
    :cond_0
    return-void
.end method
