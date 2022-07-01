.class public Lccsancom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;
.super Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;
.source "WindVaneWebViewForNV.java"


# static fields
.field private static e:Ljava/lang/String;


# instance fields
.field private f:Lccsancom/mbridge/msdk/nativex/listener/b;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-string v0, "WindVaneWebViewForNV"

    sput-object v0, Lccsancom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;-><init>(Lccsanandroid/content/Context;)V

    .line 21
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;->g:Z

    .line 37
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 21
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;->g:Z

    .line 41
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 21
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;->g:Z

    .line 45
    return-void
.end method


# virtual methods
.method public onKeyDown(ILccsanandroid/view/KeyEvent;)Z
    .locals 1

    .line 59
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 60
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;->f:Lccsancom/mbridge/msdk/nativex/listener/b;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/nativex/listener/b;->a()V

    .line 62
    const/4 p1, 0x1

    return p1

    .line 66
    :cond_0
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->onKeyDown(ILccsanandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Lccsanandroid/view/MotionEvent;)Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;->g:Z

    if-eqz v0, :cond_0

    .line 52
    const/4 p1, 0x0

    return p1

    .line 54
    :cond_0
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->onTouchEvent(Lccsanandroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public orientation(Z)V
    .locals 2

    .line 89
    :try_start_0
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    const-string v1, "orientation"

    if-eqz p1, :cond_0

    .line 91
    :try_start_1
    const-string p1, "landscape"

    invoke-virtual {v0, v1, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    goto :goto_0

    .line 93
    :cond_0
    const-string p1, "portrait"

    invoke-virtual {v0, v1, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 95
    :goto_0
    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 96
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v0

    invoke-virtual {v0, p0, v1, p1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 99
    goto :goto_1

    .line 97
    :catch_0
    move-exception p1

    .line 98
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 100
    :goto_1
    return-void
.end method

.method public setBackListener(Lccsancom/mbridge/msdk/nativex/listener/b;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;->f:Lccsancom/mbridge/msdk/nativex/listener/b;

    .line 33
    return-void
.end method

.method public setInterceptTouch(Z)V
    .locals 0

    .line 28
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;->g:Z

    .line 29
    return-void
.end method

.method public webViewShow(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)V
    .locals 3

    .line 71
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v0

    const-string v1, "webviewshow"

    const-string v2, ""

    invoke-virtual {v0, p0, v1, v2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-instance v0, Lccsancom/mbridge/msdk/foundation/entity/m;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/foundation/entity/m;-><init>()V

    .line 74
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/entity/m;->k(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/entity/m;->l(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 79
    :cond_0
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/entity/m;->n(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isMraid()Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Lccsancom/mbridge/msdk/foundation/entity/m;->a:I

    goto :goto_0

    :cond_1
    sget p1, Lccsancom/mbridge/msdk/foundation/entity/m;->b:I

    :goto_0
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/foundation/entity/m;->a(I)V

    .line 81
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/nativex/view/WindVaneWebViewForNV;->getContext()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-static {v0, p1, p2}, Lccsancom/mbridge/msdk/foundation/same/report/b;->a(Lccsancom/mbridge/msdk/foundation/entity/m;Lccsanandroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    goto :goto_2

    .line 77
    :cond_2
    :goto_1
    return-void

    .line 82
    :catch_0
    move-exception p1

    .line 83
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 85
    :goto_2
    return-void
.end method
