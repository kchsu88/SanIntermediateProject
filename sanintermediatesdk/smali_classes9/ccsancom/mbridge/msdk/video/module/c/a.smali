.class public final Lccsancom/mbridge/msdk/video/module/c/a;
.super Lccsancom/mbridge/msdk/foundation/same/net/h/b;
.source "VideoViewRequest.java"


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/foundation/same/net/h/b;-><init>(Lccsanandroid/content/Context;)V

    .line 22
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/same/net/h/d;)V
    .locals 3

    .line 27
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/foundation/same/net/h/b;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/same/net/h/d;)V

    .line 29
    const-string p1, "platform"

    const-string v0, "1"

    invoke-virtual {p2, p1, v0}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    sget-object p1, Lccsanandroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v0, "os_version"

    invoke-virtual {p2, v0, p1}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/c/a;->a:Lccsanandroid/content/Context;

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/m;->k(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "package_name"

    invoke-virtual {p2, v0, p1}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/c/a;->a:Lccsanandroid/content/Context;

    .line 33
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/m;->f(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 32
    const-string v0, "app_version_name"

    invoke-virtual {p2, v0, p1}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/c/a;->a:Lccsanandroid/content/Context;

    .line 35
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/m;->e(Lccsanandroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 34
    const-string v1, "app_version_code"

    invoke-virtual {p2, v1, p1}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/c/a;->a:Lccsanandroid/content/Context;

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/m;->d(Lccsanandroid/content/Context;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "orientation"

    invoke-virtual {p2, v1, p1}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/m;->a()Ljava/lang/String;

    move-result-object p1

    const-string v1, "model"

    invoke-virtual {p2, v1, p1}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/m;->c()Ljava/lang/String;

    move-result-object p1

    const-string v1, "brand"

    invoke-virtual {p2, v1, p1}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string p1, "gaid"

    invoke-virtual {p2, p1, v0}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/m;->j()Ljava/lang/String;

    move-result-object p1

    const-string v1, "gaid2"

    invoke-virtual {p2, v1, p1}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/c/a;->a:Lccsanandroid/content/Context;

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/m;->n(Lccsanandroid/content/Context;)I

    move-result p1

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "network_type"

    invoke-virtual {p2, v2, v1}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/c/a;->a:Lccsanandroid/content/Context;

    invoke-static {v2, p1}, Lccsancom/mbridge/msdk/foundation/tools/m;->a(Lccsanandroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "network_str"

    invoke-virtual {p2, v0, p1}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/module/c/a;->a:Lccsanandroid/content/Context;

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/m;->c(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "language"

    invoke-virtual {p2, v0, p1}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/m;->e()Ljava/lang/String;

    move-result-object p1

    const-string v0, "timezone"

    invoke-virtual {p2, v0, p1}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/m;->d()Ljava/lang/String;

    move-result-object p1

    const-string v0, "useragent"

    invoke-virtual {p2, v0, p1}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string p1, "sdk_version"

    const-string v0, "MAL_15.7.41"

    invoke-virtual {p2, p1, v0}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/c/a;->a:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/m;->h(Lccsanandroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/c/a;->a:Lccsanandroid/content/Context;

    .line 49
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/m;->i(Lccsanandroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 48
    const-string v0, "screen_size"

    invoke-virtual {p2, v0, p1}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object p1

    .line 51
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/b/b;->b(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/a;

    move-result-object p1

    .line 52
    nop

    .line 53
    if-eqz p1, :cond_1

    .line 54
    new-instance p1, Lccsanorg/json/JSONObject;

    invoke-direct {p1}, Lccsanorg/json/JSONObject;-><init>()V

    .line 56
    :try_start_0
    invoke-virtual {p1}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    nop

    .line 58
    invoke-virtual {p1}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 57
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 59
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    const-string v0, "dvi"

    invoke-virtual {p2, v0, p1}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :cond_0
    goto :goto_0

    .line 63
    :catch_0
    move-exception p1

    .line 64
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 67
    :cond_1
    :goto_0
    return-void
.end method
