.class final Lccsancom/mbridge/msdk/b/c$3;
.super Lccsancom/mbridge/msdk/foundation/same/net/h/c;
.source "SettingRequestController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/b/c;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lccsancom/mbridge/msdk/b/c;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/b/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lccsancom/mbridge/msdk/b/c$3;->c:Lccsancom/mbridge/msdk/b/c;

    iput-object p2, p0, Lccsancom/mbridge/msdk/b/c$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lccsancom/mbridge/msdk/b/c$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Lccsancom/mbridge/msdk/foundation/same/net/h/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 183
    return-void
.end method

.method public final a(Lccsanorg/json/JSONObject;)V
    .locals 3

    .line 168
    if-eqz p1, :cond_0

    .line 169
    :try_start_0
    const-string v0, "unitSetting"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object p1

    .line 170
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lccsanorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 171
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONArray;->optJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object p1

    .line 172
    const-string v0, "current_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;

    .line 173
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/b/c$3;->a:Ljava/lang/String;

    iget-object v2, p0, Lccsancom/mbridge/msdk/b/c$3;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lccsancom/mbridge/msdk/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 176
    :catch_0
    move-exception p1

    .line 177
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 178
    :cond_0
    :goto_0
    nop

    .line 179
    :goto_1
    return-void
.end method
