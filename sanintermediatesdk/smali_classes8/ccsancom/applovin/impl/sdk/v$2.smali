.class Lccsancom/applovin/impl/sdk/v$2;
.super Ljava/lang/Object;

# interfaces
.implements Lccsanandroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/sdk/v;-><init>(Lccsancom/applovin/impl/sdk/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/sdk/v;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/sdk/v;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/v$2;->a:Lccsancom/applovin/impl/sdk/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Lccsanandroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/v$2;->a:Lccsancom/applovin/impl/sdk/v;

    invoke-static {p1}, Lccsancom/applovin/impl/sdk/v;->b(Lccsancom/applovin/impl/sdk/v;)V

    :cond_0
    return-void
.end method
