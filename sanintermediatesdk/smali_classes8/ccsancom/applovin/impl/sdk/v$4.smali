.class Lccsancom/applovin/impl/sdk/v$4;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/sdk/v;-><init>(Lccsancom/applovin/impl/sdk/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsanandroid/app/Application;

.field final synthetic b:Lccsanandroid/content/Intent;

.field final synthetic c:Lccsancom/applovin/impl/sdk/k;

.field final synthetic d:Lccsancom/applovin/impl/sdk/v;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/sdk/v;Lccsanandroid/app/Application;Lccsanandroid/content/Intent;Lccsancom/applovin/impl/sdk/k;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/v$4;->d:Lccsancom/applovin/impl/sdk/v;

    iput-object p2, p0, Lccsancom/applovin/impl/sdk/v$4;->a:Lccsanandroid/app/Application;

    iput-object p3, p0, Lccsancom/applovin/impl/sdk/v$4;->b:Lccsanandroid/content/Intent;

    iput-object p4, p0, Lccsancom/applovin/impl/sdk/v$4;->c:Lccsancom/applovin/impl/sdk/k;

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

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/v$4;->a:Lccsanandroid/app/Application;

    iget-object p2, p0, Lccsancom/applovin/impl/sdk/v$4;->b:Lccsanandroid/content/Intent;

    invoke-virtual {p1, p2}, Lccsanandroid/app/Application;->stopService(Lccsanandroid/content/Intent;)Z

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/v$4;->c:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->ai()Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager;->unregisterReceiver(Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;)V

    return-void
.end method
