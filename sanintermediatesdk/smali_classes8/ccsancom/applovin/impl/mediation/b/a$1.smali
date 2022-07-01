.class Lccsancom/applovin/impl/mediation/b/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/mediation/b/a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/mediation/a/e;

.field final synthetic b:Lccsancom/applovin/impl/mediation/b/a;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/mediation/b/a;Lccsancom/applovin/impl/mediation/a/e;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/b/a$1;->b:Lccsancom/applovin/impl/mediation/b/a;

    iput-object p2, p0, Lccsancom/applovin/impl/mediation/b/a$1;->a:Lccsancom/applovin/impl/mediation/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/b/a$1;->b:Lccsancom/applovin/impl/mediation/b/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Auto-initing adapter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/b/a$1;->a:Lccsancom/applovin/impl/mediation/a/e;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/applovin/impl/mediation/b/a;->a(Lccsancom/applovin/impl/mediation/b/a;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/b/a$1;->b:Lccsancom/applovin/impl/mediation/b/a;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/b/a;->b(Lccsancom/applovin/impl/mediation/b/a;)Lccsancom/applovin/impl/sdk/k;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->B()Lccsancom/applovin/impl/mediation/e;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/b/a$1;->a:Lccsancom/applovin/impl/mediation/a/e;

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/b/a$1;->b:Lccsancom/applovin/impl/mediation/b/a;

    invoke-static {v2}, Lccsancom/applovin/impl/mediation/b/a;->a(Lccsancom/applovin/impl/mediation/b/a;)Lccsanandroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/mediation/e;->a(Lccsancom/applovin/impl/mediation/a/e;Lccsanandroid/app/Activity;)V

    return-void
.end method
