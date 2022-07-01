.class public Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTLayout;
.super Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;
.source "MBridgeBTLayout.java"


# instance fields
.field private p:Lccsanandroid/webkit/WebView;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;-><init>(Lccsanandroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/module/BTBaseView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 26
    return-void
.end method


# virtual methods
.method public broadcast(Ljava/lang/String;Lccsanorg/json/JSONObject;)V
    .locals 4

    .line 73
    const-string v0, "broadcast"

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTLayout;->p:Lccsanandroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 75
    :try_start_0
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1}, Lccsanorg/json/JSONObject;-><init>()V

    .line 76
    const-string v2, "code"

    sget v3, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTLayout;->n:I

    invoke-virtual {v1, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 77
    const-string v2, "id"

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTLayout;->getInstanceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 78
    const-string v2, "eventName"

    invoke-virtual {v1, v2, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 79
    const-string p1, "data"

    invoke-virtual {v1, p1, p2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 80
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object p1

    iget-object p2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTLayout;->p:Lccsanandroid/webkit/WebView;

    invoke-virtual {v1}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    goto :goto_0

    .line 81
    :catch_0
    move-exception p1

    .line 82
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object p1

    iget-object p2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTLayout;->p:Lccsanandroid/webkit/WebView;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTLayout;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_0
    :goto_0
    return-void
.end method

.method public init(Lccsanandroid/content/Context;)V
    .locals 0

    .line 32
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 67
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTLayout;->p:Lccsanandroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 68
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTLayout;->p:Lccsanandroid/webkit/WebView;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTLayout;->d:Ljava/lang/String;

    const-string v3, "onSystemBackPressed"

    invoke-virtual {v0, v1, v3, v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Lccsanandroid/content/res/Configuration;)V
    .locals 4

    .line 45
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTLayout;->p:Lccsanandroid/webkit/WebView;

    if-eqz v0, :cond_2

    .line 48
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTLayout;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTLayout;->b:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/u;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    return-void

    .line 51
    :cond_0
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 52
    iget p1, p1, Lccsanandroid/content/res/Configuration;->orientation:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x2

    const-string v2, "orientation"

    if-ne p1, v1, :cond_1

    .line 53
    :try_start_1
    const-string p1, "landscape"

    invoke-virtual {v0, v2, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    goto :goto_0

    .line 55
    :cond_1
    const-string p1, "portrait"

    invoke-virtual {v0, v2, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 57
    :goto_0
    const-string p1, "instanceId"

    iget-object v3, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTLayout;->d:Ljava/lang/String;

    invoke-virtual {v0, p1, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 58
    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1, v1}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 59
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTLayout;->p:Lccsanandroid/webkit/WebView;

    invoke-virtual {v0, v1, v2, p1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 62
    goto :goto_1

    .line 60
    :catch_0
    move-exception p1

    .line 61
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 64
    :cond_2
    :goto_1
    return-void
.end method

.method public onDestory()V
    .locals 0

    .line 41
    return-void
.end method

.method public setWebView(Lccsanandroid/webkit/WebView;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTLayout;->p:Lccsanandroid/webkit/WebView;

    .line 36
    return-void
.end method
