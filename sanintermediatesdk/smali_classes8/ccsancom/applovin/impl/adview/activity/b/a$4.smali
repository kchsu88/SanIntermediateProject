.class Lccsancom/applovin/impl/adview/activity/b/a$4;
.super Lccsancom/applovin/impl/sdk/utils/a;


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

.field final synthetic b:Lccsancom/applovin/impl/adview/activity/b/a;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/adview/activity/b/a;Lccsancom/applovin/impl/sdk/k;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/a$4;->b:Lccsancom/applovin/impl/adview/activity/b/a;

    iput-object p2, p0, Lccsancom/applovin/impl/adview/activity/b/a$4;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Lccsanandroid/app/Activity;Lccsanandroid/os/Bundle;)V
    .locals 2

    iget-object p2, p0, Lccsancom/applovin/impl/adview/activity/b/a$4;->b:Lccsancom/applovin/impl/adview/activity/b/a;

    invoke-static {p2}, Lccsancom/applovin/impl/adview/activity/b/a;->a(Lccsancom/applovin/impl/adview/activity/b/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lccsanandroid/app/Activity;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lccsancom/applovin/impl/sdk/utils/Utils;->retrieveLauncherActivityFullyQualifiedName(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/a$4;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->Q()Lccsancom/applovin/impl/sdk/e/o;

    move-result-object p1

    new-instance p2, Lccsancom/applovin/impl/sdk/e/y;

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/a$4;->a:Lccsancom/applovin/impl/sdk/k;

    new-instance v1, Lccsancom/applovin/impl/adview/activity/b/a$4$1;

    invoke-direct {v1, p0}, Lccsancom/applovin/impl/adview/activity/b/a$4$1;-><init>(Lccsancom/applovin/impl/adview/activity/b/a$4;)V

    invoke-direct {p2, v0, v1}, Lccsancom/applovin/impl/sdk/e/y;-><init>(Lccsancom/applovin/impl/sdk/k;Ljava/lang/Runnable;)V

    sget-object v0, Lccsancom/applovin/impl/sdk/e/o$a;->a:Lccsancom/applovin/impl/sdk/e/o$a;

    invoke-virtual {p1, p2, v0}, Lccsancom/applovin/impl/sdk/e/o;->a(Lccsancom/applovin/impl/sdk/e/a;Lccsancom/applovin/impl/sdk/e/o$a;)V

    :cond_0
    return-void
.end method
