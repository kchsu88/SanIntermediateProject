.class Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1$3;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/applovin/adview/AppLovinAdViewEventListener;


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

    iput-object p1, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1$3;->this$2:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adClosedFullscreen(Lccsancom/applovin/sdk/AppLovinAd;Lccsancom/applovin/adview/AppLovinAdView;)V
    .locals 1

    iget-object p1, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1$3;->this$2:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1;

    iget-object p1, p1, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1;->this$1:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;

    iget-object p1, p1, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;->this$0:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1$3;->this$2:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1;

    iget-object v0, v0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1;->this$1:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;

    iget-object v0, v0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;->val$adFormat:Lccsancom/applovin/mediation/MaxAdFormat;

    invoke-virtual {v0}, Lccsancom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ad collapsed"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->log(Ljava/lang/String;)V

    iget-object p1, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1$3;->this$2:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1;

    iget-object p1, p1, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1;->this$1:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;

    iget-object p1, p1, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;->val$listener:Lccsancom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;

    invoke-interface {p1}, Lccsancom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;->onAdViewAdCollapsed()V

    return-void
.end method

.method public adFailedToDisplay(Lccsancom/applovin/sdk/AppLovinAd;Lccsancom/applovin/adview/AppLovinAdView;Lccsancom/applovin/adview/AppLovinAdViewDisplayErrorCode;)V
    .locals 1

    invoke-static {p3}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->access$100(Lccsancom/applovin/adview/AppLovinAdViewDisplayErrorCode;)Lccsancom/applovin/mediation/adapter/MaxAdapterError;

    move-result-object p1

    iget-object p2, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1$3;->this$2:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1;

    iget-object p2, p2, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1;->this$1:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;

    iget-object p2, p2, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;->this$0:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1$3;->this$2:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1;

    iget-object v0, v0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1;->this$1:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;

    iget-object v0, v0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;->val$adFormat:Lccsancom/applovin/mediation/MaxAdFormat;

    invoke-virtual {v0}, Lccsancom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ad failed to display with error: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->log(Ljava/lang/String;)V

    iget-object p2, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1$3;->this$2:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1;

    iget-object p2, p2, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1;->this$1:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;

    iget-object p2, p2, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;->val$listener:Lccsancom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;

    invoke-interface {p2, p1}, Lccsancom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;->onAdViewAdDisplayFailed(Lccsancom/applovin/mediation/adapter/MaxAdapterError;)V

    return-void
.end method

.method public adLeftApplication(Lccsancom/applovin/sdk/AppLovinAd;Lccsancom/applovin/adview/AppLovinAdView;)V
    .locals 0

    return-void
.end method

.method public adOpenedFullscreen(Lccsancom/applovin/sdk/AppLovinAd;Lccsancom/applovin/adview/AppLovinAdView;)V
    .locals 1

    iget-object p1, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1$3;->this$2:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1;

    iget-object p1, p1, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1;->this$1:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;

    iget-object p1, p1, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;->this$0:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1$3;->this$2:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1;

    iget-object v0, v0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1;->this$1:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;

    iget-object v0, v0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;->val$adFormat:Lccsancom/applovin/mediation/MaxAdFormat;

    invoke-virtual {v0}, Lccsancom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ad expanded"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->log(Ljava/lang/String;)V

    iget-object p1, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1$3;->this$2:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1;

    iget-object p1, p1, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1$1;->this$1:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;

    iget-object p1, p1, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;->val$listener:Lccsancom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;

    invoke-interface {p1}, Lccsancom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;->onAdViewAdExpanded()V

    return-void
.end method
