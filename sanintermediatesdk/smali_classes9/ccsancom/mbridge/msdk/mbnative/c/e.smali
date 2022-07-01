.class public final Lccsancom/mbridge/msdk/mbnative/c/e;
.super Ljava/lang/Object;
.source "Views.java"


# direct methods
.method public static a(Lccsanandroid/content/Context;Lccsanandroid/view/View;)Lccsanandroid/view/View;
    .locals 2

    .line 11
    nop

    .line 1018
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1019
    goto :goto_0

    .line 1021
    :cond_0
    instance-of v1, p0, Lccsanandroid/app/Activity;

    if-nez v1, :cond_1

    .line 1022
    goto :goto_0

    .line 1024
    :cond_1
    check-cast p0, Lccsanandroid/app/Activity;

    invoke-virtual {p0}, Lccsanandroid/app/Activity;->getWindow()Lccsanandroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Lccsanandroid/view/Window;->getDecorView()Lccsanandroid/view/View;

    move-result-object p0

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    .line 11
    :goto_0
    nop

    .line 12
    invoke-static {p1}, Lccsancom/mbridge/msdk/mbnative/c/e;->a(Lccsanandroid/view/View;)Lccsanandroid/view/View;

    move-result-object p0

    .line 14
    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, p0

    :goto_1
    return-object v0
.end method

.method private static a(Lccsanandroid/view/View;)Lccsanandroid/view/View;
    .locals 2

    .line 29
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 30
    return-object v0

    .line 33
    :cond_0
    :try_start_0
    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat;->isAttachedToWindow(Lccsanandroid/view/View;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v1

    .line 38
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lccsanandroid/view/View;->getRootView()Lccsanandroid/view/View;

    move-result-object p0

    .line 39
    if-nez p0, :cond_1

    .line 40
    return-object v0

    .line 42
    :cond_1
    const v1, 0x1020002

    invoke-virtual {p0, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 43
    if-eqz v0, :cond_2

    move-object p0, v0

    :cond_2
    return-object p0

    .line 44
    :catchall_1
    move-exception p0

    .line 47
    return-object v0
.end method
