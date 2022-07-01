.class Lccsancom/san/mediation/loader/BaseVungleAd$2;
.super Ljava/lang/Object;
.source "BaseVungleAd.java"

# interfaces
.implements Lccsancom/san/ads/base/InitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/mediation/loader/BaseVungleAd;->tryInitializeAdNetWork()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/san/mediation/loader/BaseVungleAd;


# direct methods
.method constructor <init>(Lccsancom/san/mediation/loader/BaseVungleAd;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/san/mediation/loader/BaseVungleAd;

    .line 52
    iput-object p1, p0, Lccsancom/san/mediation/loader/BaseVungleAd$2;->this$0:Lccsancom/san/mediation/loader/BaseVungleAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initialize, onInitFailed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Vungle.BaseAd"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lccsancom/san/mediation/loader/BaseVungleAd$2;->this$0:Lccsancom/san/mediation/loader/BaseVungleAd;

    new-instance v1, Lccsancom/san/ads/AdError;

    const/16 v2, 0x1389

    invoke-direct {v1, v2, p1}, Lccsancom/san/ads/AdError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsancom/san/mediation/loader/BaseVungleAd;->onAdLoadError(Lccsancom/san/ads/AdError;)V

    .line 63
    return-void
.end method

.method public onInitFinished()V
    .locals 2

    .line 55
    const-string v0, "Vungle.BaseAd"

    const-string v1, "initialize, onInitFinished"

    invoke-static {v0, v1}, Lccsancom/san/ads/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lccsancom/san/mediation/loader/BaseVungleAd$2;->this$0:Lccsancom/san/mediation/loader/BaseVungleAd;

    invoke-virtual {v0}, Lccsancom/san/mediation/loader/BaseVungleAd;->doStartLoadAd()V

    .line 57
    return-void
.end method
