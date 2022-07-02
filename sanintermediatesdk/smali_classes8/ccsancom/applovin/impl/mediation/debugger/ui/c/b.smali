.class public Lccsancom/applovin/impl/mediation/debugger/ui/c/b;
.super Lccsancom/applovin/impl/mediation/debugger/ui/d/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/applovin/impl/mediation/debugger/ui/c/b$a;
    }
.end annotation


# instance fields
.field private final a:Lccsancom/applovin/impl/mediation/debugger/a/b/b;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/applovin/impl/mediation/debugger/ui/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/applovin/impl/mediation/debugger/ui/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/applovin/impl/mediation/debugger/ui/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/applovin/impl/mediation/debugger/ui/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/applovin/impl/mediation/debugger/ui/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lccsanandroid/text/SpannedString;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/mediation/debugger/a/b/b;Lccsanandroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p2}, Lccsancom/applovin/impl/mediation/debugger/ui/d/d;-><init>(Lccsanandroid/content/Context;)V

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;->a:Lccsancom/applovin/impl/mediation/debugger/a/b/b;

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/debugger/a/b/b;->a()Lccsancom/applovin/impl/mediation/debugger/a/b/b$a;

    move-result-object p2

    sget-object v0, Lccsancom/applovin/impl/mediation/debugger/a/b/b$a;->c:Lccsancom/applovin/impl/mediation/debugger/a/b/b$a;

    if-ne p2, v0, :cond_0

    new-instance p2, Lccsanandroid/text/SpannableString;

    const-string v0, "Tap for more information"

    invoke-direct {p2, v0}, Lccsanandroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v0, Lccsanandroid/text/style/AbsoluteSizeSpan;

    const/16 v1, 0xc

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lccsanandroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    const/4 v1, 0x0

    invoke-virtual {p2}, Lccsanandroid/text/SpannableString;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {p2, v0, v1, v2, v3}, Lccsanandroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v0, Lccsanandroid/text/SpannedString;

    invoke-direct {v0, p2}, Lccsanandroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;->h:Lccsanandroid/text/SpannedString;

    goto :goto_0

    :cond_0
    new-instance p2, Lccsanandroid/text/SpannedString;

    const-string v0, ""

    invoke-direct {p2, v0}, Lccsanandroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    iput-object p2, p0, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;->h:Lccsanandroid/text/SpannedString;

    :goto_0
    invoke-direct {p0}, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;->d()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;->b:Ljava/util/List;

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/debugger/a/b/b;->p()Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p2}, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;->d:Ljava/util/List;

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/debugger/a/b/b;->r()Lccsancom/applovin/impl/mediation/debugger/a/b/c;

    move-result-object p2

    invoke-direct {p0, p2}, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;->a(Lccsancom/applovin/impl/mediation/debugger/a/b/c;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;->e:Ljava/util/List;

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/debugger/a/b/b;->q()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;->f:Ljava/util/List;

    invoke-direct {p0}, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;->h()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;->g:Ljava/util/List;

    invoke-virtual {p0}, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;->notifyDataSetChanged()V

    return-void
.end method

.method private a(Z)I
    .locals 0

    if-eqz p1, :cond_0

    sget p1, Lccsancom/applovin/sdk/R$drawable;->ccsan_ccsan_ccsan_ccsan_ccsan_ccsan_ccsan_applovin_ic_check_mark_bordered:I

    goto :goto_0

    :cond_0
    sget p1, Lccsancom/applovin/sdk/R$drawable;->ccsan_ccsan_ccsan_ccsan_ccsan_ccsan_ccsan_applovin_ic_x_mark:I

    :goto_0
    return p1
.end method

.method private a(Lccsancom/applovin/impl/mediation/debugger/a/b/b$b;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c;
    .locals 2

    invoke-static {}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c;->p()Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v0

    sget-object v1, Lccsancom/applovin/impl/mediation/debugger/a/b/b$b;->e:Lccsancom/applovin/impl/mediation/debugger/a/b/b$b;

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;->c:Lccsanandroid/content/Context;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->a(Lccsanandroid/content/Context;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    :cond_0
    const-string v1, "Test Mode"

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->a(Ljava/lang/String;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v0

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/debugger/a/b/b$b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->b(Ljava/lang/String;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v0

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/debugger/a/b/b$b;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->b(I)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v0

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/debugger/a/b/b$b;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->d(Ljava/lang/String;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->a(Z)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->a()Lccsancom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object p1

    return-object p1
.end method

.method private a(Lccsancom/applovin/impl/mediation/debugger/a/b/c;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/applovin/impl/mediation/debugger/a/b/c;",
            ")",
            "Ljava/util/List<",
            "Lccsancom/applovin/impl/mediation/debugger/ui/d/c;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/debugger/a/b/c;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/debugger/a/b/c;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v3, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$b;->e:Lccsancom/applovin/impl/mediation/debugger/ui/d/c$b;

    goto :goto_0

    :cond_0
    sget-object v3, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$b;->d:Lccsancom/applovin/impl/mediation/debugger/ui/d/c$b;

    :goto_0
    invoke-static {v3}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c;->a(Lccsancom/applovin/impl/mediation/debugger/ui/d/c$b;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v3

    const-string v4, "Cleartext Traffic"

    invoke-virtual {v3, v4}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->a(Ljava/lang/String;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v3

    if-eqz v2, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;->h:Lccsanandroid/text/SpannedString;

    :goto_1
    invoke-virtual {v3, v4}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->b(Lccsanandroid/text/SpannedString;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v3

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/debugger/a/b/c;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->d(Ljava/lang/String;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object p1

    invoke-direct {p0, v2}, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;->a(Z)I

    move-result v3

    invoke-virtual {p1, v3}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->a(I)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object p1

    invoke-direct {p0, v2}, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;->b(Z)I

    move-result v3

    invoke-virtual {p1, v3}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->c(I)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object p1

    xor-int/2addr v1, v2

    invoke-virtual {p1, v1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->a(Z)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->a()Lccsancom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/applovin/impl/mediation/debugger/a/b/d;",
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

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/applovin/impl/mediation/debugger/a/b/d;

    invoke-virtual {v1}, Lccsancom/applovin/impl/mediation/debugger/a/b/d;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v3, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$b;->e:Lccsancom/applovin/impl/mediation/debugger/ui/d/c$b;

    goto :goto_1

    :cond_0
    sget-object v3, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$b;->d:Lccsancom/applovin/impl/mediation/debugger/ui/d/c$b;

    :goto_1
    invoke-static {v3}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c;->a(Lccsancom/applovin/impl/mediation/debugger/ui/d/c$b;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v3

    invoke-virtual {v1}, Lccsancom/applovin/impl/mediation/debugger/a/b/d;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->a(Ljava/lang/String;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v3

    if-eqz v2, :cond_1

    const/4 v4, 0x0

    goto :goto_2

    :cond_1
    iget-object v4, p0, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;->h:Lccsanandroid/text/SpannedString;

    :goto_2
    invoke-virtual {v3, v4}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->b(Lccsanandroid/text/SpannedString;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v3

    invoke-virtual {v1}, Lccsancom/applovin/impl/mediation/debugger/a/b/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->d(Ljava/lang/String;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v1

    invoke-direct {p0, v2}, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;->a(Z)I

    move-result v3

    invoke-virtual {v1, v3}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->a(I)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v1

    invoke-direct {p0, v2}, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;->b(Z)I

    move-result v3

    invoke-virtual {v1, v3}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->c(I)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v1

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->a(Z)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->a()Lccsancom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private b(Z)I
    .locals 1

    if-eqz p1, :cond_0

    sget p1, Lccsancom/applovin/sdk/R$color;->applovin_sdk_checkmarkColor:I

    goto :goto_0

    :cond_0
    sget p1, Lccsancom/applovin/sdk/R$color;->applovin_sdk_xmarkColor:I

    :goto_0
    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;->c:Lccsanandroid/content/Context;

    invoke-static {p1, v0}, Lccsancom/applovin/impl/sdk/utils/e;->a(ILccsanandroid/content/Context;)I

    move-result p1

    return p1
.end method

.method private b(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/applovin/impl/mediation/debugger/a/b/a;",
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

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/applovin/impl/mediation/debugger/a/b/a;

    invoke-virtual {v1}, Lccsancom/applovin/impl/mediation/debugger/a/b/a;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v3, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$b;->e:Lccsancom/applovin/impl/mediation/debugger/ui/d/c$b;

    goto :goto_1

    :cond_0
    sget-object v3, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$b;->d:Lccsancom/applovin/impl/mediation/debugger/ui/d/c$b;

    :goto_1
    invoke-static {v3}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c;->a(Lccsancom/applovin/impl/mediation/debugger/ui/d/c$b;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v3

    invoke-virtual {v1}, Lccsancom/applovin/impl/mediation/debugger/a/b/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->a(Ljava/lang/String;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v3

    if-eqz v2, :cond_1

    const/4 v4, 0x0

    goto :goto_2

    :cond_1
    iget-object v4, p0, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;->h:Lccsanandroid/text/SpannedString;

    :goto_2
    invoke-virtual {v3, v4}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->b(Lccsanandroid/text/SpannedString;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v3

    invoke-virtual {v1}, Lccsancom/applovin/impl/mediation/debugger/a/b/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->d(Ljava/lang/String;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v1

    invoke-direct {p0, v2}, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;->a(Z)I

    move-result v3

    invoke-virtual {v1, v3}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->a(I)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v1

    invoke-direct {p0, v2}, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;->b(Z)I

    move-result v3

    invoke-virtual {v1, v3}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->c(I)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v1

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->a(Z)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->a()Lccsancom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private c(Ljava/util/List;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lccsancom/applovin/impl/mediation/debugger/ui/d/c;"
        }
    .end annotation

    invoke-static {}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c;->p()Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v0

    const-string v1, "Region/VPN Required"

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->a(Ljava/lang/String;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, ", "

    invoke-static {p1, v2, v1}, Lccsancom/applovin/impl/sdk/utils/CollectionUtils;->implode(Ljava/util/Collection;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->b(Ljava/lang/String;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->a()Lccsancom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object p1

    return-object p1
.end method

.method private d()Ljava/util/List;
    .locals 2
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

    invoke-direct {p0}, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;->e()Lccsancom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;->f()Lccsancom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;->g()Lccsancom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private e()Lccsancom/applovin/impl/mediation/debugger/ui/d/c;
    .locals 3

    invoke-static {}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c;->p()Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v0

    const-string v1, "SDK"

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->a(Ljava/lang/String;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;->a:Lccsancom/applovin/impl/mediation/debugger/a/b/b;

    invoke-virtual {v1}, Lccsancom/applovin/impl/mediation/debugger/a/b/b;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->b(Ljava/lang/String;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;->a:Lccsancom/applovin/impl/mediation/debugger/a/b/b;

    invoke-virtual {v1}, Lccsancom/applovin/impl/mediation/debugger/a/b/b;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;->a:Lccsancom/applovin/impl/mediation/debugger/a/b/b;

    invoke-virtual {v1}, Lccsancom/applovin/impl/mediation/debugger/a/b/b;->d()Z

    move-result v1

    invoke-direct {p0, v1}, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;->a(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->a(I)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v1

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;->a:Lccsancom/applovin/impl/mediation/debugger/a/b/b;

    invoke-virtual {v2}, Lccsancom/applovin/impl/mediation/debugger/a/b/b;->d()Z

    move-result v2

    invoke-direct {p0, v2}, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;->b(Z)I

    move-result v2

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->c(I)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    :cond_0
    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->a()Lccsancom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object v0

    return-object v0
.end method

.method private e(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lccsancom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;->INITIALIZED_SUCCESS:Lccsancom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;

    invoke-virtual {v0}, Lccsancom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;->getCode()I

    move-result v0

    if-eq v0, p1, :cond_3

    sget-object v0, Lccsancom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;->INITIALIZED_UNKNOWN:Lccsancom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;

    invoke-virtual {v0}, Lccsancom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;->getCode()I

    move-result v0

    if-eq v0, p1, :cond_3

    sget-object v0, Lccsancom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;->DOES_NOT_APPLY:Lccsancom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;

    invoke-virtual {v0}, Lccsancom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;->getCode()I

    move-result v0

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lccsancom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;->INITIALIZED_FAILURE:Lccsancom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;

    invoke-virtual {v0}, Lccsancom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;->getCode()I

    move-result v0

    if-ne v0, p1, :cond_1

    const-string p1, "Failure"

    return-object p1

    :cond_1
    sget-object v0, Lccsancom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;->INITIALIZING:Lccsancom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;

    invoke-virtual {v0}, Lccsancom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;->getCode()I

    move-result v0

    if-ne v0, p1, :cond_2

    const-string p1, "Initializing..."

    return-object p1

    :cond_2
    const-string p1, "Waiting to Initialize..."

    return-object p1

    :cond_3
    :goto_0
    const-string p1, "Initialized"

    return-object p1
.end method

.method private f()Lccsancom/applovin/impl/mediation/debugger/ui/d/c;
    .locals 3

    invoke-static {}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c;->p()Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v0

    const-string v1, "Adapter"

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->a(Ljava/lang/String;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;->a:Lccsancom/applovin/impl/mediation/debugger/a/b/b;

    invoke-virtual {v1}, Lccsancom/applovin/impl/mediation/debugger/a/b/b;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->b(Ljava/lang/String;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;->a:Lccsancom/applovin/impl/mediation/debugger/a/b/b;

    invoke-virtual {v1}, Lccsancom/applovin/impl/mediation/debugger/a/b/b;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;->a:Lccsancom/applovin/impl/mediation/debugger/a/b/b;

    invoke-virtual {v1}, Lccsancom/applovin/impl/mediation/debugger/a/b/b;->e()Z

    move-result v1

    invoke-direct {p0, v1}, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;->a(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->a(I)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v1

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;->a:Lccsancom/applovin/impl/mediation/debugger/a/b/b;

    invoke-virtual {v2}, Lccsancom/applovin/impl/mediation/debugger/a/b/b;->e()Z

    move-result v2

    invoke-direct {p0, v2}, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;->b(Z)I

    move-result v2

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->c(I)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    :cond_0
    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->a()Lccsancom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object v0

    return-object v0
.end method

.method private g()Lccsancom/applovin/impl/mediation/debugger/ui/d/c;
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;->a:Lccsancom/applovin/impl/mediation/debugger/a/b/b;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/a/b/b;->s()Lccsancom/applovin/impl/sdk/k;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->B()Lccsancom/applovin/impl/mediation/e;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/e;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c;->p()Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v0

    const-string v2, "Initialize with Activity Context"

    invoke-virtual {v0, v2}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->a(Ljava/lang/String;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v0

    const-string v2, "Please ensure that you are initializing the AppLovin MAX SDK with an Activity Context."

    invoke-virtual {v0, v2}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->d(Ljava/lang/String;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v0

    invoke-direct {p0, v1}, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;->a(Z)I

    move-result v2

    invoke-virtual {v0, v2}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->a(I)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v0

    invoke-direct {p0, v1}, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;->b(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->c(I)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->a(Z)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->a()Lccsancom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c;->p()Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v0

    const-string v2, "Initialization Status"

    invoke-virtual {v0, v2}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->a(Ljava/lang/String;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v0

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;->a:Lccsancom/applovin/impl/mediation/debugger/a/b/b;

    invoke-virtual {v2}, Lccsancom/applovin/impl/mediation/debugger/a/b/b;->b()I

    move-result v2

    invoke-direct {p0, v2}, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;->e(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->b(Ljava/lang/String;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object v0

    goto :goto_0
.end method

.method private h()Ljava/util/List;
    .locals 3
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

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;->a:Lccsancom/applovin/impl/mediation/debugger/a/b/b;

    invoke-virtual {v1}, Lccsancom/applovin/impl/mediation/debugger/a/b/b;->c()Lccsancom/applovin/impl/mediation/debugger/a/b/b$b;

    move-result-object v1

    sget-object v2, Lccsancom/applovin/impl/mediation/debugger/a/b/b$b;->a:Lccsancom/applovin/impl/mediation/debugger/a/b/b$b;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;->a:Lccsancom/applovin/impl/mediation/debugger/a/b/b;

    invoke-virtual {v1}, Lccsancom/applovin/impl/mediation/debugger/a/b/b;->m()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;->a:Lccsancom/applovin/impl/mediation/debugger/a/b/b;

    invoke-virtual {v1}, Lccsancom/applovin/impl/mediation/debugger/a/b/b;->m()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;->c(Ljava/util/List;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;->a:Lccsancom/applovin/impl/mediation/debugger/a/b/b;

    invoke-virtual {v1}, Lccsancom/applovin/impl/mediation/debugger/a/b/b;->c()Lccsancom/applovin/impl/mediation/debugger/a/b/b$b;

    move-result-object v1

    invoke-direct {p0, v1}, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;->a(Lccsancom/applovin/impl/mediation/debugger/a/b/b$b;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method


# virtual methods
.method protected a(I)I
    .locals 1

    sget-object v0, Lccsancom/applovin/impl/mediation/debugger/ui/c/b$a;->a:Lccsancom/applovin/impl/mediation/debugger/ui/c/b$a;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/ui/c/b$a;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;->b:Ljava/util/List;

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1

    :cond_0
    sget-object v0, Lccsancom/applovin/impl/mediation/debugger/ui/c/b$a;->b:Lccsancom/applovin/impl/mediation/debugger/ui/c/b$a;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/ui/c/b$a;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;->d:Ljava/util/List;

    goto :goto_0

    :cond_1
    sget-object v0, Lccsancom/applovin/impl/mediation/debugger/ui/c/b$a;->c:Lccsancom/applovin/impl/mediation/debugger/ui/c/b$a;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/ui/c/b$a;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;->e:Ljava/util/List;

    goto :goto_0

    :cond_2
    sget-object v0, Lccsancom/applovin/impl/mediation/debugger/ui/c/b$a;->d:Lccsancom/applovin/impl/mediation/debugger/ui/c/b$a;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/ui/c/b$a;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;->f:Ljava/util/List;

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;->g:Ljava/util/List;

    goto :goto_0
.end method

.method public a()Lccsancom/applovin/impl/mediation/debugger/a/b/b;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;->a:Lccsancom/applovin/impl/mediation/debugger/a/b/b;

    return-object v0
.end method

.method protected b()I
    .locals 1

    sget-object v0, Lccsancom/applovin/impl/mediation/debugger/ui/c/b$a;->f:Lccsancom/applovin/impl/mediation/debugger/ui/c/b$a;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/ui/c/b$a;->ordinal()I

    move-result v0

    return v0
.end method

.method protected b(I)Lccsancom/applovin/impl/mediation/debugger/ui/d/c;
    .locals 1

    sget-object v0, Lccsancom/applovin/impl/mediation/debugger/ui/c/b$a;->a:Lccsancom/applovin/impl/mediation/debugger/ui/c/b$a;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/ui/c/b$a;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    new-instance p1, Lccsancom/applovin/impl/mediation/debugger/ui/d/e;

    const-string v0, "INTEGRATIONS"

    invoke-direct {p1, v0}, Lccsancom/applovin/impl/mediation/debugger/ui/d/e;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_0
    sget-object v0, Lccsancom/applovin/impl/mediation/debugger/ui/c/b$a;->b:Lccsancom/applovin/impl/mediation/debugger/ui/c/b$a;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/ui/c/b$a;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_1

    new-instance p1, Lccsancom/applovin/impl/mediation/debugger/ui/d/e;

    const-string v0, "PERMISSIONS"

    invoke-direct {p1, v0}, Lccsancom/applovin/impl/mediation/debugger/ui/d/e;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_1
    sget-object v0, Lccsancom/applovin/impl/mediation/debugger/ui/c/b$a;->c:Lccsancom/applovin/impl/mediation/debugger/ui/c/b$a;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/ui/c/b$a;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_2

    new-instance p1, Lccsancom/applovin/impl/mediation/debugger/ui/d/e;

    const-string v0, "CONFIGURATION"

    invoke-direct {p1, v0}, Lccsancom/applovin/impl/mediation/debugger/ui/d/e;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_2
    sget-object v0, Lccsancom/applovin/impl/mediation/debugger/ui/c/b$a;->d:Lccsancom/applovin/impl/mediation/debugger/ui/c/b$a;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/ui/c/b$a;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_3

    new-instance p1, Lccsancom/applovin/impl/mediation/debugger/ui/d/e;

    const-string v0, "DEPENDENCIES"

    invoke-direct {p1, v0}, Lccsancom/applovin/impl/mediation/debugger/ui/d/e;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_3
    new-instance p1, Lccsancom/applovin/impl/mediation/debugger/ui/d/e;

    const-string v0, "TEST ADS"

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

    sget-object v0, Lccsancom/applovin/impl/mediation/debugger/ui/c/b$a;->a:Lccsancom/applovin/impl/mediation/debugger/ui/c/b$a;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/ui/c/b$a;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;->b:Ljava/util/List;

    return-object p1

    :cond_0
    sget-object v0, Lccsancom/applovin/impl/mediation/debugger/ui/c/b$a;->b:Lccsancom/applovin/impl/mediation/debugger/ui/c/b$a;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/ui/c/b$a;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;->d:Ljava/util/List;

    return-object p1

    :cond_1
    sget-object v0, Lccsancom/applovin/impl/mediation/debugger/ui/c/b$a;->c:Lccsancom/applovin/impl/mediation/debugger/ui/c/b$a;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/ui/c/b$a;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;->e:Ljava/util/List;

    return-object p1

    :cond_2
    sget-object v0, Lccsancom/applovin/impl/mediation/debugger/ui/c/b$a;->d:Lccsancom/applovin/impl/mediation/debugger/ui/c/b$a;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/ui/c/b$a;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;->f:Ljava/util/List;

    return-object p1

    :cond_3
    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;->g:Ljava/util/List;

    return-object p1
.end method

.method public c()V
    .locals 1

    invoke-direct {p0}, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;->d()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/c/b;->b:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "MediatedNetworkListAdapter{}"

    return-object v0
.end method
