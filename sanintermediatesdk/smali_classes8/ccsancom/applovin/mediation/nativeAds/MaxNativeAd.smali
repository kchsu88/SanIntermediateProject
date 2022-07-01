.class public Lccsancom/applovin/mediation/nativeAds/MaxNativeAd;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$MaxNativeAdImage;,
        Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$Builder;
    }
.end annotation


# instance fields
.field private final a:Lccsancom/applovin/mediation/MaxAdFormat;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$MaxNativeAdImage;

.field private final f:Lccsanandroid/view/View;

.field private final g:Lccsanandroid/view/View;

.field private final h:Lccsanandroid/view/View;


# direct methods
.method private constructor <init>(Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$Builder;->a(Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$Builder;)Lccsancom/applovin/mediation/MaxAdFormat;

    move-result-object v0

    iput-object v0, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAd;->a:Lccsancom/applovin/mediation/MaxAdFormat;

    invoke-static {p1}, Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$Builder;->b(Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAd;->b:Ljava/lang/String;

    invoke-static {p1}, Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$Builder;->c(Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAd;->c:Ljava/lang/String;

    invoke-static {p1}, Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$Builder;->d(Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAd;->d:Ljava/lang/String;

    invoke-static {p1}, Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$Builder;->e(Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$Builder;)Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$MaxNativeAdImage;

    move-result-object v0

    iput-object v0, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAd;->e:Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$MaxNativeAdImage;

    invoke-static {p1}, Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$Builder;->f(Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$Builder;)Lccsanandroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAd;->f:Lccsanandroid/view/View;

    invoke-static {p1}, Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$Builder;->g(Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$Builder;)Lccsanandroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAd;->g:Lccsanandroid/view/View;

    invoke-static {p1}, Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$Builder;->h(Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$Builder;)Lccsanandroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAd;->h:Lccsanandroid/view/View;

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$Builder;Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lccsancom/applovin/mediation/nativeAds/MaxNativeAd;-><init>(Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$Builder;)V

    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAd;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getCallToAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAd;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getFormat()Lccsancom/applovin/mediation/MaxAdFormat;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAd;->a:Lccsancom/applovin/mediation/MaxAdFormat;

    return-object v0
.end method

.method public getIcon()Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$MaxNativeAdImage;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAd;->e:Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$MaxNativeAdImage;

    return-object v0
.end method

.method public getIconView()Lccsanandroid/view/View;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAd;->f:Lccsanandroid/view/View;

    return-object v0
.end method

.method public getMediaView()Lccsanandroid/view/View;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAd;->h:Lccsanandroid/view/View;

    return-object v0
.end method

.method public getOptionsView()Lccsanandroid/view/View;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAd;->g:Lccsanandroid/view/View;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAd;->b:Ljava/lang/String;

    return-object v0
.end method
