.class Lccsancom/san/mediation/loader/BaseMintegralAd$2;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source "BaseMintegralAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/mediation/loader/BaseMintegralAd;->loadInMainThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/san/mediation/loader/BaseMintegralAd;


# direct methods
.method constructor <init>(Lccsancom/san/mediation/loader/BaseMintegralAd;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/san/mediation/loader/BaseMintegralAd;

    .line 42
    iput-object p1, p0, Lccsancom/san/mediation/loader/BaseMintegralAd$2;->this$0:Lccsancom/san/mediation/loader/BaseMintegralAd;

    invoke-direct {p0}, Lccsancom/san/ads/Task$UICallBackTask;-><init>()V

    return-void
.end method


# virtual methods
.method public callBackOnUIThread()V
    .locals 1

    .line 45
    iget-object v0, p0, Lccsancom/san/mediation/loader/BaseMintegralAd$2;->this$0:Lccsancom/san/mediation/loader/BaseMintegralAd;

    invoke-virtual {v0}, Lccsancom/san/mediation/loader/BaseMintegralAd;->doStartLoadAd()V

    .line 46
    return-void
.end method
