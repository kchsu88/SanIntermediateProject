.class Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/applovin/sdk/AppLovinAdDisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1;


# direct methods
.method constructor <init>(Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1$1;->this$2:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adDisplayed(Lccsancom/applovin/sdk/AppLovinAd;)V
    .locals 2

    iget-object p1, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1$1;->this$2:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1;

    iget-object p1, p1, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1;->this$1:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;

    iget-object p1, p1, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;->this$0:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1$1;->this$2:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1;

    iget-object v1, v1, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1;->this$1:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;

    iget-object v1, v1, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;->val$adFormat:Lccsancom/applovin/mediation/MaxAdFormat;

    invoke-virtual {v1}, Lccsancom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ad shown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->log(Ljava/lang/String;)V

    iget-object p1, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1$1;->this$2:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1;

    iget-object p1, p1, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1;->this$1:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;

    iget-object p1, p1, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;->val$listener:Lccsancom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;

    invoke-interface {p1}, Lccsancom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;->onAdViewAdDisplayed()V

    return-void
.end method

.method public adHidden(Lccsancom/applovin/sdk/AppLovinAd;)V
    .locals 2

    iget-object p1, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1$1;->this$2:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1;

    iget-object p1, p1, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1;->this$1:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;

    iget-object p1, p1, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;->this$0:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1$1;->this$2:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1;

    iget-object v1, v1, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1;->this$1:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;

    iget-object v1, v1, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;->val$adFormat:Lccsancom/applovin/mediation/MaxAdFormat;

    invoke-virtual {v1}, Lccsancom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ad hidden"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->log(Ljava/lang/String;)V

    iget-object p1, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1$1;->this$2:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1;

    iget-object p1, p1, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1;->this$1:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;

    iget-object p1, p1, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;->val$listener:Lccsancom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;

    invoke-interface {p1}, Lccsancom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;->onAdViewAdHidden()V

    return-void
.end method
