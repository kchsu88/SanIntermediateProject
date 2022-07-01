.class final Lccsancom/applovin/impl/sdk/utils/i$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/sdk/utils/i;->a(Lccsancom/applovin/sdk/AppLovinAdRewardListener;Lccsancom/applovin/sdk/AppLovinAd;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/sdk/AppLovinAdRewardListener;

.field final synthetic b:Lccsancom/applovin/sdk/AppLovinAd;

.field final synthetic c:I


# direct methods
.method constructor <init>(Lccsancom/applovin/sdk/AppLovinAdRewardListener;Lccsancom/applovin/sdk/AppLovinAd;I)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/utils/i$6;->a:Lccsancom/applovin/sdk/AppLovinAdRewardListener;

    iput-object p2, p0, Lccsancom/applovin/impl/sdk/utils/i$6;->b:Lccsancom/applovin/sdk/AppLovinAd;

    iput p3, p0, Lccsancom/applovin/impl/sdk/utils/i$6;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lccsancom/applovin/impl/sdk/utils/i$6;->a:Lccsancom/applovin/sdk/AppLovinAdRewardListener;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/utils/i$6;->b:Lccsancom/applovin/sdk/AppLovinAd;

    invoke-static {v1}, Lccsancom/applovin/impl/sdk/utils/i;->a(Lccsancom/applovin/sdk/AppLovinAd;)Lccsancom/applovin/sdk/AppLovinAd;

    move-result-object v1

    iget v2, p0, Lccsancom/applovin/impl/sdk/utils/i$6;->c:I

    invoke-interface {v0, v1, v2}, Lccsancom/applovin/sdk/AppLovinAdRewardListener;->validationRequestFailed(Lccsancom/applovin/sdk/AppLovinAd;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "ListenerCallbackInvoker"

    const-string v2, "Unable to notify ad reward listener about reward validation request failing"

    invoke-static {v1, v2, v0}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
