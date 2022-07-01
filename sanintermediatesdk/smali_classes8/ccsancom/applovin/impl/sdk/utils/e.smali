.class public Lccsancom/applovin/impl/sdk/utils/e;
.super Ljava/lang/Object;


# direct methods
.method public static a(ILccsanandroid/content/Context;)I
    .locals 1

    invoke-static {}, Lccsancom/applovin/impl/sdk/utils/f;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Lccsanandroid/content/Context;->getColor(I)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p0}, Lccsanandroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0
.end method
