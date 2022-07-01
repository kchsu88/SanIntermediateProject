.class Lccsancom/san/mediation/loader/VungleBannerAd$1;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source "VungleBannerAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/mediation/loader/VungleBannerAd;->doStartLoadAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/san/mediation/loader/VungleBannerAd;


# direct methods
.method constructor <init>(Lccsancom/san/mediation/loader/VungleBannerAd;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/san/mediation/loader/VungleBannerAd;

    .line 39
    iput-object p1, p0, Lccsancom/san/mediation/loader/VungleBannerAd$1;->this$0:Lccsancom/san/mediation/loader/VungleBannerAd;

    invoke-direct {p0}, Lccsancom/san/ads/Task$UICallBackTask;-><init>()V

    return-void
.end method


# virtual methods
.method public callBackOnUIThread()V
    .locals 2

    .line 42
    iget-object v0, p0, Lccsancom/san/mediation/loader/VungleBannerAd$1;->this$0:Lccsancom/san/mediation/loader/VungleBannerAd;

    invoke-virtual {v0}, Lccsancom/san/mediation/loader/VungleBannerAd;->getAdSize()Lccsancom/san/ads/AdSize;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/san/ads/AdSize;->getHeight()I

    move-result v0

    const/16 v1, 0xfa

    if-ne v0, v1, :cond_0

    .line 43
    iget-object v0, p0, Lccsancom/san/mediation/loader/VungleBannerAd$1;->this$0:Lccsancom/san/mediation/loader/VungleBannerAd;

    invoke-static {v0}, Lccsancom/san/mediation/loader/VungleBannerAd;->access$000(Lccsancom/san/mediation/loader/VungleBannerAd;)V

    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Lccsancom/san/mediation/loader/VungleBannerAd$1;->this$0:Lccsancom/san/mediation/loader/VungleBannerAd;

    invoke-static {v0}, Lccsancom/san/mediation/loader/VungleBannerAd;->access$100(Lccsancom/san/mediation/loader/VungleBannerAd;)V

    .line 47
    :goto_0
    return-void
.end method
