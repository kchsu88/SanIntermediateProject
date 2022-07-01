.class final Lccsancom/mbridge/msdk/b/c$1;
.super Lccsancom/mbridge/msdk/foundation/same/net/h/c;
.source "SettingRequestController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/b/c;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lccsanandroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field final synthetic g:Lccsancom/mbridge/msdk/b/c;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/b/c;Ljava/lang/String;Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lccsancom/mbridge/msdk/b/c$1;->g:Lccsancom/mbridge/msdk/b/c;

    iput-object p2, p0, Lccsancom/mbridge/msdk/b/c$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lccsancom/mbridge/msdk/b/c$1;->b:Lccsanandroid/content/Context;

    iput-object p4, p0, Lccsancom/mbridge/msdk/b/c$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Lccsancom/mbridge/msdk/foundation/same/net/h/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    .line 72
    new-instance v0, Lccsancom/mbridge/msdk/foundation/same/report/c;

    iget-object v1, p0, Lccsancom/mbridge/msdk/b/c$1;->b:Lccsanandroid/content/Context;

    invoke-direct {v0, v1}, Lccsancom/mbridge/msdk/foundation/same/report/c;-><init>(Lccsanandroid/content/Context;)V

    .line 73
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/same/report/c;->a()V

    .line 74
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->c()Lccsancom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object v1

    iget-object v1, v1, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->c:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lccsancom/mbridge/msdk/foundation/same/report/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->c()Lccsancom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object p1

    iget v0, p1, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->m:I

    .line 76
    iget-object p1, p0, Lccsancom/mbridge/msdk/b/c$1;->g:Lccsancom/mbridge/msdk/b/c;

    iget-object v0, p0, Lccsancom/mbridge/msdk/b/c$1;->b:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsancom/mbridge/msdk/b/c$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lccsancom/mbridge/msdk/b/c$1;->c:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lccsancom/mbridge/msdk/b/c;->a(Lccsancom/mbridge/msdk/b/c;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public final a(Lccsanorg/json/JSONObject;)V
    .locals 5

    .line 49
    const-string v0, "web_env_url"

    const-string v1, "mraid_js"

    if-eqz p1, :cond_1

    .line 1021
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v2

    const-string v3, "cv"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Lccsanandroid/content/SharedPreferences;

    move-result-object v2

    .line 1023
    invoke-interface {v2}, Lccsanandroid/content/SharedPreferences;->edit()Lccsanandroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1024
    invoke-interface {v2}, Lccsanandroid/content/SharedPreferences$Editor;->clear()Lccsanandroid/content/SharedPreferences$Editor;

    .line 1025
    invoke-interface {v2}, Lccsanandroid/content/SharedPreferences$Editor;->commit()Z

    .line 51
    const-string v2, "current_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;

    .line 52
    const-string v2, "host_setting"

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->c()Lccsancom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object v3

    iget-object v3, v3, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->c:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 53
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v2

    iget-object v3, p0, Lccsancom/mbridge/msdk/b/c$1;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsancom/mbridge/msdk/b/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->c()Lccsancom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->d()V

    .line 56
    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 57
    invoke-static {}, Lccsancom/mbridge/msdk/b/b/a;->a()Lccsancom/mbridge/msdk/b/b/a;

    move-result-object v2

    iget-object v3, p0, Lccsancom/mbridge/msdk/b/c$1;->b:Lccsanandroid/content/Context;

    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lccsancom/mbridge/msdk/b/b/a;->a(Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 60
    :cond_0
    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 61
    invoke-static {}, Lccsancom/mbridge/msdk/b/b/b;->a()Lccsancom/mbridge/msdk/b/b/b;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/b/c$1;->b:Lccsanandroid/content/Context;

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lccsancom/mbridge/msdk/b/b/b;->a(Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 64
    :cond_1
    new-instance p1, Lccsancom/mbridge/msdk/foundation/same/report/c;

    iget-object v0, p0, Lccsancom/mbridge/msdk/b/c$1;->b:Lccsanandroid/content/Context;

    invoke-direct {p1, v0}, Lccsancom/mbridge/msdk/foundation/same/report/c;-><init>(Lccsanandroid/content/Context;)V

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/same/report/c;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    goto :goto_0

    .line 65
    :catch_0
    move-exception p1

    .line 66
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 68
    :goto_0
    return-void
.end method
