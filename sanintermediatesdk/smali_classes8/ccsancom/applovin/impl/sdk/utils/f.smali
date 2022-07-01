.class public Lccsancom/applovin/impl/sdk/utils/f;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lccsanandroid/content/Context;)Lccsanandroid/graphics/Point;
    .locals 2

    new-instance v0, Lccsanandroid/graphics/Point;

    invoke-direct {v0}, Lccsanandroid/graphics/Point;-><init>()V

    const/16 v1, 0x1e0

    iput v1, v0, Lccsanandroid/graphics/Point;->x:I

    const/16 v1, 0x140

    iput v1, v0, Lccsanandroid/graphics/Point;->y:I

    const-string/jumbo v1, "window"

    invoke-virtual {p0, v1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsanandroid/view/WindowManager;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lccsanandroid/view/WindowManager;->getDefaultDisplay()Lccsanandroid/view/Display;

    move-result-object p0

    invoke-static {}, Lccsancom/applovin/impl/sdk/utils/f;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lccsanandroid/view/Display;->getRealSize(Lccsanandroid/graphics/Point;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lccsanandroid/view/Display;->getSize(Lccsanandroid/graphics/Point;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static a()V
    .locals 1

    :try_start_0
    new-instance v0, Lccsanandroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Lccsanandroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Lccsanandroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Lccsanandroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/os/StrictMode$ThreadPolicy$Builder;->build()Lccsanandroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/os/StrictMode;->setThreadPolicy(Lccsanandroid/os/StrictMode$ThreadPolicy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;Lccsanandroid/content/Context;)Z
    .locals 1

    invoke-virtual {p1}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lccsanandroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b()Z
    .locals 2

    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static c()Z
    .locals 2

    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static d()Z
    .locals 2

    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static e()Z
    .locals 2

    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static f()Z
    .locals 2

    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static g()Z
    .locals 2

    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static h()Z
    .locals 2

    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
