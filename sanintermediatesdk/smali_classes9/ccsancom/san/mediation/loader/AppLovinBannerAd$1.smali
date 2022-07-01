.class Lccsancom/san/mediation/loader/AppLovinBannerAd$1;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source "AppLovinBannerAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/mediation/loader/AppLovinBannerAd;->doStartLoadAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/san/mediation/loader/AppLovinBannerAd;


# direct methods
.method constructor <init>(Lccsancom/san/mediation/loader/AppLovinBannerAd;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/san/mediation/loader/AppLovinBannerAd;

    .line 33
    iput-object p1, p0, Lccsancom/san/mediation/loader/AppLovinBannerAd$1;->this$0:Lccsancom/san/mediation/loader/AppLovinBannerAd;

    invoke-direct {p0}, Lccsancom/san/ads/Task$UICallBackTask;-><init>()V

    return-void
.end method


# virtual methods
.method public callBackOnUIThread()V
    .locals 1

    .line 36
    iget-object v0, p0, Lccsancom/san/mediation/loader/AppLovinBannerAd$1;->this$0:Lccsancom/san/mediation/loader/AppLovinBannerAd;

    invoke-static {v0}, Lccsancom/san/mediation/loader/AppLovinBannerAd;->access$000(Lccsancom/san/mediation/loader/AppLovinBannerAd;)V

    .line 37
    return-void
.end method
