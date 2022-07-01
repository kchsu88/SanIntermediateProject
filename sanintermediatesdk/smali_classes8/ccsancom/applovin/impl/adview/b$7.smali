.class Lccsancom/applovin/impl/adview/b$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/adview/b;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lccsancom/applovin/impl/adview/b;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/adview/b;I)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/b$7;->b:Lccsancom/applovin/impl/adview/b;

    iput p2, p0, Lccsancom/applovin/impl/adview/b$7;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lccsancom/applovin/impl/adview/b$7;->b:Lccsancom/applovin/impl/adview/b;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/b;->o(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/sdk/AppLovinAdLoadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b$7;->b:Lccsancom/applovin/impl/adview/b;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/b;->o(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/sdk/AppLovinAdLoadListener;

    move-result-object v0

    iget v1, p0, Lccsancom/applovin/impl/adview/b$7;->a:I

    invoke-interface {v0, v1}, Lccsancom/applovin/sdk/AppLovinAdLoadListener;->failedToReceiveAd(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "AppLovinAdView"

    const-string v2, "Exception while running app load  callback"

    invoke-static {v1, v2, v0}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
