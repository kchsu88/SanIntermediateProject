.class final Lccsancom/mbridge/msdk/videocommon/c/a$2;
.super Lccsancom/mbridge/msdk/foundation/same/net/h/c;
.source "RewardSettingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/videocommon/c/a;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/c/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lccsancom/mbridge/msdk/videocommon/c/c;

.field final synthetic c:Lccsancom/mbridge/msdk/videocommon/c/a;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/videocommon/c/a;Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/c/c;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lccsancom/mbridge/msdk/videocommon/c/a$2;->c:Lccsancom/mbridge/msdk/videocommon/c/a;

    iput-object p2, p0, Lccsancom/mbridge/msdk/videocommon/c/a$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lccsancom/mbridge/msdk/videocommon/c/a$2;->b:Lccsancom/mbridge/msdk/videocommon/c/c;

    invoke-direct {p0}, Lccsancom/mbridge/msdk/foundation/same/net/h/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 79
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/c/a$2;->b:Lccsancom/mbridge/msdk/videocommon/c/c;

    if-eqz v0, :cond_1

    .line 81
    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/videocommon/c/c;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/videocommon/c/a$2;->b:Lccsancom/mbridge/msdk/videocommon/c/c;

    if-eqz p1, :cond_1

    .line 85
    const-string v0, "request error"

    invoke-interface {p1, v0}, Lccsancom/mbridge/msdk/videocommon/c/c;->b(Ljava/lang/String;)V

    .line 88
    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Lccsanorg/json/JSONObject;)V
    .locals 3

    .line 58
    if-eqz p1, :cond_2

    .line 60
    :try_start_0
    invoke-virtual {p1}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/videocommon/d/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    const-string v0, "current_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;

    .line 62
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/d/b;->a()Lccsancom/mbridge/msdk/videocommon/d/b;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/videocommon/c/a$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lccsancom/mbridge/msdk/videocommon/c/a$2;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lccsancom/mbridge/msdk/videocommon/d/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object p1, p0, Lccsancom/mbridge/msdk/videocommon/c/a$2;->b:Lccsancom/mbridge/msdk/videocommon/c/c;

    if-eqz p1, :cond_1

    .line 64
    const-string v0, "request success"

    invoke-interface {p1, v0}, Lccsancom/mbridge/msdk/videocommon/c/c;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/videocommon/c/a$2;->b:Lccsancom/mbridge/msdk/videocommon/c/c;

    if-eqz p1, :cond_1

    .line 68
    const-string v0, "data error"

    invoke-interface {p1, v0}, Lccsancom/mbridge/msdk/videocommon/c/c;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :cond_1
    :goto_0
    goto :goto_1

    .line 71
    :catch_0
    move-exception p1

    .line 72
    invoke-virtual {p1}, Lccsanorg/json/JSONException;->printStackTrace()V

    .line 75
    :cond_2
    :goto_1
    return-void
.end method
