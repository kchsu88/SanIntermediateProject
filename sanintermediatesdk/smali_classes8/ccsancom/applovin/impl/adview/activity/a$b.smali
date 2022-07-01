.class Lccsancom/applovin/impl/adview/activity/a$b;
.super Lccsanandroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/applovin/impl/adview/activity/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lccsancom/applovin/impl/adview/activity/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lccsancom/applovin/impl/adview/activity/a;)V
    .locals 1

    invoke-direct {p0}, Lccsanandroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lccsancom/applovin/impl/adview/activity/a$b;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/applovin/impl/adview/activity/a;Lccsancom/applovin/impl/adview/activity/a$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/adview/activity/a$b;-><init>(Lccsancom/applovin/impl/adview/activity/a;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Lccsanandroid/os/Message;)V
    .locals 3

    iget v0, p1, Lccsanandroid/os/Message;->what:I

    sget-object v1, Lccsancom/applovin/impl/adview/activity/FullscreenAdService$b;->a:Lccsancom/applovin/impl/adview/activity/FullscreenAdService$b;

    invoke-virtual {v1}, Lccsancom/applovin/impl/adview/activity/FullscreenAdService$b;->a()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/a$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/applovin/impl/adview/activity/a;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lccsanandroid/os/Message;->getData()Lccsanandroid/os/Bundle;

    move-result-object v1

    const-string v2, "raw_full_ad_response"

    invoke-virtual {v1, v2}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lccsanandroid/os/Message;->getData()Lccsanandroid/os/Bundle;

    move-result-object p1

    const-string v2, "ad_source"

    invoke-virtual {p1, v2}, Lccsanandroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lccsancom/applovin/impl/sdk/a/b;->a(I)Lccsancom/applovin/impl/sdk/a/b;

    move-result-object p1

    invoke-static {v0, p1, v1}, Lccsancom/applovin/impl/adview/activity/a;->a(Lccsancom/applovin/impl/adview/activity/a;Lccsancom/applovin/impl/sdk/a/b;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Lccsanandroid/os/Handler;->handleMessage(Lccsanandroid/os/Message;)V

    return-void
.end method
