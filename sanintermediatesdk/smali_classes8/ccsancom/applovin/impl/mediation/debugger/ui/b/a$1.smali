.class Lccsancom/applovin/impl/mediation/debugger/ui/b/a$1;
.super Lccsanandroid/database/DataSetObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/mediation/debugger/ui/b/a;->setListAdapter(Lccsancom/applovin/impl/mediation/debugger/ui/b/b;Lccsancom/applovin/impl/sdk/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/mediation/debugger/ui/b/a;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/mediation/debugger/ui/b/a;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a$1;->a:Lccsancom/applovin/impl/mediation/debugger/ui/b/a;

    invoke-direct {p0}, Lccsanandroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a$1;->a:Lccsancom/applovin/impl/mediation/debugger/ui/b/a;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/debugger/ui/b/a;->a(Lccsancom/applovin/impl/mediation/debugger/ui/b/a;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a$1;->a:Lccsancom/applovin/impl/mediation/debugger/ui/b/a;

    invoke-static {v0, v0}, Lccsancom/applovin/impl/mediation/debugger/ui/b/a;->a(Lccsancom/applovin/impl/mediation/debugger/ui/b/a;Lccsanandroid/content/Context;)V

    return-void
.end method
