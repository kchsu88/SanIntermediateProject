.class Lccsancom/applovin/impl/mediation/debugger/ui/b/a$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/mediation/debugger/ui/b/a;->a(Lccsanandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsanandroid/content/Context;

.field final synthetic b:Lccsancom/applovin/impl/mediation/debugger/ui/b/a;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/mediation/debugger/ui/b/a;Lccsanandroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a$3;->b:Lccsancom/applovin/impl/mediation/debugger/ui/b/a;

    iput-object p2, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a$3;->a:Lccsanandroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a$3;->b:Lccsancom/applovin/impl/mediation/debugger/ui/b/a;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/debugger/ui/b/a;->b(Lccsancom/applovin/impl/mediation/debugger/ui/b/a;)Lccsancom/applovin/impl/mediation/debugger/ui/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a$3;->b:Lccsancom/applovin/impl/mediation/debugger/ui/b/a;

    invoke-static {v1}, Lccsancom/applovin/impl/mediation/debugger/ui/b/a;->b(Lccsancom/applovin/impl/mediation/debugger/ui/b/a;)Lccsancom/applovin/impl/mediation/debugger/ui/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->g()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a$3;->a:Lccsanandroid/content/Context;

    invoke-static {v0, v1, v2}, Lccsancom/applovin/impl/sdk/utils/Utils;->showAlert(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/Context;)V

    return-void
.end method
