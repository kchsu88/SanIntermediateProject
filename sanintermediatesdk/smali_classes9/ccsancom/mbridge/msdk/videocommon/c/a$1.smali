.class final Lccsancom/mbridge/msdk/videocommon/c/a$1;
.super Lccsancom/mbridge/msdk/foundation/same/net/h/c;
.source "RewardSettingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/videocommon/c/a;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lccsancom/mbridge/msdk/videocommon/c/a;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/videocommon/c/a;Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lccsancom/mbridge/msdk/videocommon/c/a$1;->b:Lccsancom/mbridge/msdk/videocommon/c/a;

    iput-object p2, p0, Lccsancom/mbridge/msdk/videocommon/c/a$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Lccsancom/mbridge/msdk/foundation/same/net/h/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 43
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/c/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public final a(Lccsanorg/json/JSONObject;)V
    .locals 3

    .line 31
    if-eqz p1, :cond_0

    .line 33
    :try_start_0
    const-string v0, "current_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;

    .line 34
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/d/b;->a()Lccsancom/mbridge/msdk/videocommon/d/b;

    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/c/a$1;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reward_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1229
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/a/a/a;->a()Lccsancom/mbridge/msdk/foundation/a/a/a;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lccsancom/mbridge/msdk/foundation/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1230
    invoke-static {p1}, Lccsancom/mbridge/msdk/videocommon/d/a;->a(Ljava/lang/String;)Lccsancom/mbridge/msdk/videocommon/d/a;

    move-result-object p1

    sput-object p1, Lccsancom/mbridge/msdk/videocommon/d/b;->a:Lccsancom/mbridge/msdk/videocommon/d/a;
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    goto :goto_0

    .line 35
    :catch_0
    move-exception p1

    .line 36
    invoke-virtual {p1}, Lccsanorg/json/JSONException;->printStackTrace()V

    .line 39
    :cond_0
    :goto_0
    return-void
.end method
