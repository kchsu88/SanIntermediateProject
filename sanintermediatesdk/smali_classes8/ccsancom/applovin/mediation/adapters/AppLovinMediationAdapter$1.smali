.class Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/applovin/sdk/AppLovinAdLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->loadAdViewAd(Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Lccsancom/applovin/mediation/MaxAdFormat;Lccsanandroid/app/Activity;Lccsancom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;

.field final synthetic val$activity:Lccsanandroid/app/Activity;

.field final synthetic val$adFormat:Lccsancom/applovin/mediation/MaxAdFormat;

.field final synthetic val$listener:Lccsancom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;


# direct methods
.method constructor <init>(Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;Lccsancom/applovin/mediation/MaxAdFormat;Lccsanandroid/app/Activity;Lccsancom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;->this$0:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;

    iput-object p2, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;->val$adFormat:Lccsancom/applovin/mediation/MaxAdFormat;

    iput-object p3, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;->val$activity:Lccsanandroid/app/Activity;

    iput-object p4, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;->val$listener:Lccsancom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adReceived(Lccsancom/applovin/sdk/AppLovinAd;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;->this$0:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;->val$adFormat:Lccsancom/applovin/mediation/MaxAdFormat;

    invoke-virtual {v2}, Lccsancom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ad loaded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->log(Ljava/lang/String;)V

    new-instance v0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1;

    invoke-direct {v0, p0, p1}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1;-><init>(Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;Lccsancom/applovin/sdk/AppLovinAd;)V

    invoke-static {v0}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;->this$0:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;->val$adFormat:Lccsancom/applovin/mediation/MaxAdFormat;

    invoke-virtual {v2}, Lccsancom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ad failed to load with error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;->val$listener:Lccsancom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;

    invoke-static {p1}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->access$200(I)Lccsancom/applovin/mediation/adapter/MaxAdapterError;

    move-result-object p1

    invoke-interface {v0, p1}, Lccsancom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;->onAdViewAdLoadFailed(Lccsancom/applovin/mediation/adapter/MaxAdapterError;)V

    return-void
.end method
