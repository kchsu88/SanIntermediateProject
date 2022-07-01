.class public final Lccsancom/iab/omid/library/vungle/d/f;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lccsanandroid/view/View;)F
    .locals 2

    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lccsanandroid/view/View;->getZ()F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Lccsanandroid/view/View;)Lccsanandroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object p0

    instance-of v0, p0, Lccsanandroid/view/View;

    if-eqz v0, :cond_0

    check-cast p0, Lccsanandroid/view/View;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Lccsanandroid/view/View;)Z
    .locals 3

    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-lt v0, v2, :cond_0

    invoke-virtual {p0}, Lccsanandroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lccsanandroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    :goto_0
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lccsanandroid/view/View;->getAlpha()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-static {p0}, Lccsancom/iab/omid/library/vungle/d/f;->b(Lccsanandroid/view/View;)Lccsanandroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static d(Lccsanandroid/view/View;)Z
    .locals 0

    invoke-static {p0}, Lccsancom/iab/omid/library/vungle/d/f;->e(Lccsanandroid/view/View;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static e(Lccsanandroid/view/View;)Ljava/lang/String;
    .locals 2

    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lccsanandroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "notAttached"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lccsanandroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    sparse-switch v0, :sswitch_data_0

    const-string p0, "viewNotVisible"

    return-object p0

    :sswitch_0
    const-string p0, "viewGone"

    return-object p0

    :sswitch_1
    const-string p0, "viewInvisible"

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lccsanandroid/view/View;->getAlpha()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-nez p0, :cond_2

    const-string p0, "viewAlphaZero"

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method
