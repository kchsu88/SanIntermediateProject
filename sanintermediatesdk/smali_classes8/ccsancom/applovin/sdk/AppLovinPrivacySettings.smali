.class public Lccsancom/applovin/sdk/AppLovinPrivacySettings;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasUserConsent(Lccsanandroid/content/Context;)Z
    .locals 2

    const-string v0, "AppLovinPrivacySettings"

    const-string v1, "hasUserConsent()"

    invoke-static {v0, v1}, Lccsancom/applovin/impl/sdk/r;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lccsancom/applovin/impl/sdk/h;->b()Lccsancom/applovin/impl/sdk/h$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsancom/applovin/impl/sdk/h$a;->a(Lccsanandroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isAgeRestrictedUser(Lccsanandroid/content/Context;)Z
    .locals 2

    const-string v0, "AppLovinPrivacySettings"

    const-string v1, "isAgeRestrictedUser()"

    invoke-static {v0, v1}, Lccsancom/applovin/impl/sdk/r;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lccsancom/applovin/impl/sdk/h;->a()Lccsancom/applovin/impl/sdk/h$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsancom/applovin/impl/sdk/h$a;->a(Lccsanandroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isDoNotSell(Lccsanandroid/content/Context;)Z
    .locals 2

    const-string v0, "AppLovinPrivacySettings"

    const-string v1, "isDoNotSell()"

    invoke-static {v0, v1}, Lccsancom/applovin/impl/sdk/r;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lccsancom/applovin/impl/sdk/h;->c()Lccsancom/applovin/impl/sdk/h$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsancom/applovin/impl/sdk/h$a;->a(Lccsanandroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setDoNotSell(ZLccsanandroid/content/Context;)V
    .locals 2

    const-string v0, "AppLovinPrivacySettings"

    const-string/jumbo v1, "setDoNotSell()"

    invoke-static {v0, v1}, Lccsancom/applovin/impl/sdk/r;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lccsancom/applovin/impl/sdk/h;->c(ZLccsanandroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1, p1, p0}, Lccsancom/applovin/sdk/AppLovinSdk;->reinitializeAll(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method public static setHasUserConsent(ZLccsanandroid/content/Context;)V
    .locals 2

    const-string v0, "AppLovinPrivacySettings"

    const-string/jumbo v1, "setHasUserConsent()"

    invoke-static {v0, v1}, Lccsancom/applovin/impl/sdk/r;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lccsancom/applovin/impl/sdk/h;->b(ZLccsanandroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1, p1}, Lccsancom/applovin/sdk/AppLovinSdk;->reinitializeAll(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method public static setIsAgeRestrictedUser(ZLccsanandroid/content/Context;)V
    .locals 2

    const-string v0, "AppLovinPrivacySettings"

    const-string/jumbo v1, "setIsAgeRestrictedUser()"

    invoke-static {v0, v1}, Lccsancom/applovin/impl/sdk/r;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lccsancom/applovin/impl/sdk/h;->a(ZLccsanandroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1, p0, p1}, Lccsancom/applovin/sdk/AppLovinSdk;->reinitializeAll(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method
