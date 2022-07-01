.class public Lccsancom/applovin/impl/sdk/e/f;
.super Lccsancom/applovin/impl/sdk/e/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/applovin/impl/sdk/e/f$a;
    }
.end annotation


# instance fields
.field private final a:Lccsancom/applovin/impl/sdk/e/f$a;


# direct methods
.method public constructor <init>(Lccsancom/applovin/impl/sdk/k;Lccsancom/applovin/impl/sdk/e/f$a;)V
    .locals 2

    const-string v0, "TaskCollectAdvertisingId"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lccsancom/applovin/impl/sdk/e/a;-><init>(Ljava/lang/String;Lccsancom/applovin/impl/sdk/k;Z)V

    iput-object p2, p0, Lccsancom/applovin/impl/sdk/e/f;->a:Lccsancom/applovin/impl/sdk/e/f$a;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/f;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->T()Lccsancom/applovin/impl/sdk/m;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/m;->j()Lccsancom/applovin/impl/sdk/m$a;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/f;->a:Lccsancom/applovin/impl/sdk/e/f$a;

    invoke-interface {v1, v0}, Lccsancom/applovin/impl/sdk/e/f$a;->a(Lccsancom/applovin/impl/sdk/m$a;)V

    return-void
.end method
