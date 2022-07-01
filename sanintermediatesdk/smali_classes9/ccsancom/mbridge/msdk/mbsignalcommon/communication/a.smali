.class public abstract Lccsancom/mbridge/msdk/mbsignalcommon/communication/a;
.super Ljava/lang/Object;
.source "CommonBannerSignalCommunicationImp.java"

# interfaces
.implements Lccsancom/mbridge/msdk/mbsignalcommon/communication/c;


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lccsancom/mbridge/msdk/mbsignalcommon/communication/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/mbsignalcommon/communication/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 44
    sget-object p1, Lccsancom/mbridge/msdk/mbsignalcommon/communication/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public b(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 49
    sget-object p1, Lccsancom/mbridge/msdk/mbsignalcommon/communication/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "click: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public c(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 39
    sget-object p1, Lccsancom/mbridge/msdk/mbsignalcommon/communication/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readyStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public d(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 54
    sget-object p1, Lccsancom/mbridge/msdk/mbsignalcommon/communication/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "toggleCloseBtn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public e(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 59
    sget-object p1, Lccsancom/mbridge/msdk/mbsignalcommon/communication/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "triggerCloseBtn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public f(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 29
    :try_start_0
    instance-of p2, p1, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    if-eqz p2, :cond_0

    .line 30
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object p2

    check-cast p1, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    iget-object p1, p1, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {p2, p1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Lccsanandroid/webkit/WebView;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_0
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    sget-object p2, Lccsancom/mbridge/msdk/mbsignalcommon/communication/a;->a:Ljava/lang/String;

    const-string v0, "onSignalCommunication"

    invoke-static {p2, v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    :goto_0
    return-void
.end method

.method public g(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 118
    sget-object p1, Lccsancom/mbridge/msdk/mbsignalcommon/communication/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "install: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public h(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 108
    sget-object p1, Lccsancom/mbridge/msdk/mbsignalcommon/communication/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetCountdown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public i(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 64
    sget-object p1, Lccsancom/mbridge/msdk/mbsignalcommon/communication/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendImpressions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public j(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 240
    sget-object p1, Lccsancom/mbridge/msdk/mbsignalcommon/communication/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFileInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 11

    .line 69
    sget-object v0, Lccsancom/mbridge/msdk/mbsignalcommon/communication/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportUrls:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    const-string p2, "params is null"

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/communication/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    return-void

    .line 74
    :cond_0
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 76
    :try_start_0
    new-instance v0, Lccsanorg/json/JSONArray;

    invoke-direct {v0, p2}, Lccsanorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 77
    const/4 p2, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lccsanorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 78
    invoke-virtual {v0, v1}, Lccsanorg/json/JSONArray;->getJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object v2

    .line 79
    const-string v3, "type"

    invoke-virtual {v2, v3}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 80
    const-string v4, "url"

    invoke-virtual {v2, v4}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 81
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, ""

    const/4 v9, 0x0

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    invoke-static/range {v5 .. v10}, Lccsancom/mbridge/msdk/click/a;->a(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    :cond_2
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v0

    invoke-static {p2}, Lccsancom/mbridge/msdk/mbsignalcommon/communication/b;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    goto :goto_2

    .line 84
    :catchall_0
    move-exception p1

    .line 85
    sget-object p2, Lccsancom/mbridge/msdk/mbsignalcommon/communication/a;->a:Ljava/lang/String;

    const-string v0, "reportUrls"

    invoke-static {p2, v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    :cond_3
    :goto_2
    return-void
.end method

.method public final l(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 92
    sget-object v0, Lccsancom/mbridge/msdk/mbsignalcommon/communication/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "increaseOfferFrequence:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    const-string p2, "params is null"

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/communication/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    return-void

    .line 97
    :cond_0
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    :try_start_0
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/communication/b;->a(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    goto :goto_0

    .line 100
    :catchall_0
    move-exception p1

    .line 101
    sget-object p2, Lccsancom/mbridge/msdk/mbsignalcommon/communication/a;->a:Ljava/lang/String;

    const-string v0, "increaseOfferFrequence"

    invoke-static {p2, v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    :cond_1
    :goto_0
    return-void
.end method

.method public final m(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 113
    sget-object p1, Lccsancom/mbridge/msdk/mbsignalcommon/communication/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handlerH5Exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public final n(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 123
    sget-object v0, Lccsancom/mbridge/msdk/mbsignalcommon/communication/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openURL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    const-string p2, "params is null"

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/communication/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    return-void

    .line 128
    :cond_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    .line 129
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 131
    if-nez v0, :cond_1

    :try_start_0
    instance-of v1, p1, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    if-eqz v1, :cond_1

    .line 132
    check-cast p1, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    iget-object p1, p1, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 133
    if-eqz p1, :cond_1

    .line 134
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getContext()Lccsanandroid/content/Context;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    .line 137
    :catch_0
    move-exception p1

    .line 138
    sget-object v1, Lccsancom/mbridge/msdk/mbsignalcommon/communication/a;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 139
    :cond_1
    :goto_0
    nop

    .line 140
    :goto_1
    if-nez v0, :cond_2

    .line 141
    return-void

    .line 144
    :cond_2
    :try_start_1
    new-instance p1, Lccsanorg/json/JSONObject;

    invoke-direct {p1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 145
    const-string p2, "url"

    invoke-virtual {p1, p2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 146
    const-string v1, "type"

    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    .line 147
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 148
    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/click/b;->a(Lccsanandroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 149
    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 150
    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/click/b;->b(Lccsanandroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Lccsanorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 154
    :catchall_0
    move-exception p1

    .line 155
    sget-object p2, Lccsancom/mbridge/msdk/mbsignalcommon/communication/a;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 152
    :catch_1
    move-exception p1

    .line 153
    sget-object p2, Lccsancom/mbridge/msdk/mbsignalcommon/communication/a;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lccsanorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_4
    :goto_2
    return-void
.end method

.method public final o(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 200
    sget-object v0, Lccsancom/mbridge/msdk/mbsignalcommon/communication/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNetstat:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    const-string p2, "params is null"

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/communication/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    return-void

    .line 205
    :cond_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    .line 206
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 208
    if-nez v0, :cond_1

    :try_start_0
    instance-of p2, p1, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    if-eqz p2, :cond_1

    .line 209
    move-object p2, p1

    check-cast p2, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    iget-object p2, p2, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 210
    if-eqz p2, :cond_1

    .line 211
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getContext()Lccsanandroid/content/Context;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p2

    goto :goto_0

    .line 214
    :catch_0
    move-exception p2

    .line 215
    sget-object v1, Lccsancom/mbridge/msdk/mbsignalcommon/communication/a;->a:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 216
    :cond_1
    :goto_0
    nop

    .line 217
    :goto_1
    const/4 p2, 0x1

    if-nez v0, :cond_2

    .line 218
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v0

    invoke-static {p2}, Lccsancom/mbridge/msdk/mbsignalcommon/communication/b;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    return-void

    .line 221
    :cond_2
    nop

    .line 223
    :try_start_1
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1}, Lccsanorg/json/JSONObject;-><init>()V

    .line 224
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/m;->n(Lccsanandroid/content/Context;)I

    move-result v0

    .line 225
    const-string v2, "netstat"

    invoke-virtual {v1, v2, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 226
    invoke-virtual {v1}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 228
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 230
    :cond_3
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    goto :goto_2

    .line 231
    :catchall_0
    move-exception v0

    .line 232
    sget-object v1, Lccsancom/mbridge/msdk/mbsignalcommon/communication/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v0

    invoke-static {p2}, Lccsancom/mbridge/msdk/mbsignalcommon/communication/b;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    :cond_4
    :goto_2
    return-void
.end method
