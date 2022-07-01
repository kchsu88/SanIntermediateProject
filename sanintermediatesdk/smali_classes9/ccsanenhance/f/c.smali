.class public Lccsanenhance/f/c;
.super Lccsanenhance/f/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanenhance/f/c$g;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsanenhance/f/b<",
        "Lccsanenhance/f/c$g;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lccsanenhance/b/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lccsanenhance/f/b;-><init>(Lccsanenhance/b/b;)V

    return-void
.end method

.method public static synthetic a(Lccsanenhance/f/c;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lccsanenhance/f/c;->e()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-static {p0}, Lccsanenhance/f/c;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-static {p0, p1}, Lccsanenhance/f/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lccsanenhance/f/c;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lccsanenhance/f/c;->b(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lccsanenhance/f/c;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lccsanenhance/f/c;->f()V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 10
    sget-object v0, Lccsanen/hance/launchsdk/LaunchStarter;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 11
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    new-instance v1, Lccsanenhance/f/c$d;

    invoke-direct {v1, v0, p0, p1}, Lccsanenhance/f/c$d;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-static {}, Lccsanenhance/a/e;->a()Lccsanenhance/a/e;

    move-result-object p0

    invoke-virtual {p0}, Lccsanenhance/a/e;->b()Lccsanenhance/d/f;

    move-result-object p0

    invoke-virtual {p0}, Lccsanenhance/d/f;->d()Lccsanenhance/d/d;

    move-result-object p0

    invoke-interface {p0, v1}, Lccsanenhance/d/d;->a(Lccsanenhance/d/b;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2

    .line 25
    sget-object v0, Lccsanen/hance/launchsdk/LaunchStarter;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 26
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    new-instance v1, Lccsanenhance/f/c$e;

    invoke-direct {v1, v0, p0}, Lccsanenhance/f/c$e;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lccsanenhance/a/e;->a()Lccsanenhance/a/e;

    move-result-object p0

    invoke-virtual {p0}, Lccsanenhance/a/e;->b()Lccsanenhance/d/f;

    move-result-object p0

    invoke-virtual {p0}, Lccsanenhance/d/f;->d()Lccsanenhance/d/d;

    move-result-object p0

    invoke-interface {p0, v1}, Lccsanenhance/d/d;->a(Lccsanenhance/d/b;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lccsanenhance/f/b$a;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lccsanenhance/f/c;->c()Lccsanenhance/f/c$g;

    move-result-object v0

    return-object v0
.end method

.method public a(Lccsanenhance/b/b;Ljava/lang/String;J)V
    .locals 7

    .line 6
    new-instance v6, Lccsanenhance/f/c$f;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lccsanenhance/f/c$f;-><init>(Lccsanenhance/f/c;Lccsanenhance/b/b;Ljava/lang/String;J)V

    .line 23
    invoke-static {}, Lccsanenhance/a/e;->a()Lccsanenhance/a/e;

    move-result-object p1

    invoke-virtual {p1}, Lccsanenhance/a/e;->b()Lccsanenhance/d/f;

    move-result-object p1

    invoke-virtual {p1}, Lccsanenhance/d/f;->b()Lccsanenhance/d/e;

    move-result-object p1

    invoke-virtual {p1, v6}, Lccsanenhance/d/e;->a(Lccsanenhance/d/b;)V

    return-void
.end method

.method public bridge synthetic b()Lccsanenhance/f/b$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lccsanenhance/f/c;->d()Lccsanenhance/f/c$g;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 1

    .line 3
    :try_start_0
    invoke-static {}, Lccsanenhance/g/b;->a()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Lccsanandroid/content/Intent;

    move-result-object p1

    .line 4
    invoke-static {}, Lccsanenhance/g/b;->b()Lccsanandroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1}, Lccsanandroid/app/Activity;->startActivity(Lccsanandroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/high16 v0, 0x10000000

    .line 8
    invoke-virtual {p1, v0}, Lccsanandroid/content/Intent;->addFlags(I)Lccsanandroid/content/Intent;

    .line 9
    invoke-static {}, Lccsanenhance/g/b;->a()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const/4 p1, 0x0

    return p1
.end method

.method public c(Ljava/lang/String;)J
    .locals 5

    .line 24
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lccsanandroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "Android"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 25
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "data"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 27
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0

    .line 29
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "obb"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 31
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public c()Lccsanenhance/f/c$g;
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lccsanenhance/f/b;->a:Lccsanenhance/b/b;

    invoke-static {v0}, Lccsanenhance/a/f;->f(Lccsanenhance/b/b;)V

    .line 3
    iget-object v0, p0, Lccsanenhance/f/b;->a:Lccsanenhance/b/b;

    invoke-virtual {v0}, Lccsanenhance/b/b;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsanenhance/f/c;->c(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 6
    iget-object v0, p0, Lccsanenhance/f/b;->a:Lccsanenhance/b/b;

    invoke-static {v0}, Lccsanenhance/a/f;->e(Lccsanenhance/b/b;)V

    .line 9
    :cond_0
    invoke-static {}, Lccsanenhance/g/f;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 11
    iget-object v0, p0, Lccsanenhance/f/b;->a:Lccsanenhance/b/b;

    invoke-static {v0}, Lccsanenhance/a/f;->d(Lccsanenhance/b/b;)V

    .line 13
    new-instance v0, Lccsanenhance/f/c$g$a;

    invoke-direct {v0}, Lccsanenhance/f/c$g$a;-><init>()V

    const-string v1, "event"

    const-string v2, "network_unavailable"

    .line 14
    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 21
    :cond_1
    new-instance v0, Lccsanenhance/f/c$g$b;

    invoke-direct {v0}, Lccsanenhance/f/c$g$b;-><init>()V

    return-object v0

    :catchall_0
    move-exception v0

    .line 22
    new-instance v1, Lccsanenhance/c/a;

    invoke-direct {v1, v0}, Lccsanenhance/c/a;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lccsanenhance/c/b;->a(Lccsanenhance/c/a;)V

    .line 23
    new-instance v0, Lccsanenhance/f/c$g$a;

    invoke-direct {v0}, Lccsanenhance/f/c$g$a;-><init>()V

    return-object v0
.end method

.method public d()Lccsanenhance/f/c$g;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lccsanenhance/f/c$a;

    invoke-direct {v0, p0}, Lccsanenhance/f/c$a;-><init>(Lccsanenhance/f/c;)V

    .line 19
    iget-object v1, p0, Lccsanenhance/f/b;->a:Lccsanenhance/b/b;

    invoke-static {v1, v0}, Lccsanenhance/a/d;->a(Lccsanenhance/b/b;Lccsanenhance/d/c;)V

    .line 20
    new-instance v0, Lccsanenhance/f/c$g$b;

    invoke-direct {v0}, Lccsanenhance/f/c$g$b;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 22
    new-instance v1, Lccsanenhance/c/a;

    invoke-direct {v1, v0}, Lccsanenhance/c/a;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lccsanenhance/c/b;->a(Lccsanenhance/c/a;)V

    .line 24
    new-instance v0, Lccsanenhance/f/c$g$a;

    invoke-direct {v0}, Lccsanenhance/f/c$g$a;-><init>()V

    return-object v0
.end method

.method public final e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lccsanenhance/f/b;->a:Lccsanenhance/b/b;

    invoke-virtual {v0}, Lccsanenhance/b/b;->m()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Lccsanenhance/f/c$c;

    const-wide/16 v2, 0xbb8

    invoke-direct {v1, p0, v2, v3, v0}, Lccsanenhance/f/c$c;-><init>(Lccsanenhance/f/c;JLjava/lang/String;)V

    .line 30
    invoke-static {}, Lccsanenhance/a/e;->a()Lccsanenhance/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lccsanenhance/a/e;->b()Lccsanenhance/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lccsanenhance/d/f;->b()Lccsanenhance/d/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lccsanenhance/d/e;->a(Lccsanenhance/d/b;)V

    return-void
.end method

.method public final f()V
    .locals 2

    .line 1
    new-instance v0, Lccsanenhance/f/c$b;

    invoke-direct {v0, p0}, Lccsanenhance/f/c$b;-><init>(Lccsanenhance/f/c;)V

    .line 14
    invoke-static {}, Lccsanenhance/a/e;->a()Lccsanenhance/a/e;

    move-result-object v1

    invoke-virtual {v1}, Lccsanenhance/a/e;->b()Lccsanenhance/d/f;

    move-result-object v1

    invoke-virtual {v1}, Lccsanenhance/d/f;->b()Lccsanenhance/d/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsanenhance/d/e;->a(Lccsanenhance/d/b;)V

    return-void
.end method
