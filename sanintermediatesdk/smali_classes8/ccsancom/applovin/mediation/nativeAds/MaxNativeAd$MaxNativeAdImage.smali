.class public Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$MaxNativeAdImage;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/applovin/mediation/nativeAds/MaxNativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MaxNativeAdImage"
.end annotation


# instance fields
.field private a:Lccsanandroid/graphics/drawable/Drawable;

.field private b:Lccsanandroid/net/Uri;


# direct methods
.method public constructor <init>(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$MaxNativeAdImage;->a:Lccsanandroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Lccsanandroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$MaxNativeAdImage;->b:Lccsanandroid/net/Uri;

    return-void
.end method


# virtual methods
.method public getDrawable()Lccsanandroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$MaxNativeAdImage;->a:Lccsanandroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getUri()Lccsanandroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$MaxNativeAdImage;->b:Lccsanandroid/net/Uri;

    return-object v0
.end method
