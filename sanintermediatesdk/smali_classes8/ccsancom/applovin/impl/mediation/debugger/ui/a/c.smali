.class public Lccsancom/applovin/impl/mediation/debugger/ui/a/c;
.super Lccsancom/applovin/impl/mediation/debugger/ui/a;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/applovin/impl/mediation/debugger/a/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lccsancom/applovin/impl/sdk/k;

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
    .locals 0

    invoke-direct {p0}, Lccsancom/applovin/impl/mediation/debugger/ui/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/mediation/debugger/ui/a/c;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/c;->d:Ljava/util/List;

    return-object p0
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/applovin/impl/mediation/debugger/a/a/a;",
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

    check-cast v1, Lccsancom/applovin/impl/mediation/debugger/a/a/a;

    new-instance v2, Lccsanandroid/text/SpannableStringBuilder;

    const-string v3, "ID\t\t\t\t\t\t"

    const v4, -0x777778

    invoke-static {v3, v4}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->createListItemDetailSubSpannedString(Ljava/lang/String;I)Lccsanandroid/text/SpannedString;

    move-result-object v3

    invoke-direct {v2, v3}, Lccsanandroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lccsancom/applovin/impl/mediation/debugger/a/a/a;->a()Ljava/lang/String;

    move-result-object v3

    const/high16 v5, -0x1000000

    invoke-static {v3, v5}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->createListItemDetailSpannedString(Ljava/lang/String;I)Lccsanandroid/text/SpannedString;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsanandroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lccsanandroid/text/SpannableStringBuilder;

    new-instance v3, Lccsanandroid/text/SpannedString;

    const-string v6, "\n"

    invoke-direct {v3, v6}, Lccsanandroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v3}, Lccsanandroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lccsanandroid/text/SpannableStringBuilder;

    const-string v3, "FORMAT  "

    invoke-static {v3, v4}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->createListItemDetailSubSpannedString(Ljava/lang/String;I)Lccsanandroid/text/SpannedString;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsanandroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lccsanandroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Lccsancom/applovin/impl/mediation/debugger/a/a/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->createListItemDetailSpannedString(Ljava/lang/String;I)Lccsanandroid/text/SpannedString;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsanandroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lccsanandroid/text/SpannableStringBuilder;

    sget-object v3, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$b;->d:Lccsancom/applovin/impl/mediation/debugger/ui/d/c$b;

    invoke-static {v3}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c;->a(Lccsancom/applovin/impl/mediation/debugger/ui/d/c$b;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v3

    invoke-virtual {v1}, Lccsancom/applovin/impl/mediation/debugger/a/a/a;->b()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x12

    const/4 v6, 0x1

    invoke-static {v1, v5, v4, v6}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->createSpannedString(Ljava/lang/String;III)Lccsanandroid/text/SpannedString;

    move-result-object v1

    invoke-virtual {v3, v1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->a(Lccsanandroid/text/SpannedString;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v1

    new-instance v3, Lccsanandroid/text/SpannedString;

    invoke-direct {v3, v2}, Lccsanandroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v3}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->b(Lccsanandroid/text/SpannedString;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v1

    invoke-virtual {v1, p0}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->a(Lccsanandroid/content/Context;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v1

    invoke-virtual {v1, v6}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->a(Z)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->a()Lccsancom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static synthetic a(Lccsancom/applovin/impl/mediation/debugger/ui/a/c;Ljava/lang/Class;Lccsancom/applovin/impl/sdk/a;Lccsancom/applovin/impl/mediation/debugger/ui/a$a;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lccsancom/applovin/impl/mediation/debugger/ui/a/c;->startActivity(Ljava/lang/Class;Lccsancom/applovin/impl/sdk/a;Lccsancom/applovin/impl/mediation/debugger/ui/a$a;)V

    return-void
.end method


# virtual methods
.method public initialize(Ljava/util/List;Lccsancom/applovin/impl/sdk/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/applovin/impl/mediation/debugger/a/a/a;",
            ">;",
            "Lccsancom/applovin/impl/sdk/k;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/c;->a:Ljava/util/List;

    iput-object p2, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/c;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/a/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/c;->d:Ljava/util/List;

    new-instance v0, Lccsancom/applovin/impl/mediation/debugger/ui/a/c$1;

    invoke-direct {v0, p0, p0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/a/c$1;-><init>(Lccsancom/applovin/impl/mediation/debugger/ui/a/c;Lccsanandroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/c;->c:Lccsancom/applovin/impl/mediation/debugger/ui/d/d;

    new-instance v1, Lccsancom/applovin/impl/mediation/debugger/ui/a/c$2;

    invoke-direct {v1, p0, p2, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/a/c$2;-><init>(Lccsancom/applovin/impl/mediation/debugger/ui/a/c;Lccsancom/applovin/impl/sdk/k;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/d;->a(Lccsancom/applovin/impl/mediation/debugger/ui/d/d$a;)V

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/c;->c:Lccsancom/applovin/impl/mediation/debugger/ui/d/d;

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/d;->notifyDataSetChanged()V

    return-void
.end method

.method protected onCreate(Lccsanandroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/a;->onCreate(Lccsanandroid/os/Bundle;)V

    const-string p1, "Ad Units"

    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/a/c;->setTitle(Ljava/lang/CharSequence;)V

    sget p1, Lccsancom/applovin/sdk/R$layout;->list_view:I

    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/a/c;->setContentView(I)V

    sget p1, Lccsancom/applovin/sdk/R$id;->listView:I

    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/a/c;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsanandroid/widget/ListView;

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/c;->e:Lccsanandroid/widget/ListView;

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/c;->c:Lccsancom/applovin/impl/mediation/debugger/ui/d/d;

    invoke-virtual {p1, v0}, Lccsanandroid/widget/ListView;->setAdapter(Lccsanandroid/widget/ListAdapter;)V

    return-void
.end method
