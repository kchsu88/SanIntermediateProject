.class public Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/applovin/mediation/nativeAds/MaxNativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Lccsancom/applovin/mediation/MaxAdFormat;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$MaxNativeAdImage;

.field private f:Lccsanandroid/view/View;

.field private g:Lccsanandroid/view/View;

.field private h:Lccsanandroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$Builder;)Lccsancom/applovin/mediation/MaxAdFormat;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$Builder;->a:Lccsancom/applovin/mediation/MaxAdFormat;

    return-object p0
.end method

.method static synthetic b(Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$Builder;)Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$MaxNativeAdImage;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$Builder;->e:Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$MaxNativeAdImage;

    return-object p0
.end method

.method static synthetic f(Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$Builder;)Lccsanandroid/view/View;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$Builder;->f:Lccsanandroid/view/View;

    return-object p0
.end method

.method static synthetic g(Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$Builder;)Lccsanandroid/view/View;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$Builder;->g:Lccsanandroid/view/View;

    return-object p0
.end method

.method static synthetic h(Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$Builder;)Lccsanandroid/view/View;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$Builder;->h:Lccsanandroid/view/View;

    return-object p0
.end method


# virtual methods
.method public build()Lccsancom/applovin/mediation/nativeAds/MaxNativeAd;
    .locals 2

    new-instance v0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAd;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lccsancom/applovin/mediation/nativeAds/MaxNativeAd;-><init>(Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$Builder;Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$1;)V

    return-object v0
.end method

.method public setAdFormat(Lccsancom/applovin/mediation/MaxAdFormat;)Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$Builder;
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$Builder;->a:Lccsancom/applovin/mediation/MaxAdFormat;

    return-object p0
.end method

.method public setBody(Ljava/lang/String;)Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$Builder;
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method public setCallToAction(Ljava/lang/String;)Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$Builder;
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method public setIcon(Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$MaxNativeAdImage;)Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$Builder;
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$Builder;->e:Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$MaxNativeAdImage;

    return-object p0
.end method

.method public setIconView(Lccsanandroid/view/View;)Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$Builder;
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$Builder;->f:Lccsanandroid/view/View;

    return-object p0
.end method

.method public setMediaView(Lccsanandroid/view/View;)Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$Builder;
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$Builder;->h:Lccsanandroid/view/View;

    return-object p0
.end method

.method public setOptionsView(Lccsanandroid/view/View;)Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$Builder;
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$Builder;->g:Lccsanandroid/view/View;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$Builder;
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$Builder;->b:Ljava/lang/String;

    return-object p0
.end method
