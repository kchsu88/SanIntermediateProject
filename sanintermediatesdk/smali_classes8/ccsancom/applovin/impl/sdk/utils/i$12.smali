.class final Lccsancom/applovin/impl/sdk/utils/i$12;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/sdk/utils/i;->a(Lccsancom/applovin/sdk/AppLovinAdDisplayListener;Lccsancom/applovin/sdk/AppLovinAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/sdk/AppLovinAdDisplayListener;

.field final synthetic b:Lccsancom/applovin/sdk/AppLovinAd;


# direct methods
.method constructor <init>(Lccsancom/applovin/sdk/AppLovinAdDisplayListener;Lccsancom/applovin/sdk/AppLovinAd;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/utils/i$12;->a:Lccsancom/applovin/sdk/AppLovinAdDisplayListener;

    iput-object p2, p0, Lccsancom/applovin/impl/sdk/utils/i$12;->b:Lccsancom/applovin/sdk/AppLovinAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lccsancom/applovin/impl/sdk/utils/i$12;->a:Lccsancom/applovin/sdk/AppLovinAdDisplayListener;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/utils/i$12;->b:Lccsancom/applovin/sdk/AppLovinAd;

    invoke-static {v1}, Lccsancom/applovin/impl/sdk/utils/i;->a(Lccsancom/applovin/sdk/AppLovinAd;)Lccsancom/applovin/sdk/AppLovinAd;

    move-result-object v1

    invoke-interface {v0, v1}, Lccsancom/applovin/sdk/AppLovinAdDisplayListener;->adDisplayed(Lccsancom/applovin/sdk/AppLovinAd;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "ListenerCallbackInvoker"

    const-string v2, "Unable to notify ad event listener about ad being displayed"

    invoke-static {v1, v2, v0}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
