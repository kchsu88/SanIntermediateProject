.class final Lccsancom/applovin/impl/sdk/utils/i$28;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/sdk/utils/i;->c(Lccsancom/applovin/adview/AppLovinAdViewEventListener;Lccsancom/applovin/sdk/AppLovinAd;Lccsancom/applovin/adview/AppLovinAdView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/adview/AppLovinAdViewEventListener;

.field final synthetic b:Lccsancom/applovin/sdk/AppLovinAd;

.field final synthetic c:Lccsancom/applovin/adview/AppLovinAdView;


# direct methods
.method constructor <init>(Lccsancom/applovin/adview/AppLovinAdViewEventListener;Lccsancom/applovin/sdk/AppLovinAd;Lccsancom/applovin/adview/AppLovinAdView;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/utils/i$28;->a:Lccsancom/applovin/adview/AppLovinAdViewEventListener;

    iput-object p2, p0, Lccsancom/applovin/impl/sdk/utils/i$28;->b:Lccsancom/applovin/sdk/AppLovinAd;

    iput-object p3, p0, Lccsancom/applovin/impl/sdk/utils/i$28;->c:Lccsancom/applovin/adview/AppLovinAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lccsancom/applovin/impl/sdk/utils/i$28;->a:Lccsancom/applovin/adview/AppLovinAdViewEventListener;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/utils/i$28;->b:Lccsancom/applovin/sdk/AppLovinAd;

    invoke-static {v1}, Lccsancom/applovin/impl/sdk/utils/i;->a(Lccsancom/applovin/sdk/AppLovinAd;)Lccsancom/applovin/sdk/AppLovinAd;

    move-result-object v1

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/utils/i$28;->c:Lccsancom/applovin/adview/AppLovinAdView;

    invoke-interface {v0, v1, v2}, Lccsancom/applovin/adview/AppLovinAdViewEventListener;->adLeftApplication(Lccsancom/applovin/sdk/AppLovinAd;Lccsancom/applovin/adview/AppLovinAdView;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "ListenerCallbackInvoker"

    const-string v2, "Unable to notify ad event listener about application leave event"

    invoke-static {v1, v2, v0}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
