.class public Lccsancom/applovin/impl/mediation/debugger/ui/e/a;
.super Lccsancom/applovin/impl/mediation/debugger/ui/a;


# instance fields
.field private a:Lccsancom/applovin/impl/sdk/k;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/applovin/impl/mediation/debugger/a/b/b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lccsancom/applovin/impl/mediation/debugger/ui/d/d;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/applovin/impl/mediation/debugger/ui/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lccsanandroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lccsancom/applovin/impl/mediation/debugger/ui/a;-><init>()V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/e/a;->communicatorTopics:Ljava/util/List;

    const-string v1, "network_sdk_version_updated"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/mediation/debugger/ui/e/a;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/e/a;->d:Ljava/util/List;

    return-object p0
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/applovin/impl/mediation/debugger/a/b/b;",
            ">;)",
            "Ljava/util/List<",
            "Lccsancom/applovin/impl/mediation/debugger/ui/d/c;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/applovin/impl/mediation/debugger/a/b/b;

    new-instance v2, Lccsancom/applovin/impl/mediation/debugger/ui/e/a$3;

    invoke-direct {v2, p0, v1, p0, v1}, Lccsancom/applovin/impl/mediation/debugger/ui/e/a$3;-><init>(Lccsancom/applovin/impl/mediation/debugger/ui/e/a;Lccsancom/applovin/impl/mediation/debugger/a/b/b;Lccsanandroid/content/Context;Lccsancom/applovin/impl/mediation/debugger/a/b/b;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static synthetic b(Lccsancom/applovin/impl/mediation/debugger/ui/e/a;)Lccsancom/applovin/impl/mediation/debugger/ui/d/d;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/e/a;->c:Lccsancom/applovin/impl/mediation/debugger/ui/d/d;

    return-object p0
.end method

.method static synthetic c(Lccsancom/applovin/impl/mediation/debugger/ui/e/a;)Lccsancom/applovin/impl/sdk/k;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/e/a;->a:Lccsancom/applovin/impl/sdk/k;

    return-object p0
.end method


# virtual methods
.method public initialize(Ljava/util/List;Lccsancom/applovin/impl/sdk/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/applovin/impl/mediation/debugger/a/b/b;",
            ">;",
            "Lccsancom/applovin/impl/sdk/k;",
            ")V"
        }
    .end annotation

    iput-object p2, p0, Lccsancom/applovin/impl/mediation/debugger/ui/e/a;->a:Lccsancom/applovin/impl/sdk/k;

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/e/a;->b:Ljava/util/List;

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/e/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/e/a;->d:Ljava/util/List;

    new-instance p1, Lccsancom/applovin/impl/mediation/debugger/ui/e/a$1;

    invoke-direct {p1, p0, p0}, Lccsancom/applovin/impl/mediation/debugger/ui/e/a$1;-><init>(Lccsancom/applovin/impl/mediation/debugger/ui/e/a;Lccsanandroid/content/Context;)V

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/e/a;->c:Lccsancom/applovin/impl/mediation/debugger/ui/d/d;

    new-instance v0, Lccsancom/applovin/impl/mediation/debugger/ui/e/a$2;

    invoke-direct {v0, p0, p2}, Lccsancom/applovin/impl/mediation/debugger/ui/e/a$2;-><init>(Lccsancom/applovin/impl/mediation/debugger/ui/e/a;Lccsancom/applovin/impl/sdk/k;)V

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/mediation/debugger/ui/d/d;->a(Lccsancom/applovin/impl/mediation/debugger/ui/d/d$a;)V

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/e/a;->c:Lccsancom/applovin/impl/mediation/debugger/ui/d/d;

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/d;->notifyDataSetChanged()V

    return-void
.end method

.method protected onCreate(Lccsanandroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/a;->onCreate(Lccsanandroid/os/Bundle;)V

    const-string p1, "Select Live Network"

    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/e/a;->setTitle(Ljava/lang/CharSequence;)V

    sget p1, Lccsancom/applovin/sdk/R$layout;->list_view:I

    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/e/a;->setContentView(I)V

    sget p1, Lccsancom/applovin/sdk/R$id;->listView:I

    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/e/a;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsanandroid/widget/ListView;

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/e/a;->e:Lccsanandroid/widget/ListView;

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/e/a;->c:Lccsancom/applovin/impl/mediation/debugger/ui/d/d;

    invoke-virtual {p1, v0}, Lccsanandroid/widget/ListView;->setAdapter(Lccsanandroid/widget/ListAdapter;)V

    return-void
.end method

.method public onMessageReceived(Lccsancom/applovin/communicator/AppLovinCommunicatorMessage;)V
    .locals 0

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/e/a;->b:Ljava/util/List;

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/e/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/e/a;->d:Ljava/util/List;

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/e/a;->c:Lccsancom/applovin/impl/mediation/debugger/ui/d/d;

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/d;->i()V

    return-void
.end method
