.class public Lccsancom/applovin/impl/mediation/debugger/ui/b/b;
.super Lccsancom/applovin/impl/mediation/debugger/ui/d/d;

# interfaces
.implements Lccsancom/applovin/communicator/AppLovinCommunicatorSubscriber;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/applovin/impl/mediation/debugger/ui/b/b$a;,
        Lccsancom/applovin/impl/mediation/debugger/ui/b/b$b;
    }
.end annotation


# instance fields
.field private a:Lccsancom/applovin/impl/sdk/k;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/applovin/impl/mediation/debugger/a/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private final g:Ljava/lang/StringBuilder;

.field private final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private i:Z

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/applovin/impl/mediation/debugger/a/b/b;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/applovin/impl/mediation/debugger/a/b/b;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/applovin/impl/mediation/debugger/a/b/b;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/applovin/impl/mediation/debugger/a/b/b;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/applovin/impl/mediation/debugger/ui/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/applovin/impl/mediation/debugger/ui/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/applovin/impl/mediation/debugger/ui/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/applovin/impl/mediation/debugger/ui/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/applovin/impl/mediation/debugger/ui/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/applovin/impl/mediation/debugger/ui/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/applovin/impl/mediation/debugger/ui/d/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/d;-><init>(Lccsanandroid/content/Context;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->g:Ljava/lang/StringBuilder;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->i:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->j:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->k:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->l:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->m:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->n:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->o:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->p:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->q:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->r:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->s:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->t:Ljava/util/List;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c;
    .locals 1

    invoke-static {}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c;->p()Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->a(Ljava/lang/String;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object p1

    invoke-static {p2}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->b(Ljava/lang/String;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    goto :goto_0

    :cond_0
    sget p2, Lccsancom/applovin/sdk/R$drawable;->applovin_ic_x_mark:I

    invoke-virtual {p1, p2}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->a(I)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    sget p2, Lccsancom/applovin/sdk/R$color;->applovin_sdk_xmarkColor:I

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->c:Lccsanandroid/content/Context;

    invoke-static {p2, v0}, Lccsancom/applovin/impl/sdk/utils/e;->a(ILccsanandroid/content/Context;)I

    move-result p2

    invoke-virtual {p1, p2}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->c(I)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    :goto_0
    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->a()Lccsancom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object p1

    return-object p1
.end method

.method private a(Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;Ljava/lang/String;)V
    .locals 1

    const-string v0, "MAX Ad Review"

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->c(Ljava/lang/String;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->d(Ljava/lang/String;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object p1

    sget p2, Lccsancom/applovin/sdk/R$drawable;->applovin_ic_x_mark:I

    invoke-virtual {p1, p2}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->a(I)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object p1

    sget p2, Lccsancom/applovin/sdk/R$color;->applovin_sdk_xmarkColor:I

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->c:Lccsanandroid/content/Context;

    invoke-static {p2, v0}, Lccsancom/applovin/impl/sdk/utils/e;->a(ILccsanandroid/content/Context;)I

    move-result p2

    invoke-virtual {p1, p2}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->c(I)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->a(Z)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    return-void
.end method

.method private a(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v3, Lccsancom/applovin/impl/sdk/c/b;->ak:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v2, v3}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v1, v2, :cond_0

    const-string v1, "MediationDebuggerListAdapter"

    invoke-static {v1, v0}, Lccsancom/applovin/impl/sdk/r;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/applovin/impl/mediation/debugger/a/b/b;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/applovin/impl/mediation/debugger/a/b/b;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/a/b/b;->a()Lccsancom/applovin/impl/mediation/debugger/a/b/b$a;

    move-result-object v1

    sget-object v2, Lccsancom/applovin/impl/mediation/debugger/a/b/b$a;->b:Lccsancom/applovin/impl/mediation/debugger/a/b/b$a;

    if-eq v1, v2, :cond_3

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/a/b/b;->a()Lccsancom/applovin/impl/mediation/debugger/a/b/b$a;

    move-result-object v1

    sget-object v2, Lccsancom/applovin/impl/mediation/debugger/a/b/b$a;->c:Lccsancom/applovin/impl/mediation/debugger/a/b/b$a;

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/a/b/b;->a()Lccsancom/applovin/impl/mediation/debugger/a/b/b$a;

    move-result-object v1

    sget-object v2, Lccsancom/applovin/impl/mediation/debugger/a/b/b$a;->d:Lccsancom/applovin/impl/mediation/debugger/a/b/b$a;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->k:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->m:Ljava/util/List;

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/a/b/b;->a()Lccsancom/applovin/impl/mediation/debugger/a/b/b$a;

    move-result-object v1

    sget-object v2, Lccsancom/applovin/impl/mediation/debugger/a/b/b$a;->a:Lccsancom/applovin/impl/mediation/debugger/a/b/b$a;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->l:Ljava/util/List;

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->j:Ljava/util/List;

    :goto_2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-void
.end method

.method private b(Ljava/util/List;)Ljava/util/List;
    .locals 4
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

    new-instance v2, Lccsancom/applovin/impl/mediation/debugger/ui/b/a/a;

    iget-object v3, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->c:Lccsanandroid/content/Context;

    invoke-direct {v2, v1, v3}, Lccsancom/applovin/impl/mediation/debugger/ui/b/a/a;-><init>(Lccsancom/applovin/impl/mediation/debugger/a/b/b;Lccsanandroid/content/Context;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private j()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n========== MEDIATION DEBUGGER =========="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n========== APP INFO =========="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nDev Build - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->c:Lccsanandroid/content/Context;

    invoke-static {v2}, Lccsancom/applovin/impl/sdk/utils/Utils;->isPubInDebugMode(Lccsanandroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nTest Mode - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v2}, Lccsancom/applovin/impl/sdk/k;->H()Lccsancom/applovin/impl/mediation/debugger/ui/testmode/b;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/b;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "enabled"

    goto :goto_0

    :cond_0
    const-string v2, "disabled"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nTarget SDK - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v2}, Lccsancom/applovin/impl/sdk/k;->T()Lccsancom/applovin/impl/sdk/m;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/applovin/impl/sdk/m;->g()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v3, "target_sdk"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n========== MAX =========="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lccsancom/applovin/sdk/AppLovinSdk;->VERSION:Ljava/lang/String;

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v3, Lccsancom/applovin/impl/sdk/c/b;->dz:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v2, v3}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {}, Lccsancom/applovin/impl/sdk/utils/Utils;->getSafedkVersion()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\nSDK Version - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nPlugin Version - "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "None"

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v5

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nAd Review Version - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const-string v3, "Disabled"

    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->g()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->p()Lccsancom/applovin/sdk/AppLovinSdkSettings;

    move-result-object v1

    invoke-static {v1}, Lccsancom/applovin/impl/sdk/utils/Utils;->getMetaData(Lccsancom/applovin/sdk/AppLovinSdkSettings;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v2, "UnityVersion"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\nUnity Version - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v5, v1

    :cond_3
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v1, "\n========== PRIVACY =========="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->c:Lccsanandroid/content/Context;

    invoke-static {v1}, Lccsancom/applovin/impl/sdk/h;->a(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n========== NETWORKS =========="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/applovin/impl/mediation/debugger/a/b/b;

    invoke-virtual {v2}, Lccsancom/applovin/impl/mediation/debugger/a/b/b;->t()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/applovin/impl/mediation/debugger/a/b/b;

    invoke-virtual {v2}, Lccsancom/applovin/impl/mediation/debugger/a/b/b;->t()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    const-string v1, "\n========== AD UNITS =========="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/applovin/impl/mediation/debugger/a/a/a;

    invoke-virtual {v2}, Lccsancom/applovin/impl/mediation/debugger/a/a/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    const-string v1, "\n========== END =========="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediationDebuggerListAdapter"

    invoke-static {v2, v1}, Lccsancom/applovin/impl/sdk/r;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private k()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsancom/applovin/impl/mediation/debugger/ui/d/c;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->c:Lccsanandroid/content/Context;

    invoke-virtual {v1}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->c:Lccsanandroid/content/Context;

    invoke-virtual {v2}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lccsanandroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Lccsanandroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Lccsanandroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const/4 v1, 0x0

    :goto_0
    invoke-static {}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c;->p()Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v2

    const-string v3, "Package Name"

    invoke-virtual {v2, v3}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->a(Ljava/lang/String;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v2

    iget-object v3, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->c:Lccsanandroid/content/Context;

    invoke-virtual {v3}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->b(Ljava/lang/String;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->a()Lccsancom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c;->p()Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v2

    const-string v3, "App Version"

    invoke-virtual {v2, v3}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->a(Ljava/lang/String;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v2

    invoke-static {v1}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "None"

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    move-object v1, v4

    :goto_1
    invoke-virtual {v2, v1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->b(Ljava/lang/String;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->a()Lccsancom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c;->p()Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v1

    const-string v2, "OS"

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->a(Ljava/lang/String;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v1

    invoke-static {}, Lccsancom/applovin/impl/sdk/utils/Utils;->getAndroidOSInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->b(Ljava/lang/String;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->a()Lccsancom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c;->p()Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v1

    const-string v2, "Account"

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->a(Ljava/lang/String;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v1

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->f:Ljava/lang/String;

    invoke-static {v2}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->f:Ljava/lang/String;

    goto :goto_2

    :cond_1
    move-object v2, v4

    :goto_2
    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->b(Ljava/lang/String;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->a()Lccsancom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c;->p()Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v1

    const-string v2, "Mediation Provider"

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->a(Ljava/lang/String;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v1

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v2}, Lccsancom/applovin/impl/sdk/k;->s()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v2}, Lccsancom/applovin/impl/sdk/k;->s()Ljava/lang/String;

    move-result-object v4

    :cond_2
    invoke-virtual {v1, v4}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->b(Ljava/lang/String;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->a()Lccsancom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private l()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsancom/applovin/impl/mediation/debugger/ui/d/c;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c;->p()Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v1

    const-string v2, "SDK Version"

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->a(Ljava/lang/String;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v1

    sget-object v2, Lccsancom/applovin/sdk/AppLovinSdk;->VERSION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->b(Ljava/lang/String;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->a()Lccsancom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v2, Lccsancom/applovin/impl/sdk/c/b;->dz:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c;->p()Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v2

    const-string v3, "Plugin Version"

    invoke-virtual {v2, v3}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->a(Ljava/lang/String;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v2

    invoke-static {v1}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "None"

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v4

    :goto_0
    invoke-virtual {v2, v1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->b(Ljava/lang/String;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->a()Lccsancom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c;->p()Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v1

    const-string v2, "Ad Review Version"

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->a(Ljava/lang/String;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v1

    invoke-static {}, Lccsancom/applovin/impl/sdk/utils/Utils;->getSafedkVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lccsancom/applovin/impl/sdk/utils/Utils;->getSafedkSdkKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v5}, Lccsancom/applovin/impl/sdk/k;->x()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MAX Ad Review integrated with wrong SDK key. Please check that your "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v3}, Lccsancom/applovin/impl/sdk/k;->g()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "SDK key is downloaded"

    goto :goto_1

    :cond_2
    const-string v3, "Gradle plugin snippet is integrated"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from the correct account."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_3
    :goto_2
    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->b(Ljava/lang/String;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    goto :goto_4

    :cond_4
    const-string v2, "Integrating MAX Ad review is OPTIONAL. This feature gives developers unprecedented transparency into the creatives the users see in their apps."

    :goto_3
    invoke-direct {p0, v1, v2}, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->a(Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;Ljava/lang/String;)V

    :goto_4
    invoke-virtual {v1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->a()Lccsancom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->g()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->p()Lccsancom/applovin/sdk/AppLovinSdkSettings;

    move-result-object v1

    invoke-static {v1}, Lccsancom/applovin/impl/sdk/utils/Utils;->getMetaData(Lccsancom/applovin/sdk/AppLovinSdkSettings;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v2, "UnityVersion"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v4, v1

    :cond_5
    const-string v1, "Unity Version"

    invoke-direct {p0, v1, v4}, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->a(Ljava/lang/String;Ljava/lang/String;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object v0
.end method

.method private m()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsancom/applovin/impl/mediation/debugger/ui/d/c;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Lccsancom/applovin/impl/mediation/debugger/ui/b/a/b;

    invoke-static {}, Lccsancom/applovin/impl/sdk/h;->a()Lccsancom/applovin/impl/sdk/h$a;

    move-result-object v2

    iget-object v3, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->c:Lccsanandroid/content/Context;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lccsancom/applovin/impl/mediation/debugger/ui/b/a/b;-><init>(Lccsancom/applovin/impl/sdk/h$a;ZLccsanandroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lccsancom/applovin/impl/mediation/debugger/ui/b/a/b;

    invoke-static {}, Lccsancom/applovin/impl/sdk/h;->b()Lccsancom/applovin/impl/sdk/h$a;

    move-result-object v2

    iget-object v3, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->c:Lccsanandroid/content/Context;

    const/4 v5, 0x0

    invoke-direct {v1, v2, v5, v3}, Lccsancom/applovin/impl/mediation/debugger/ui/b/a/b;-><init>(Lccsancom/applovin/impl/sdk/h$a;ZLccsanandroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lccsancom/applovin/impl/mediation/debugger/ui/b/a/b;

    invoke-static {}, Lccsancom/applovin/impl/sdk/h;->c()Lccsancom/applovin/impl/sdk/h$a;

    move-result-object v2

    iget-object v3, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->c:Lccsanandroid/content/Context;

    invoke-direct {v1, v2, v4, v3}, Lccsancom/applovin/impl/mediation/debugger/ui/b/a/b;-><init>(Lccsancom/applovin/impl/sdk/h$a;ZLccsanandroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private n()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsancom/applovin/impl/mediation/debugger/ui/d/c;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c;->p()Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View Ad Units ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->a(Ljava/lang/String;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v1

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->c:Lccsanandroid/content/Context;

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->a(Lccsanandroid/content/Context;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->a(Z)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->a()Lccsancom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->o()Lccsancom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private o()Lccsancom/applovin/impl/mediation/debugger/ui/d/c;
    .locals 3

    invoke-static {}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c;->p()Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->H()Lccsancom/applovin/impl/mediation/debugger/ui/testmode/b;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/b;->a()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->c:Lccsanandroid/content/Context;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->a(Lccsanandroid/content/Context;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v2}, Lccsancom/applovin/impl/sdk/k;->H()Lccsancom/applovin/impl/mediation/debugger/ui/testmode/b;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/b;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, ""

    goto :goto_0

    :cond_1
    const-string v2, "Select "

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Live Network"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->a(Ljava/lang/String;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->H()Lccsancom/applovin/impl/mediation/debugger/ui/testmode/b;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/b;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Enable"

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->b(Ljava/lang/String;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v0

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->b(I)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v0

    const-string v1, "Ad loads are not supported while Test Mode is enabled. Please restart the app and make sure your GAID has not been enabled for test mode and that you are not on an emulator."

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->d(Ljava/lang/String;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->a(Z)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->a()Lccsancom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(I)I
    .locals 1

    sget-object v0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b$b;->a:Lccsancom/applovin/impl/mediation/debugger/ui/b/b$b;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/ui/b/b$b;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->n:Ljava/util/List;

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1

    :cond_0
    sget-object v0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b$b;->b:Lccsancom/applovin/impl/mediation/debugger/ui/b/b$b;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/ui/b/b$b;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->o:Ljava/util/List;

    goto :goto_0

    :cond_1
    sget-object v0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b$b;->c:Lccsancom/applovin/impl/mediation/debugger/ui/b/b$b;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/ui/b/b$b;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->p:Ljava/util/List;

    goto :goto_0

    :cond_2
    sget-object v0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b$b;->d:Lccsancom/applovin/impl/mediation/debugger/ui/b/b$b;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/ui/b/b$b;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->q:Ljava/util/List;

    goto :goto_0

    :cond_3
    sget-object v0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b$b;->e:Lccsancom/applovin/impl/mediation/debugger/ui/b/b$b;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/ui/b/b$b;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->r:Ljava/util/List;

    goto :goto_0

    :cond_4
    sget-object v0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b$b;->f:Lccsancom/applovin/impl/mediation/debugger/ui/b/b$b;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/ui/b/b$b;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->s:Ljava/util/List;

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->t:Ljava/util/List;

    goto :goto_0
.end method

.method public a(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/applovin/impl/sdk/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/applovin/impl/mediation/debugger/a/b/b;",
            ">;",
            "Ljava/util/List<",
            "Lccsancom/applovin/impl/mediation/debugger/a/a/a;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lccsancom/applovin/impl/sdk/k;",
            ")V"
        }
    .end annotation

    iput-object p6, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->a:Lccsancom/applovin/impl/sdk/k;

    iput-object p2, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->b:Ljava/util/List;

    iput-object p3, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->d:Ljava/lang/String;

    iput-object p4, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->e:Ljava/lang/String;

    iput-object p5, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->f:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x0

    const/4 p4, 0x1

    invoke-virtual {p2, p3, p4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p6}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object p2

    const-string p3, "MediationDebuggerListAdapter"

    const-string p4, "Populating networks..."

    invoke-virtual {p2, p3, p4}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->a(Ljava/util/List;)V

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->n:Ljava/util/List;

    invoke-direct {p0}, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->k()Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->o:Ljava/util/List;

    invoke-direct {p0}, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->l()Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->p:Ljava/util/List;

    invoke-direct {p0}, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->m()Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->q:Ljava/util/List;

    invoke-direct {p0}, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->n()Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->j:Ljava/util/List;

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->r:Ljava/util/List;

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->k:Ljava/util/List;

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->s:Ljava/util/List;

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->l:Ljava/util/List;

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->t:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    const-string p2, "privacy_setting_updated"

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p2, "network_sdk_version_updated"

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->c:Lccsanandroid/content/Context;

    invoke-static {p2}, Lccsancom/applovin/communicator/AppLovinCommunicator;->getInstance(Lccsanandroid/content/Context;)Lccsancom/applovin/communicator/AppLovinCommunicator;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lccsancom/applovin/communicator/AppLovinCommunicator;->subscribe(Lccsancom/applovin/communicator/AppLovinCommunicatorSubscriber;Ljava/util/List;)V

    invoke-direct {p0}, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->j()V

    :cond_0
    new-instance p1, Lccsancom/applovin/impl/mediation/debugger/ui/b/b$1;

    invoke-direct {p1, p0}, Lccsancom/applovin/impl/mediation/debugger/ui/b/b$1;-><init>(Lccsancom/applovin/impl/mediation/debugger/ui/b/b;)V

    invoke-static {p1}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->i:Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method protected b()I
    .locals 1

    sget-object v0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b$b;->h:Lccsancom/applovin/impl/mediation/debugger/ui/b/b$b;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/ui/b/b$b;->ordinal()I

    move-result v0

    return v0
.end method

.method protected b(I)Lccsancom/applovin/impl/mediation/debugger/ui/d/c;
    .locals 1

    sget-object v0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b$b;->a:Lccsancom/applovin/impl/mediation/debugger/ui/b/b$b;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/ui/b/b$b;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    new-instance p1, Lccsancom/applovin/impl/mediation/debugger/ui/d/e;

    const-string v0, "APP INFO"

    invoke-direct {p1, v0}, Lccsancom/applovin/impl/mediation/debugger/ui/d/e;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_0
    sget-object v0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b$b;->b:Lccsancom/applovin/impl/mediation/debugger/ui/b/b$b;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/ui/b/b$b;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_1

    new-instance p1, Lccsancom/applovin/impl/mediation/debugger/ui/d/e;

    const-string v0, "MAX"

    invoke-direct {p1, v0}, Lccsancom/applovin/impl/mediation/debugger/ui/d/e;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_1
    sget-object v0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b$b;->c:Lccsancom/applovin/impl/mediation/debugger/ui/b/b$b;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/ui/b/b$b;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_2

    new-instance p1, Lccsancom/applovin/impl/mediation/debugger/ui/d/e;

    const-string v0, "PRIVACY"

    invoke-direct {p1, v0}, Lccsancom/applovin/impl/mediation/debugger/ui/d/e;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_2
    sget-object v0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b$b;->d:Lccsancom/applovin/impl/mediation/debugger/ui/b/b$b;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/ui/b/b$b;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_3

    new-instance p1, Lccsancom/applovin/impl/mediation/debugger/ui/d/e;

    const-string v0, "ADS"

    invoke-direct {p1, v0}, Lccsancom/applovin/impl/mediation/debugger/ui/d/e;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_3
    sget-object v0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b$b;->e:Lccsancom/applovin/impl/mediation/debugger/ui/b/b$b;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/ui/b/b$b;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_4

    new-instance p1, Lccsancom/applovin/impl/mediation/debugger/ui/d/e;

    const-string v0, "INCOMPLETE INTEGRATIONS"

    invoke-direct {p1, v0}, Lccsancom/applovin/impl/mediation/debugger/ui/d/e;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_4
    sget-object v0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b$b;->f:Lccsancom/applovin/impl/mediation/debugger/ui/b/b$b;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/ui/b/b$b;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_5

    new-instance p1, Lccsancom/applovin/impl/mediation/debugger/ui/d/e;

    const-string v0, "COMPLETED INTEGRATIONS"

    invoke-direct {p1, v0}, Lccsancom/applovin/impl/mediation/debugger/ui/d/e;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_5
    new-instance p1, Lccsancom/applovin/impl/mediation/debugger/ui/d/e;

    const-string v0, "MISSING INTEGRATIONS"

    invoke-direct {p1, v0}, Lccsancom/applovin/impl/mediation/debugger/ui/d/e;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method protected c(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lccsancom/applovin/impl/mediation/debugger/ui/d/c;",
            ">;"
        }
    .end annotation

    sget-object v0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b$b;->a:Lccsancom/applovin/impl/mediation/debugger/ui/b/b$b;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/ui/b/b$b;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->n:Ljava/util/List;

    return-object p1

    :cond_0
    sget-object v0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b$b;->b:Lccsancom/applovin/impl/mediation/debugger/ui/b/b$b;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/ui/b/b$b;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->o:Ljava/util/List;

    return-object p1

    :cond_1
    sget-object v0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b$b;->c:Lccsancom/applovin/impl/mediation/debugger/ui/b/b$b;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/ui/b/b$b;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->p:Ljava/util/List;

    return-object p1

    :cond_2
    sget-object v0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b$b;->d:Lccsancom/applovin/impl/mediation/debugger/ui/b/b$b;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/ui/b/b$b;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->q:Ljava/util/List;

    return-object p1

    :cond_3
    sget-object v0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b$b;->e:Lccsancom/applovin/impl/mediation/debugger/ui/b/b$b;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/ui/b/b$b;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->r:Ljava/util/List;

    return-object p1

    :cond_4
    sget-object v0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b$b;->f:Lccsancom/applovin/impl/mediation/debugger/ui/b/b$b;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/ui/b/b$b;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->s:Ljava/util/List;

    return-object p1

    :cond_5
    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->t:Ljava/util/List;

    return-object p1
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->i:Z

    return v0
.end method

.method public d()Lccsancom/applovin/impl/sdk/k;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->a:Lccsancom/applovin/impl/sdk/k;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsancom/applovin/impl/mediation/debugger/a/a/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->b:Ljava/util/List;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getCommunicatorId()Ljava/lang/String;
    .locals 1

    const-string v0, "MediationDebuggerListAdapter"

    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsancom/applovin/impl/mediation/debugger/a/b/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->m:Ljava/util/List;

    return-object v0
.end method

.method public onMessageReceived(Lccsancom/applovin/communicator/AppLovinCommunicatorMessage;)V
    .locals 2

    invoke-virtual {p1}, Lccsancom/applovin/communicator/AppLovinCommunicatorMessage;->getTopic()Ljava/lang/String;

    move-result-object v0

    const-string v1, "privacy_setting_updated"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->m()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->p:Ljava/util/List;

    :goto_0
    invoke-virtual {p0}, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->i()V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lccsancom/applovin/communicator/AppLovinCommunicatorMessage;->getTopic()Ljava/lang/String;

    move-result-object p1

    const-string v0, "network_sdk_version_updated"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->j:Ljava/util/List;

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->r:Ljava/util/List;

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->k:Ljava/util/List;

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->s:Ljava/util/List;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediationDebuggerListAdapter{isInitialized="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
