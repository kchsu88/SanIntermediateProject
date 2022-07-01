.class public final synthetic Lccsancom/san/mediation/loader/AppLovinInterstitialAd$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lccsancom/applovin/sdk/AppLovinAdClickListener;


# instance fields
.field public final synthetic f$0:Lccsancom/san/mediation/loader/AppLovinInterstitialAd;


# direct methods
.method public synthetic constructor <init>(Lccsancom/san/mediation/loader/AppLovinInterstitialAd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsancom/san/mediation/loader/AppLovinInterstitialAd$$ExternalSyntheticLambda0;->f$0:Lccsancom/san/mediation/loader/AppLovinInterstitialAd;

    return-void
.end method


# virtual methods
.method public final adClicked(Lccsancom/applovin/sdk/AppLovinAd;)V
    .locals 1

    iget-object v0, p0, Lccsancom/san/mediation/loader/AppLovinInterstitialAd$$ExternalSyntheticLambda0;->f$0:Lccsancom/san/mediation/loader/AppLovinInterstitialAd;

    invoke-virtual {v0, p1}, Lccsancom/san/mediation/loader/AppLovinInterstitialAd;->lambda$createAppLovinInterstitialAdDialog$0$com-san-mediation-loader-AppLovinInterstitialAd(Lccsancom/applovin/sdk/AppLovinAd;)V

    return-void
.end method
