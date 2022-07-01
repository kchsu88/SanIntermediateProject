.class Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView;


# direct methods
.method constructor <init>(Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView$1;->a:Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView$1;->a:Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView;->setSelected(Z)V

    return-void
.end method
