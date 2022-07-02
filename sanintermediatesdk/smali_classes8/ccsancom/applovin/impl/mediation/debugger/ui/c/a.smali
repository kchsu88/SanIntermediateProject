.class public Lccsancom/applovin/impl/mediation/debugger/ui/c/a;
.super Lccsancom/applovin/impl/mediation/debugger/ui/a;


# instance fields
.field private a:Lccsancom/applovin/impl/mediation/debugger/ui/c/b;

.field private b:Lccsanandroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lccsancom/applovin/impl/mediation/debugger/ui/a;-><init>()V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/c/a;->communicatorTopics:Ljava/util/List;

    const-string v1, "adapter_initialization_status"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/c/a;->communicatorTopics:Ljava/util/List;

    const-string v1, "network_sdk_version_updated"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/mediation/debugger/ui/c/a;Ljava/lang/Class;Lccsancom/applovin/impl/sdk/a;Lccsancom/applovin/impl/mediation/debugger/ui/a$a;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lccsancom/applovin/impl/mediation/debugger/ui/c/a;->startActivity(Ljava/lang/Class;Lccsancom/applovin/impl/sdk/a;Lccsancom/applovin/impl/mediation/debugger/ui/a$a;)V

    return-void
.end method


# virtual methods
.method public initialize(Lccsancom/applovin/impl/mediation/debugger/a/b/b;)V
    .locals 2

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/debugger/a/b/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/mediation/debugger/ui/c/a;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v0, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;

    invoke-direct {v0, p1, p0}, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;-><init>(Lccsancom/applovin/impl/mediation/debugger/a/b/b;Lccsanandroid/content/Context;)V

    iput-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/c/a;->a:Lccsancom/applovin/impl/mediation/debugger/ui/c/b;

    new-instance v1, Lccsancom/applovin/impl/mediation/debugger/ui/c/a$1;

    invoke-direct {v1, p0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/c/a$1;-><init>(Lccsancom/applovin/impl/mediation/debugger/ui/c/a;Lccsancom/applovin/impl/mediation/debugger/a/b/b;)V

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;->a(Lccsancom/applovin/impl/mediation/debugger/ui/d/d$a;)V

    return-void
.end method

.method protected onCreate(Lccsanandroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/a;->onCreate(Lccsanandroid/os/Bundle;)V

    sget p1, Lccsancom/applovin/sdk/R$layout;->ccsan_list_view:I

    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/c/a;->setContentView(I)V

    sget p1, Lccsancom/applovin/sdk/R$id;->listView:I

    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/c/a;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsanandroid/widget/ListView;

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/c/a;->b:Lccsanandroid/widget/ListView;

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/c/a;->a:Lccsancom/applovin/impl/mediation/debugger/ui/c/b;

    invoke-virtual {p1, v0}, Lccsanandroid/widget/ListView;->setAdapter(Lccsanandroid/widget/ListAdapter;)V

    return-void
.end method

.method public onMessageReceived(Lccsancom/applovin/communicator/AppLovinCommunicatorMessage;)V
    .locals 2

    invoke-virtual {p1}, Lccsancom/applovin/communicator/AppLovinCommunicatorMessage;->getMessageData()Lccsanandroid/os/Bundle;

    move-result-object p1

    const-string v0, "adapter_class"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/c/a;->a:Lccsancom/applovin/impl/mediation/debugger/ui/c/b;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;->a()Lccsancom/applovin/impl/mediation/debugger/a/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/a/b/b;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/c/a;->a:Lccsancom/applovin/impl/mediation/debugger/ui/c/b;

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;->c()V

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/c/a;->a:Lccsancom/applovin/impl/mediation/debugger/ui/c/b;

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;->i()V

    :cond_0
    return-void
.end method
