.class final Lccsancom/applovin/impl/sdk/utils/i$17;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/sdk/utils/i;->a(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;Lccsancom/applovin/mediation/MaxReward;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/mediation/MaxAdListener;

.field final synthetic b:Lccsancom/applovin/mediation/MaxAd;

.field final synthetic c:Lccsancom/applovin/mediation/MaxReward;


# direct methods
.method constructor <init>(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;Lccsancom/applovin/mediation/MaxReward;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/utils/i$17;->a:Lccsancom/applovin/mediation/MaxAdListener;

    iput-object p2, p0, Lccsancom/applovin/impl/sdk/utils/i$17;->b:Lccsancom/applovin/mediation/MaxAd;

    iput-object p3, p0, Lccsancom/applovin/impl/sdk/utils/i$17;->c:Lccsancom/applovin/mediation/MaxReward;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lccsancom/applovin/impl/sdk/utils/i$17;->a:Lccsancom/applovin/mediation/MaxAdListener;

    check-cast v0, Lccsancom/applovin/mediation/MaxRewardedAdListener;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/utils/i$17;->b:Lccsancom/applovin/mediation/MaxAd;

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/utils/i$17;->c:Lccsancom/applovin/mediation/MaxReward;

    invoke-interface {v0, v1, v2}, Lccsancom/applovin/mediation/MaxRewardedAdListener;->onUserRewarded(Lccsancom/applovin/mediation/MaxAd;Lccsancom/applovin/mediation/MaxReward;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "ListenerCallbackInvoker"

    const-string v2, "Unable to notify ad event listener about user being rewarded"

    invoke-static {v1, v2, v0}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
