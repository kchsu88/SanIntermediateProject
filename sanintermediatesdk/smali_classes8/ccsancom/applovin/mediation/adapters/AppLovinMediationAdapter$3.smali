.class Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$3;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/applovin/sdk/AppLovinAdClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->showInterstitialAd(Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Lccsanandroid/app/Activity;Lccsancom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;

.field final synthetic val$listener:Lccsancom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;


# direct methods
.method constructor <init>(Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;Lccsancom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$3;->this$0:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;

    iput-object p2, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$3;->val$listener:Lccsancom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adClicked(Lccsancom/applovin/sdk/AppLovinAd;)V
    .locals 1

    iget-object p1, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$3;->this$0:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;

    const-string v0, "Interstitial ad clicked"

    invoke-virtual {p1, v0}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->log(Ljava/lang/String;)V

    iget-object p1, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$3;->val$listener:Lccsancom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;

    invoke-interface {p1}, Lccsancom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;->onInterstitialAdClicked()V

    return-void
.end method
