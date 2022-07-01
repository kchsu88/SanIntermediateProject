.class public final Lccsancom/mbridge/msdk/b/a/b;
.super Lccsancom/mbridge/msdk/foundation/same/net/h/b;
.source "SettingRequest.java"


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
    .locals 2

    .line 20
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/foundation/same/net/h/b;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/same/net/h/d;)V

    .line 21
    const-string p1, "platform"

    const-string v0, "1"

    invoke-virtual {p2, p1, v0}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    sget-object p1, Lccsanandroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v0, "os_version"

    invoke-virtual {p2, v0, p1}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object p1, p0, Lccsancom/mbridge/msdk/b/a/b;->a:Lccsanandroid/content/Context;

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/m;->k(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "package_name"

    invoke-virtual {p2, v0, p1}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object p1, p0, Lccsancom/mbridge/msdk/b/a/b;->a:Lccsanandroid/content/Context;

    .line 25
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/m;->f(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 24
    const-string v0, "app_version_name"

    invoke-virtual {p2, v0, p1}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lccsancom/mbridge/msdk/b/a/b;->a:Lccsanandroid/content/Context;

    .line 27
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/m;->e(Lccsanandroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 26
    const-string v1, "app_version_code"

    invoke-virtual {p2, v1, p1}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lccsancom/mbridge/msdk/b/a/b;->a:Lccsanandroid/content/Context;

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/m;->d(Lccsanandroid/content/Context;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "orientation"

    invoke-virtual {p2, v1, p1}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/m;->a()Ljava/lang/String;

    move-result-object p1

    const-string v1, "model"

    invoke-virtual {p2, v1, p1}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/m;->c()Ljava/lang/String;

    move-result-object p1

    const-string v1, "brand"

    invoke-virtual {p2, v1, p1}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/m;->i()Ljava/lang/String;

    move-result-object p1

    const-string v1, "gaid"

    invoke-virtual {p2, v1, p1}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object p1, p0, Lccsancom/mbridge/msdk/b/a/b;->a:Lccsanandroid/content/Context;

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/m;->n(Lccsanandroid/content/Context;)I

    move-result p1

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "network_type"

    invoke-virtual {p2, v1, v0}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lccsancom/mbridge/msdk/b/a/b;->a:Lccsanandroid/content/Context;

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/m;->a(Lccsanandroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "network_str"

    invoke-virtual {p2, v0, p1}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object p1, p0, Lccsancom/mbridge/msdk/b/a/b;->a:Lccsanandroid/content/Context;

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/m;->c(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "language"

    invoke-virtual {p2, v0, p1}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/m;->e()Ljava/lang/String;

    move-result-object p1

    const-string v0, "timezone"

    invoke-virtual {p2, v0, p1}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/m;->d()Ljava/lang/String;

    move-result-object p1

    const-string v0, "useragent"

    invoke-virtual {p2, v0, p1}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string p1, "sdk_version"

    const-string v0, "MAL_15.7.41"

    invoke-virtual {p2, p1, v0}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lccsancom/mbridge/msdk/b/a/b;->a:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/m;->h(Lccsanandroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lccsancom/mbridge/msdk/b/a/b;->a:Lccsanandroid/content/Context;

    .line 40
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/m;->i(Lccsanandroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 39
    const-string v0, "screen_size"

    invoke-virtual {p2, v0, p1}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-static {p2}, Lccsancom/mbridge/msdk/foundation/same/net/h/e;->b(Lccsancom/mbridge/msdk/foundation/same/net/h/d;)V

    .line 42
    return-void
.end method
