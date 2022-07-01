.class Lccsancom/applovin/impl/adview/activity/b/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/adview/activity/b/a;-><init>(Lccsancom/applovin/impl/sdk/a/g;Lccsancom/applovin/adview/AppLovinFullscreenActivity;Lccsancom/applovin/impl/sdk/k;Lccsancom/applovin/sdk/AppLovinAdClickListener;Lccsancom/applovin/sdk/AppLovinAdDisplayListener;Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/sdk/k;

.field final synthetic b:Lccsancom/applovin/impl/sdk/a/g;

.field final synthetic c:Lccsancom/applovin/impl/adview/activity/b/a;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/adview/activity/b/a;Lccsancom/applovin/impl/sdk/k;Lccsancom/applovin/impl/sdk/a/g;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/a$2;->c:Lccsancom/applovin/impl/adview/activity/b/a;

    iput-object p2, p0, Lccsancom/applovin/impl/adview/activity/b/a$2;->a:Lccsancom/applovin/impl/sdk/k;

    iput-object p3, p0, Lccsancom/applovin/impl/adview/activity/b/a$2;->b:Lccsancom/applovin/impl/sdk/a/g;

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

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/a$2;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->t()Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;

    move-result-object p1

    iget-object p2, p0, Lccsancom/applovin/impl/adview/activity/b/a$2;->b:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {p1, p2}, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->trackAppKilled(Lccsancom/applovin/impl/sdk/a/g;)V

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/a$2;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->ai()Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager;->unregisterReceiver(Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;)V

    return-void
.end method
