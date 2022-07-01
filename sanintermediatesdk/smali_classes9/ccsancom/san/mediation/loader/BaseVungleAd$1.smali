.class Lccsancom/san/mediation/loader/BaseVungleAd$1;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source "BaseVungleAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/mediation/loader/BaseVungleAd;->load(Lccsancom/san/ads/AdInfo;)V
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

    .line 39
    iput-object p1, p0, Lccsancom/san/mediation/loader/BaseVungleAd$1;->this$0:Lccsancom/san/mediation/loader/BaseVungleAd;

    invoke-direct {p0}, Lccsancom/san/ads/Task$UICallBackTask;-><init>()V

    return-void
.end method


# virtual methods
.method public callBackOnUIThread()V
    .locals 1

    .line 42
    iget-object v0, p0, Lccsancom/san/mediation/loader/BaseVungleAd$1;->this$0:Lccsancom/san/mediation/loader/BaseVungleAd;

    invoke-virtual {v0}, Lccsancom/san/mediation/loader/BaseVungleAd;->tryInitializeAdNetWork()V

    .line 43
    return-void
.end method
