.class Lccsancom/applovin/impl/sdk/v$1;
.super Lccsancom/applovin/impl/sdk/utils/a;


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

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/v$1;->a:Lccsancom/applovin/impl/sdk/v;

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResumed(Lccsanandroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Lccsancom/applovin/impl/sdk/utils/a;->onActivityResumed(Lccsanandroid/app/Activity;)V

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/v$1;->a:Lccsancom/applovin/impl/sdk/v;

    invoke-static {p1}, Lccsancom/applovin/impl/sdk/v;->a(Lccsancom/applovin/impl/sdk/v;)V

    return-void
.end method
