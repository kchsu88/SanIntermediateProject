.class final Lccsancom/applovin/impl/sdk/utils/i$25;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/sdk/utils/i;->a(Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lccsancom/applovin/sdk/AppLovinAd;DZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;

.field final synthetic b:Lccsancom/applovin/sdk/AppLovinAd;

.field final synthetic c:D

.field final synthetic d:Z


# direct methods
.method constructor <init>(Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lccsancom/applovin/sdk/AppLovinAd;DZ)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/utils/i$25;->a:Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    iput-object p2, p0, Lccsancom/applovin/impl/sdk/utils/i$25;->b:Lccsancom/applovin/sdk/AppLovinAd;

    iput-wide p3, p0, Lccsancom/applovin/impl/sdk/utils/i$25;->c:D

    iput-boolean p5, p0, Lccsancom/applovin/impl/sdk/utils/i$25;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lccsancom/applovin/impl/sdk/utils/i$25;->a:Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/utils/i$25;->b:Lccsancom/applovin/sdk/AppLovinAd;

    invoke-static {v1}, Lccsancom/applovin/impl/sdk/utils/i;->a(Lccsancom/applovin/sdk/AppLovinAd;)Lccsancom/applovin/sdk/AppLovinAd;

    move-result-object v1

    iget-wide v2, p0, Lccsancom/applovin/impl/sdk/utils/i$25;->c:D

    iget-boolean v4, p0, Lccsancom/applovin/impl/sdk/utils/i$25;->d:Z

    invoke-interface {v0, v1, v2, v3, v4}, Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;->videoPlaybackEnded(Lccsancom/applovin/sdk/AppLovinAd;DZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "ListenerCallbackInvoker"

    const-string v2, "Unable to notify ad event listener about ad playback ended"

    invoke-static {v1, v2, v0}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
