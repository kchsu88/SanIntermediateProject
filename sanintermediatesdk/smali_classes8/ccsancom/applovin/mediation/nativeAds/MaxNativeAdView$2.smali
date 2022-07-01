.class Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView$2;
.super Ljava/lang/Object;

# interfaces
.implements Lccsanandroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsanandroid/view/ViewGroup;

.field final synthetic b:Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView;


# direct methods
.method constructor <init>(Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView;Lccsanandroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView$2;->b:Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView;

    iput-object p2, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView$2;->a:Lccsanandroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView$2;->b:Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView;

    invoke-virtual {v0}, Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView;->getViewTreeObserver()Lccsanandroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsanandroid/view/ViewTreeObserver;->removeOnPreDrawListener(Lccsanandroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView$2;->a:Lccsanandroid/view/ViewGroup;

    invoke-virtual {v0}, Lccsanandroid/view/ViewGroup;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView$2;->a:Lccsanandroid/view/ViewGroup;

    invoke-virtual {v1}, Lccsanandroid/view/ViewGroup;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lccsanandroid/view/View;

    invoke-virtual {v1}, Lccsanandroid/view/View;->getWidth()I

    move-result v1

    iput v1, v0, Lccsanandroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v1, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView$2;->a:Lccsanandroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Lccsanandroid/view/ViewGroup;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    return v0
.end method
