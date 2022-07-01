.class Lccsancom/applovin/impl/sdk/r$1;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/sdk/r;-><init>(Lccsancom/applovin/impl/sdk/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/sdk/k;

.field final synthetic b:Lccsancom/applovin/impl/sdk/r;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/sdk/r;Lccsancom/applovin/impl/sdk/k;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/r$1;->b:Lccsancom/applovin/impl/sdk/r;

    iput-object p2, p0, Lccsancom/applovin/impl/sdk/r$1;->a:Lccsancom/applovin/impl/sdk/k;

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

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/r$1;->b:Lccsancom/applovin/impl/sdk/r;

    const-string p2, "SDK Session End"

    invoke-static {p1, p2}, Lccsancom/applovin/impl/sdk/r;->a(Lccsancom/applovin/impl/sdk/r;Ljava/lang/String;)V

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/r$1;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->ai()Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager;->unregisterReceiver(Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;)V

    return-void
.end method
