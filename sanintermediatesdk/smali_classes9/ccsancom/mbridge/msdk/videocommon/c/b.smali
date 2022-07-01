.class public final Lccsancom/mbridge/msdk/videocommon/c/b;
.super Lccsancom/mbridge/msdk/foundation/same/net/h/b;
.source "RewardSettingRequest.java"


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/foundation/same/net/h/b;-><init>(Lccsanandroid/content/Context;)V

    .line 16
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/same/net/h/d;)V
    .locals 4

    .line 21
    const-string v0, ""

    :try_start_0
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/foundation/same/net/h/b;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/same/net/h/d;)V

    .line 22
    const-string p1, "platform"

    const-string v1, "1"

    invoke-virtual {p2, p1, v1}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const-string p1, "os_version"

    sget-object v1, Lccsanandroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p2, p1, v1}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const-string p1, "package_name"

    iget-object v1, p0, Lccsancom/mbridge/msdk/videocommon/c/b;->a:Lccsanandroid/content/Context;

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/m;->k(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string p1, "app_version_name"

    iget-object v1, p0, Lccsancom/mbridge/msdk/videocommon/c/b;->a:Lccsanandroid/content/Context;

    .line 26
    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/m;->f(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-virtual {p2, p1, v1}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string p1, "app_version_code"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lccsancom/mbridge/msdk/videocommon/c/b;->a:Lccsanandroid/content/Context;

    .line 28
    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/tools/m;->e(Lccsanandroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-virtual {p2, p1, v1}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string p1, "orientation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lccsancom/mbridge/msdk/videocommon/c/b;->a:Lccsanandroid/content/Context;

    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/tools/m;->d(Lccsanandroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string p1, "model"

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/m;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string p1, "brand"

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/m;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string p1, "gaid"

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/m;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object p1, p0, Lccsancom/mbridge/msdk/videocommon/c/b;->a:Lccsanandroid/content/Context;

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/m;->n(Lccsanandroid/content/Context;)I

    move-result p1

    .line 34
    const-string v1, "network_type"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v1, "network_str"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lccsancom/mbridge/msdk/videocommon/c/b;->a:Lccsanandroid/content/Context;

    invoke-static {v3, p1}, Lccsancom/mbridge/msdk/foundation/tools/m;->a(Lccsanandroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string p1, "language"

    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/c/b;->a:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/m;->c(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string p1, "timezone"

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/m;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string p1, "useragent"

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/m;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string p1, "sdk_version"

    const-string v0, "MAL_15.7.41"

    invoke-virtual {p2, p1, v0}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string p1, "screen_size"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lccsancom/mbridge/msdk/videocommon/c/b;->a:Lccsanandroid/content/Context;

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/m;->h(Lccsanandroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/videocommon/c/b;->a:Lccsanandroid/content/Context;

    .line 41
    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/m;->i(Lccsanandroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-virtual {p2, p1, v0}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-static {p2}, Lccsancom/mbridge/msdk/foundation/same/net/h/e;->b(Lccsancom/mbridge/msdk/foundation/same/net/h/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    goto :goto_0

    .line 43
    :catch_0
    move-exception p1

    .line 44
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 46
    :goto_0
    return-void
.end method
