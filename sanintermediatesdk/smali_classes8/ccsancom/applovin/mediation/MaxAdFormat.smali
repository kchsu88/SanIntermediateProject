.class public Lccsancom/applovin/mediation/MaxAdFormat;
.super Ljava/lang/Object;


# static fields
.field public static final BANNER:Lccsancom/applovin/mediation/MaxAdFormat;

.field public static final CROSS_PROMO:Lccsancom/applovin/mediation/MaxAdFormat;

.field public static final INTERSTITIAL:Lccsancom/applovin/mediation/MaxAdFormat;

.field public static final LEADER:Lccsancom/applovin/mediation/MaxAdFormat;

.field public static final MREC:Lccsancom/applovin/mediation/MaxAdFormat;

.field public static final NATIVE:Lccsancom/applovin/mediation/MaxAdFormat;

.field public static final REWARDED:Lccsancom/applovin/mediation/MaxAdFormat;

.field public static final REWARDED_INTERSTITIAL:Lccsancom/applovin/mediation/MaxAdFormat;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lccsancom/applovin/mediation/MaxAdFormat;

    const-string v1, "BANNER"

    const-string v2, "Banner"

    invoke-direct {v0, v1, v2}, Lccsancom/applovin/mediation/MaxAdFormat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lccsancom/applovin/mediation/MaxAdFormat;->BANNER:Lccsancom/applovin/mediation/MaxAdFormat;

    new-instance v0, Lccsancom/applovin/mediation/MaxAdFormat;

    const-string v1, "MREC"

    invoke-direct {v0, v1, v1}, Lccsancom/applovin/mediation/MaxAdFormat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lccsancom/applovin/mediation/MaxAdFormat;->MREC:Lccsancom/applovin/mediation/MaxAdFormat;

    new-instance v0, Lccsancom/applovin/mediation/MaxAdFormat;

    const-string v1, "LEADER"

    const-string v2, "Leader"

    invoke-direct {v0, v1, v2}, Lccsancom/applovin/mediation/MaxAdFormat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lccsancom/applovin/mediation/MaxAdFormat;->LEADER:Lccsancom/applovin/mediation/MaxAdFormat;

    new-instance v0, Lccsancom/applovin/mediation/MaxAdFormat;

    const-string v1, "INTER"

    const-string v2, "Interstitial"

    invoke-direct {v0, v1, v2}, Lccsancom/applovin/mediation/MaxAdFormat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lccsancom/applovin/mediation/MaxAdFormat;->INTERSTITIAL:Lccsancom/applovin/mediation/MaxAdFormat;

    new-instance v0, Lccsancom/applovin/mediation/MaxAdFormat;

    const-string v1, "REWARDED"

    const-string v2, "Rewarded"

    invoke-direct {v0, v1, v2}, Lccsancom/applovin/mediation/MaxAdFormat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lccsancom/applovin/mediation/MaxAdFormat;->REWARDED:Lccsancom/applovin/mediation/MaxAdFormat;

    new-instance v0, Lccsancom/applovin/mediation/MaxAdFormat;

    const-string v1, "REWARDED_INTER"

    const-string v2, "Rewarded Interstitial"

    invoke-direct {v0, v1, v2}, Lccsancom/applovin/mediation/MaxAdFormat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lccsancom/applovin/mediation/MaxAdFormat;->REWARDED_INTERSTITIAL:Lccsancom/applovin/mediation/MaxAdFormat;

    new-instance v0, Lccsancom/applovin/mediation/MaxAdFormat;

    const-string v1, "NATIVE"

    const-string v2, "Native"

    invoke-direct {v0, v1, v2}, Lccsancom/applovin/mediation/MaxAdFormat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lccsancom/applovin/mediation/MaxAdFormat;->NATIVE:Lccsancom/applovin/mediation/MaxAdFormat;

    new-instance v0, Lccsancom/applovin/mediation/MaxAdFormat;

    const-string v1, "XPROMO"

    const-string v2, "Cross Promo"

    invoke-direct {v0, v1, v2}, Lccsancom/applovin/mediation/MaxAdFormat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lccsancom/applovin/mediation/MaxAdFormat;->CROSS_PROMO:Lccsancom/applovin/mediation/MaxAdFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsancom/applovin/mediation/MaxAdFormat;->a:Ljava/lang/String;

    iput-object p2, p0, Lccsancom/applovin/mediation/MaxAdFormat;->b:Ljava/lang/String;

    return-void
