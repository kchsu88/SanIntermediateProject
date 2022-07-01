.class Lccsancom/san/mediation/loader/BaseAppLovinAd$1;
.super Ljava/lang/Object;
.source "BaseAppLovinAd.java"

# interfaces
.implements Lccsancom/san/ads/base/InitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/mediation/loader/BaseAppLovinAd;->load(Lccsancom/san/ads/AdInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/san/mediation/loader/BaseAppLovinAd;


# direct methods
.method constructor <init>(Lccsancom/san/mediation/loader/BaseAppLovinAd;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/san/mediation/loader/BaseAppLovinAd;

    .line 26
    iput-object p1, p0, Lccsancom/san/mediation/loader/BaseAppLovinAd$1;->this$0:Lccsancom/san/mediation/loader/BaseAppLovinAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 34
    iget-object v0, p0, Lccsancom/san/mediation/loader/BaseAppLovinAd$1;->this$0:Lccsancom/san/mediation/loader/BaseAppLovinAd;

    new-instance v1, Lccsancom/san/ads/AdError;

    const/16 v2, 0x1389

    invoke-direct {v1, v2, p1}, Lccsancom/san/ads/AdError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsancom/san/mediation/loader/BaseAppLovinAd;->onAdLoadError(Lccsancom/san/ads/AdError;)V

    .line 35
    return-void
.end method

.method public onInitFinished()V
    .locals 1

    .line 29
    iget-object v0, p0, Lccsancom/san/mediation/loader/BaseAppLovinAd$1;->this$0:Lccsancom/san/mediation/loader/BaseAppLovinAd;

    invoke-virtual {v0}, Lccsancom/san/mediation/loader/BaseAppLovinAd;->doStartLoadAd()V

    .line 30
    return-void
.end method
