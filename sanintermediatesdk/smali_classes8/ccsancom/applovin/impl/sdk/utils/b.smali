.class public Lccsancom/applovin/impl/sdk/utils/b;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lccsanandroid/content/Context;)Lccsancom/applovin/mediation/MaxAdFormat;
    .locals 0

    invoke-static {p0}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->isTablet(Lccsanandroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lccsancom/applovin/mediation/MaxAdFormat;->LEADER:Lccsancom/applovin/mediation/MaxAdFormat;

    goto :goto_0

    :cond_0
    sget-object p0, Lccsancom/applovin/mediation/MaxAdFormat;->BANNER:Lccsancom/applovin/mediation/MaxAdFormat;

    :goto_0
    return-object p0
.end method

.method public static a(Lccsanandroid/util/AttributeSet;)Lccsancom/applovin/sdk/AppLovinAdSize;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "http://schemas.applovin.com/android/1.0"

    const-string/jumbo v2, "size"

    invoke-interface {p0, v1, v2}, Lccsanandroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lccsancom/applovin/sdk/AppLovinAdSize;->fromString(Ljava/lang/String;)Lccsancom/applovin/sdk/AppLovinAdSize;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static a(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lccsanandroid/view/ViewGroup;->indexOfChild(Lccsanandroid/view/View;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lccsanandroid/view/ViewGroup;->removeAllViews()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lccsanandroid/view/ViewGroup;->removeViews(II)V

    invoke-virtual {p0}, Lccsanandroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    invoke-virtual {p0, v0, p1}, Lccsanandroid/view/ViewGroup;->removeViews(II)V

    :goto_0
    return-void
.end method

.method public static a(Lccsanandroid/view/View;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lccsanandroid/view/View;->getRootView()Lccsanandroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lccsanandroid/view/View;->getRootView()Lccsanandroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/view/View;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Lccsanandroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lccsanandroid/view/View;->getRootView()Lccsanandroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Lccsanandroid/view/View;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lccsanandroid/view/WindowManager$LayoutParams;

    iget p0, p0, Lccsanandroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d2

    if-eq p0, v1, :cond_0

    const/16 v1, 0x7d7

    if-eq p0, v1, :cond_0

    const/16 v1, 0x7d3

    if-eq p0, v1, :cond_0

    const/16 v1, 0x7da

    if-eq p0, v1, :cond_0

    const/16 v1, 0x7d6

    if-eq p0, v1, :cond_0

    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    const/16 v1, 0x7f6

    if-ne p0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static b(Lccsanandroid/util/AttributeSet;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "http://schemas.applovin.com/android/1.0"

    const-string v2, "loadAdOnCreate"

    invoke-interface {p0, v1, v2, v0}, Lccsanandroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