.end method

.method public static formatFromString(Ljava/lang/String;)Lccsancom/applovin/mediation/MaxAdFormat;
    .locals 3

    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "banner"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lccsancom/applovin/mediation/MaxAdFormat;->BANNER:Lccsancom/applovin/mediation/MaxAdFormat;

    return-object p0

    :cond_1
    const-string v0, "mrec"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lccsancom/applovin/mediation/MaxAdFormat;->MREC:Lccsancom/applovin/mediation/MaxAdFormat;

    return-object p0

    :cond_2
    const-string/jumbo v0, "xpromo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lccsancom/applovin/mediation/MaxAdFormat;->CROSS_PROMO:Lccsancom/applovin/mediation/MaxAdFormat;

    return-object p0

    :cond_3
    const-string v0, "native"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lccsancom/applovin/mediation/MaxAdFormat;->NATIVE:Lccsancom/applovin/mediation/MaxAdFormat;

    return-object p0

    :cond_4
    const-string v0, "leaderboard"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "leader"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    const-string v0, "interstitial"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "inter"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    const-string v0, "rewarded"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "reward"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_1

    :cond_7
    const-string v0, "rewarded_inter"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "rewarded_interstitial"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_0

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown ad format: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AppLovinSdk"

    invoke-static {v0, p0}, Lccsancom/applovin/impl/sdk/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_9
    :goto_0
    sget-object p0, Lccsancom/applovin/mediation/MaxAdFormat;->REWARDED_INTERSTITIAL:Lccsancom/applovin/mediation/MaxAdFormat;

    return-object p0

    :cond_a
    :goto_1
    sget-object p0, Lccsancom/applovin/mediation/MaxAdFormat;->REWARDED:Lccsancom/applovin/mediation/MaxAdFormat;

    return-object p0

    :cond_b
    :goto_2
    sget-object p0, Lccsancom/applovin/mediation/MaxAdFormat;->INTERSTITIAL:Lccsancom/applovin/mediation/MaxAdFormat;

    return-object p0

    :cond_c
    :goto_3
    sget-object p0, Lccsancom/applovin/mediation/MaxAdFormat;->LEADER:Lccsancom/applovin/mediation/MaxAdFormat;

    return-object p0
.end method


# virtual methods
.method public getAdaptiveSize(ILccsanandroid/app/Activity;)Lccsancom/applovin/sdk/AppLovinSdkUtils$Size;
    .locals 1

    sget-object v0, Lccsancom/applovin/mediation/MaxAdFormat;->BANNER:Lccsancom/applovin/mediation/MaxAdFormat;

    if-eq p0, v0, :cond_1

    sget-object v0, Lccsancom/applovin/mediation/MaxAdFormat;->LEADER:Lccsancom/applovin/mediation/MaxAdFormat;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lccsancom/applovin/mediation/MaxAdFormat;->getSize()Lccsancom/applovin/sdk/AppLovinSdkUtils$Size;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    invoke-static {p1, p0, p2}, Lccsancom/applovin/impl/mediation/c/c;->a(ILccsancom/applovin/mediation/MaxAdFormat;Lccsanandroid/app/Activity;)Lccsancom/applovin/sdk/AppLovinSdkUtils$Size;

    move-result-object p1

    return-object p1
.end method

