.class Lccsancom/applovin/impl/sdk/e/n$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/sdk/e/n;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/sdk/e/n;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/sdk/e/n;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/e/n$2;->a:Lccsancom/applovin/impl/sdk/e/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/n$2;->a:Lccsancom/applovin/impl/sdk/e/n;

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/e/n;->a(Lccsancom/applovin/impl/sdk/e/n;)Lccsancom/applovin/impl/sdk/k;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->B()Lccsancom/applovin/impl/mediation/e;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/n$2;->a:Lccsancom/applovin/impl/sdk/e/n;

    invoke-static {v1}, Lccsancom/applovin/impl/sdk/e/n;->a(Lccsancom/applovin/impl/sdk/e/n;)Lccsancom/applovin/impl/sdk/k;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->ad()Lccsancom/applovin/impl/sdk/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/a;->a()Lccsanandroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/mediation/e;->a(Lccsanandroid/app/Activity;)V

    return-void
.end method
