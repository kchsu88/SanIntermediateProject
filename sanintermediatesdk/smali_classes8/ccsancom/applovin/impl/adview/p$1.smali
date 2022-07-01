.class Lccsancom/applovin/impl/adview/p$1;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/adview/p;->onCreate(Lccsanandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/sdk/a/g;

.field final synthetic b:Lccsancom/applovin/impl/adview/p;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/adview/p;Lccsancom/applovin/impl/sdk/a/g;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/p$1;->b:Lccsancom/applovin/impl/adview/p;

    iput-object p2, p0, Lccsancom/applovin/impl/adview/p$1;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Lccsanandroid/content/Intent;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lccsancom/applovin/impl/adview/p$1;->b:Lccsancom/applovin/impl/adview/p;

    iget-object p1, p1, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->t()Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;

    move-result-object p1

    iget-object p2, p0, Lccsancom/applovin/impl/adview/p$1;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {p1, p2}, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->trackAppKilled(Lccsancom/applovin/impl/sdk/a/g;)V

    iget-object p1, p0, Lccsancom/applovin/impl/adview/p$1;->b:Lccsancom/applovin/impl/adview/p;

    iget-object p1, p1, Lccsancom/applovin/impl/adview/p;->sdk:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->ai()Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager;->unregisterReceiver(Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;)V

    return-void
.end method
