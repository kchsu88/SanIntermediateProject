.class public final Lccsancom/mbridge/msdk/video/bt/a/b;
.super Ljava/lang/Object;
.source "HandlerH5MessageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/video/bt/a/b$a;
    }
.end annotation


# instance fields
.field a:I

.field b:I

.field private c:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "handlerNativeResult"

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/bt/a/b;->c:Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/mbridge/msdk/video/bt/a/b;->a:I

    .line 21
    const/4 v0, 0x1

    iput v0, p0, Lccsancom/mbridge/msdk/video/bt/a/b;->b:I

    .line 24
    return-void
.end method

.method synthetic constructor <init>(Lccsancom/mbridge/msdk/video/bt/a/b$1;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/bt/a/b;-><init>()V

    return-void
.end method

.method public static a()Lccsancom/mbridge/msdk/video/bt/a/b;
    .locals 1

    .line 31
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/b$a;->a()Lccsancom/mbridge/msdk/video/bt/a/b;

    move-result-object v0

    return-object v0
.end method

.method private a(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 69
    const-string v0, "HandlerH5MessageManager"

    :try_start_0
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1}, Lccsanorg/json/JSONObject;-><init>()V

    .line 70
    const-string v2, "code"

    invoke-virtual {v1, v2, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 71
    const-string p1, "message"

    invoke-virtual {v1, p1, p2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 72
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object p1

    invoke-virtual {v1}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    const/4 v1, 0x2

    invoke-static {p2, v1}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 75
    :catchall_0
    move-exception p1

    .line 76
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 73
    :catch_0
    move-exception p1

    .line 74
    invoke-virtual {p1}, Lccsanorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :goto_0
    nop

    .line 78
    :goto_1
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lccsanorg/json/JSONObject;)V
    .locals 6

    .line 36
    const-string v0, "HandlerH5MessageManager"

    if-eqz p2, :cond_5

    :try_start_0
    invoke-virtual {p2}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 40
    :cond_0
    const-string v1, "uniqueIdentifier"

    invoke-virtual {p2, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 41
    const-string v2, "name"

    invoke-virtual {p2, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 46
    :cond_1
    nop

    .line 47
    const-string v3, "parameters"

    invoke-virtual {p2, v3}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v3

    .line 48
    const-string v4, "result"

    invoke-virtual {p2, v4}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p2

    .line 49
    const/4 v4, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 50
    const-string v5, "type"

    invoke-virtual {p2, v5, v4}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 52
    :cond_2
    iget p2, p0, Lccsancom/mbridge/msdk/video/bt/a/b;->a:I

    const-string v5, "receivedMessage"

    invoke-direct {p0, p2, v5, p1}, Lccsancom/mbridge/msdk/video/bt/a/b;->a(ILjava/lang/String;Ljava/lang/Object;)V

    .line 53
    const-string p2, "reporter"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 54
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/a/a;->a()Lccsancom/mbridge/msdk/mbsignalcommon/a/a;

    move-result-object p2

    invoke-virtual {p2, p1, v2, v3, v4}, Lccsancom/mbridge/msdk/mbsignalcommon/a/a;->a(Ljava/lang/Object;Ljava/lang/String;Lccsanorg/json/JSONArray;I)V

    goto :goto_2

    .line 55
    :cond_3
    const-string p2, "MediaPlayer"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 56
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/a;->a()Lccsancom/mbridge/msdk/video/bt/a/a;

    move-result-object p2

    invoke-virtual {p2, p1, v2, v3, v4}, Lccsancom/mbridge/msdk/video/bt/a/a;->a(Ljava/lang/Object;Ljava/lang/String;Lccsanorg/json/JSONArray;I)V

    goto :goto_2

    .line 43
    :cond_4
    :goto_0
    iget p2, p0, Lccsancom/mbridge/msdk/video/bt/a/b;->b:I

    const-string v1, "module or method is null"

    invoke-direct {p0, p2, v1, p1}, Lccsancom/mbridge/msdk/video/bt/a/b;->a(ILjava/lang/String;Ljava/lang/Object;)V

    .line 44
    return-void

    .line 37
    :cond_5
    :goto_1
    iget p2, p0, Lccsancom/mbridge/msdk/video/bt/a/b;->b:I

    const-string v1, "params is null"

    invoke-direct {p0, p2, v1, p1}, Lccsancom/mbridge/msdk/video/bt/a/b;->a(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    return-void

    .line 61
    :catchall_0
    move-exception p2

    .line 62
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget v0, p0, Lccsancom/mbridge/msdk/video/bt/a/b;->b:I

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v0, p2, p1}, Lccsancom/mbridge/msdk/video/bt/a/b;->a(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 58
    :catch_0
    move-exception p2

    .line 59
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget v0, p0, Lccsancom/mbridge/msdk/video/bt/a/b;->b:I

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v0, p2, p1}, Lccsancom/mbridge/msdk/video/bt/a/b;->a(ILjava/lang/String;Ljava/lang/Object;)V

    .line 64
    :cond_6
    :goto_2
    nop

    .line 65
    :goto_3
    return-void
.end method
