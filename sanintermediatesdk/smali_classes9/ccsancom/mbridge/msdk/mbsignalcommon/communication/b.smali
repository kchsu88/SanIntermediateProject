.class public Lccsancom/mbridge/msdk/mbsignalcommon/communication/b;
.super Ljava/lang/Object;
.source "CommonSignalCommunicatioImpUtils.java"


# static fields
.field public static final a:Ljava/lang/String;

.field public static b:I

.field public static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lccsancom/mbridge/msdk/mbsignalcommon/communication/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/mbsignalcommon/communication/b;->a:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    sput v0, Lccsancom/mbridge/msdk/mbsignalcommon/communication/b;->b:I

    .line 24
    const/4 v0, 0x1

    sput v0, Lccsancom/mbridge/msdk/mbsignalcommon/communication/b;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(FF)Ljava/lang/String;
    .locals 4

    .line 80
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 82
    :try_start_0
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1}, Lccsanorg/json/JSONObject;-><init>()V

    .line 83
    sget-object v2, Lccsancom/mbridge/msdk/foundation/same/a;->e:Ljava/lang/String;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v3

    invoke-static {v3, p0}, Lccsancom/mbridge/msdk/foundation/tools/u;->a(Lccsanandroid/content/Context;F)I

    move-result p0

    invoke-virtual {v1, v2, p0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 84
    sget-object p0, Lccsancom/mbridge/msdk/foundation/same/a;->f:Ljava/lang/String;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lccsancom/mbridge/msdk/foundation/tools/u;->a(Lccsanandroid/content/Context;F)I

    move-result p1

    invoke-virtual {v1, p0, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 85
    sget-object p0, Lccsancom/mbridge/msdk/foundation/same/a;->h:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-virtual {v1, p0, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 86
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object p0

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Lccsanandroid/content/res/Resources;->getConfiguration()Lccsanandroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Lccsanandroid/content/res/Configuration;->orientation:I

    .line 87
    sget-object p1, Lccsancom/mbridge/msdk/foundation/same/a;->i:Ljava/lang/String;

    invoke-virtual {v1, p1, p0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 88
    sget-object p0, Lccsancom/mbridge/msdk/foundation/same/a;->j:Ljava/lang/String;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/u;->d(Lccsanandroid/content/Context;)F

    move-result p1

    float-to-double v2, p1

    invoke-virtual {v1, p0, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;D)Lccsanorg/json/JSONObject;

    .line 90
    sget-object p0, Lccsancom/mbridge/msdk/foundation/same/a;->g:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    goto :goto_0

    .line 91
    :catch_0
    move-exception p0

    .line 92
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 95
    :goto_0
    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 3

    .line 99
    const-string v0, ""

    .line 101
    :try_start_0
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1}, Lccsanorg/json/JSONObject;-><init>()V

    .line 102
    const-string v2, "code"

    invoke-virtual {v1, v2, p0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 103
    invoke-virtual {v1}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    .line 104
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 v1, 0x2

    invoke-static {p0, v1}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p0

    .line 110
    :cond_0
    goto :goto_0

    .line 108
    :catchall_0
    move-exception p0

    .line 109
    sget-object p0, Lccsancom/mbridge/msdk/mbsignalcommon/communication/b;->a:Ljava/lang/String;

    const-string v1, "code to string is error"

    invoke-static {p0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :goto_0
    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 116
    :try_start_0
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 117
    const-string v1, "code"

    sget v2, Lccsancom/mbridge/msdk/mbsignalcommon/communication/b;->c:I

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 118
    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 119
    const-string p1, "data"

    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1}, Lccsanorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, p1, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 120
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object p1

    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    goto :goto_0

    .line 121
    :catch_0
    move-exception p0

    .line 122
    sget-object p1, Lccsancom/mbridge/msdk/mbsignalcommon/communication/b;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    .locals 4

    .line 28
    const-string v0, "data"

    :try_start_0
    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p1

    .line 29
    if-nez p1, :cond_0

    .line 30
    const-string p1, "data is empty"

    invoke-static {p0, p1}, Lccsancom/mbridge/msdk/mbsignalcommon/communication/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    return-void

    .line 33
    :cond_0
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->parseCampaignWithBackData(Lccsanorg/json/JSONObject;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object p1

    .line 34
    if-nez p1, :cond_1

    .line 35
    const-string p1, "data camapign is empty"

    invoke-static {p0, p1}, Lccsancom/mbridge/msdk/mbsignalcommon/communication/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    return-void

    .line 38
    :cond_1
    nop

    .line 1046
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lccsancom/mbridge/msdk/mbsignalcommon/communication/b$1;

    invoke-direct {v2, p1}, Lccsancom/mbridge/msdk/mbsignalcommon/communication/b$1;-><init>(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1070
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 39
    const-string p1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1128
    :try_start_1
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1}, Lccsanorg/json/JSONObject;-><init>()V

    .line 1129
    const-string v2, "code"

    sget v3, Lccsancom/mbridge/msdk/mbsignalcommon/communication/b;->b:I

    invoke-virtual {v1, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 1130
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2}, Lccsanorg/json/JSONObject;-><init>()V

    .line 1131
    const-string v3, "id"

    invoke-virtual {v2, v3, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 1132
    invoke-virtual {v1, v0, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 1133
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object p1

    invoke-virtual {v1}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1137
    goto :goto_0

    .line 1134
    :catch_0
    move-exception p1

    .line 1135
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/communication/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1136
    sget-object v0, Lccsancom/mbridge/msdk/mbsignalcommon/communication/b;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    :goto_0
    goto :goto_1

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lccsancom/mbridge/msdk/mbsignalcommon/communication/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    :goto_1
    return-void
.end method

.method static synthetic a(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 1

    .line 19
    nop

    .line 2074
    sget-object v0, Lccsancom/mbridge/msdk/foundation/same/a/d;->g:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2075
    const-string v0, "banner"

    invoke-static {p0, p1, v0}, Lccsancom/mbridge/msdk/foundation/same/a/d;->b(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)V

    .line 19
    :cond_0
    return-void
.end method
