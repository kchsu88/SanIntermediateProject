.class Lccsancom/san/mediation/loader/VungleInterstitialAd$1;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source "VungleInterstitialAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/mediation/loader/VungleInterstitialAd;->doStartLoadAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/san/mediation/loader/VungleInterstitialAd;


# direct methods
.method constructor <init>(Lccsancom/san/mediation/loader/VungleInterstitialAd;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/san/mediation/loader/VungleInterstitialAd;

    .line 29
    iput-object p1, p0, Lccsancom/san/mediation/loader/VungleInterstitialAd$1;->this$0:Lccsancom/san/mediation/loader/VungleInterstitialAd;

    invoke-direct {p0}, Lccsancom/san/ads/Task$UICallBackTask;-><init>()V

    return-void
.end method


# virtual methods
.method public callBackOnUIThread()V
    .locals 1

    .line 32
    iget-object v0, p0, Lccsancom/san/mediation/loader/VungleInterstitialAd$1;->this$0:Lccsancom/san/mediation/loader/VungleInterstitialAd;

    invoke-static {v0}, Lccsancom/san/mediation/loader/VungleInterstitialAd;->access$000(Lccsancom/san/mediation/loader/VungleInterstitialAd;)V

    .line 33
    return-void
.end method
