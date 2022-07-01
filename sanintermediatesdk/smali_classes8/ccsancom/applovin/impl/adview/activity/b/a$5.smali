.class Lccsancom/applovin/impl/adview/activity/b/a$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/adview/activity/b/a;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/adview/activity/b/a;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/adview/activity/b/a;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/a$5;->a:Lccsancom/applovin/impl/adview/activity/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lccsanandroid/content/Intent;

    iget-object v1, p0, Lccsancom/applovin/impl/adview/activity/b/a$5;->a:Lccsancom/applovin/impl/adview/activity/b/a;

    iget-object v1, v1, Lccsancom/applovin/impl/adview/activity/b/a;->d:Lccsancom/applovin/adview/AppLovinFullscreenActivity;

    invoke-virtual {v1}, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v1

    const-class v2, Lccsancom/applovin/impl/sdk/utils/AppKilledService;

    invoke-direct {v0, v1, v2}, Lccsanandroid/content/Intent;-><init>(Lccsanandroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lccsancom/applovin/impl/adview/activity/b/a$5;->a:Lccsancom/applovin/impl/adview/activity/b/a;

    iget-object v1, v1, Lccsancom/applovin/impl/adview/activity/b/a;->d:Lccsancom/applovin/adview/AppLovinFullscreenActivity;

    invoke-virtual {v1, v0}, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->stopService(Lccsanandroid/content/Intent;)Z

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/a$5;->a:Lccsancom/applovin/impl/adview/activity/b/a;

    iget-object v0, v0, Lccsancom/applovin/impl/adview/activity/b/a;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->ai()Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/adview/activity/b/a$5;->a:Lccsancom/applovin/impl/adview/activity/b/a;

    invoke-static {v1}, Lccsancom/applovin/impl/adview/activity/b/a;->b(Lccsancom/applovin/impl/adview/activity/b/a;)Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager;->unregisterReceiver(Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;)V

    return-void
.end method
