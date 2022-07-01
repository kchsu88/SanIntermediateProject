.class Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;->adReceived(Lccsancom/applovin/sdk/AppLovinAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;

.field final synthetic val$appLovinAd:Lccsancom/applovin/sdk/AppLovinAd;


# direct methods
.method constructor <init>(Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;Lccsancom/applovin/sdk/AppLovinAd;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1;->this$1:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;

    iput-object p2, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1;->val$appLovinAd:Lccsancom/applovin/sdk/AppLovinAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1;->this$1:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;

    iget-object v0, v0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;->this$0:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;

    new-instance v1, Lccsancom/applovin/adview/AppLovinAdView;

    iget-object v2, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1;->this$1:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;

    iget-object v2, v2, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;->this$0:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;

    invoke-virtual {v2}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->getWrappingSdk()Lccsancom/applovin/sdk/AppLovinSdk;

    move-result-object v2

    iget-object v3, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1;->val$appLovinAd:Lccsancom/applovin/sdk/AppLovinAd;

    invoke-interface {v3}, Lccsancom/applovin/sdk/AppLovinAd;->getSize()Lccsancom/applovin/sdk/AppLovinAdSize;

    move-result-object v3

    iget-object v4, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1;->this$1:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;

    iget-object v4, v4, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;->val$activity:Lccsanandroid/app/Activity;

    invoke-direct {v1, v2, v3, v4}, Lccsancom/applovin/adview/AppLovinAdView;-><init>(Lccsancom/applovin/sdk/AppLovinSdk;Lccsancom/applovin/sdk/AppLovinAdSize;Lccsanandroid/content/Context;)V

    invoke-static {v0, v1}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->access$002(Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;Lccsancom/applovin/adview/AppLovinAdView;)Lccsancom/applovin/adview/AppLovinAdView;

    iget-object v0, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1;->this$1:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;

    iget-object v0, v0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;->this$0:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;

    invoke-static {v0}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->access$000(Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;)Lccsancom/applovin/adview/AppLovinAdView;

    move-result-object v0

    new-instance v1, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1$1;

    invoke-direct {v1, p0}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1$1;-><init>(Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1;)V

    invoke-virtual {v0, v1}, Lccsancom/applovin/adview/AppLovinAdView;->setAdDisplayListener(Lccsancom/applovin/sdk/AppLovinAdDisplayListener;)V

    iget-object v0, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1;->this$1:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;

    iget-object v0, v0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;->this$0:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;

    invoke-static {v0}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->access$000(Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;)Lccsancom/applovin/adview/AppLovinAdView;

    move-result-object v0

    new-instance v1, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1$2;

    invoke-direct {v1, p0}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1$2;-><init>(Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1;)V

    invoke-virtual {v0, v1}, Lccsancom/applovin/adview/AppLovinAdView;->setAdClickListener(Lccsancom/applovin/sdk/AppLovinAdClickListener;)V

    iget-object v0, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1;->this$1:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;

    iget-object v0, v0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;->this$0:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;

    invoke-static {v0}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->access$000(Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;)Lccsancom/applovin/adview/AppLovinAdView;

    move-result-object v0

    new-instance v1, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1$3;

    invoke-direct {v1, p0}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1$3;-><init>(Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1;)V

    invoke-virtual {v0, v1}, Lccsancom/applovin/adview/AppLovinAdView;->setAdViewEventListener(Lccsancom/applovin/adview/AppLovinAdViewEventListener;)V

    iget-object v0, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1;->this$1:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;

    iget-object v0, v0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;->val$listener:Lccsancom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;

    iget-object v1, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1;->this$1:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;

    iget-object v1, v1, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;->this$0:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;

    invoke-static {v1}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->access$000(Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;)Lccsancom/applovin/adview/AppLovinAdView;

    move-result-object v1

    invoke-interface {v0, v1}, Lccsancom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;->onAdViewAdLoaded(Lccsanandroid/view/View;)V

    iget-object v0, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1;->this$1:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;

    iget-object v0, v0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;->this$0:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;

    invoke-static {v0}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->access$000(Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;)Lccsancom/applovin/adview/AppLovinAdView;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1;->val$appLovinAd:Lccsancom/applovin/sdk/AppLovinAd;

    invoke-virtual {v0, v1}, Lccsancom/applovin/adview/AppLovinAdView;->renderAd(Lccsancom/applovin/sdk/AppLovinAd;)V

    return-void
.end method
