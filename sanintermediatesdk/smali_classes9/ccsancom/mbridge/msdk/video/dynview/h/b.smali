.class public final Lccsancom/mbridge/msdk/video/dynview/h/b;
.super Ljava/lang/Object;
.source "UIControlUtil.java"


# direct methods
.method public static a(Lccsanandroid/content/Context;)Z
    .locals 1

    .line 65
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Lccsanandroid/content/res/Resources;->getConfiguration()Lccsanandroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Lccsanandroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