.method public getAdaptiveSize(Lccsanandroid/app/Activity;)Lccsancom/applovin/sdk/AppLovinSdkUtils$Size;
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lccsancom/applovin/mediation/MaxAdFormat;->getAdaptiveSize(ILccsanandroid/app/Activity;)Lccsancom/applovin/sdk/AppLovinSdkUtils$Size;

    move-result-object p1

    return-object p1
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/mediation/MaxAdFormat;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/mediation/MaxAdFormat;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Lccsancom/applovin/sdk/AppLovinSdkUtils$Size;
    .locals 3

    sget-object v0, Lccsancom/applovin/mediation/MaxAdFormat;->BANNER:Lccsancom/applovin/mediation/MaxAdFormat;

    if-ne p0, v0, :cond_0

    new-instance v0, Lccsancom/applovin/sdk/AppLovinSdkUtils$Size;

    const/16 v1, 0x140

    const/16 v2, 0x32

    invoke-direct {v0, v1, v2}, Lccsancom/applovin/sdk/AppLovinSdkUtils$Size;-><init>(II)V

    return-object v0

    :cond_0
    sget-object v0, Lccsancom/applovin/mediation/MaxAdFormat;->LEADER:Lccsancom/applovin/mediation/MaxAdFormat;

    if-ne p0, v0, :cond_1

    new-instance v0, Lccsancom/applovin/sdk/AppLovinSdkUtils$Size;

    const/16 v1, 0x2d8

    const/16 v2, 0x5a

    invoke-direct {v0, v1, v2}, Lccsancom/applovin/sdk/AppLovinSdkUtils$Size;-><init>(II)V

    return-object v0

    :cond_1
    sget-object v0, Lccsancom/applovin/mediation/MaxAdFormat;->MREC:Lccsancom/applovin/mediation/MaxAdFormat;

    if-ne p0, v0, :cond_2

    new-instance v0, Lccsancom/applovin/sdk/AppLovinSdkUtils$Size;

    const/16 v1, 0x12c

    const/16 v2, 0xfa

    invoke-direct {v0, v1, v2}, Lccsancom/applovin/sdk/AppLovinSdkUtils$Size;-><init>(II)V

    return-object v0

    :cond_2
    sget-object v0, Lccsancom/applovin/mediation/MaxAdFormat;->CROSS_PROMO:Lccsancom/applovin/mediation/MaxAdFormat;

    if-ne p0, v0, :cond_3

    new-instance v0, Lccsancom/applovin/sdk/AppLovinSdkUtils$Size;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lccsancom/applovin/sdk/AppLovinSdkUtils$Size;-><init>(II)V

    return-object v0

    :cond_3
    new-instance v0, Lccsancom/applovin/sdk/AppLovinSdkUtils$Size;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lccsancom/applovin/sdk/AppLovinSdkUtils$Size;-><init>(II)V

    return-object v0
.end method

.method public isAdViewAd()Z
    .locals 1

    sget-object v0, Lccsancom/applovin/mediation/MaxAdFormat;->BANNER:Lccsancom/applovin/mediation/MaxAdFormat;

    if-eq p0, v0, :cond_1

    sget-object v0, Lccsancom/applovin/mediation/MaxAdFormat;->MREC:Lccsancom/applovin/mediation/MaxAdFormat;

    if-eq p0, v0, :cond_1

    sget-object v0, Lccsancom/applovin/mediation/MaxAdFormat;->LEADER:Lccsancom/applovin/mediation/MaxAdFormat;

    if-eq p0, v0, :cond_1

    sget-object v0, Lccsancom/applovin/mediation/MaxAdFormat;->CROSS_PROMO:Lccsancom/applovin/mediation/MaxAdFormat;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isFullscreenAd()Z
    .locals 1

    sget-object v0, Lccsancom/applovin/mediation/MaxAdFormat;->INTERSTITIAL:Lccsancom/applovin/mediation/MaxAdFormat;

    if-eq p0, v0, :cond_1

    sget-object v0, Lccsancom/applovin/mediation/MaxAdFormat;->REWARDED:Lccsancom/applovin/mediation/MaxAdFormat;

    if-eq p0, v0, :cond_1

    sget-object v0, Lccsancom/applovin/mediation/MaxAdFormat;->REWARDED_INTERSTITIAL:Lccsancom/applovin/mediation/MaxAdFormat;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MaxAdFormat{label=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/applovin/mediation/MaxAdFormat;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
