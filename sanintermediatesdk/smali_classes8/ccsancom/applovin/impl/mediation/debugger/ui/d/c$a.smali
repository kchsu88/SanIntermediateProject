.class public Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/applovin/impl/mediation/debugger/ui/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:Lccsancom/applovin/impl/mediation/debugger/ui/d/c$b;

.field b:Z

.field c:Lccsanandroid/text/SpannedString;

.field d:Lccsanandroid/text/SpannedString;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:I

.field h:I

.field i:I

.field j:I

.field k:I

.field l:I

.field m:Z


# direct methods
.method public constructor <init>(Lccsancom/applovin/impl/mediation/debugger/ui/d/c$b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->g:I

    iput v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->h:I

    const/high16 v1, -0x1000000

    iput v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->i:I

    iput v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->j:I

    iput v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->k:I

    iput v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->l:I

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->a:Lccsancom/applovin/impl/mediation/debugger/ui/d/c$b;

    return-void
.end method


# virtual methods
.method public a(I)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;
    .locals 0

    iput p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->h:I

    return-object p0
.end method

.method public a(Lccsanandroid/content/Context;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;
    .locals 1

    sget v0, Lccsancom/applovin/sdk/R$drawable;->ccsan_ccsan_ccsan_ccsan_ccsan_ccsan_ccsan_applovin_ic_disclosure_arrow:I

    iput v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->h:I

    sget v0, Lccsancom/applovin/sdk/R$color;->applovin_sdk_disclosureButtonColor:I

    invoke-static {v0, p1}, Lccsancom/applovin/impl/sdk/utils/e;->a(ILccsanandroid/content/Context;)I

    move-result p1

    iput p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->l:I

    return-object p0
.end method

.method public a(Lccsanandroid/text/SpannedString;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->c:Lccsanandroid/text/SpannedString;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;
    .locals 1

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lccsanandroid/text/SpannedString;

    invoke-direct {v0, p1}, Lccsanandroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->a(Lccsanandroid/text/SpannedString;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object p1

    return-object p1
.end method

.method public a(Z)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;
    .locals 0

    iput-boolean p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->b:Z

    return-object p0
.end method

.method public a()Lccsancom/applovin/impl/mediation/debugger/ui/d/c;
    .locals 2

    new-instance v0, Lccsancom/applovin/impl/mediation/debugger/ui/d/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c;-><init>(Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;Lccsancom/applovin/impl/mediation/debugger/ui/d/c$1;)V

    return-object v0
.end method

.method public b(I)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;
    .locals 0

    iput p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->j:I

    return-object p0
.end method

.method public b(Lccsanandroid/text/SpannedString;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->d:Lccsanandroid/text/SpannedString;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;
    .locals 1

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lccsanandroid/text/SpannedString;

    invoke-direct {v0, p1}, Lccsanandroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->b(Lccsanandroid/text/SpannedString;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object p1

    return-object p1
.end method

.method public b(Z)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;
    .locals 0

    iput-boolean p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->m:Z

    return-object p0
.end method

.method public c(I)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;
    .locals 0

    iput p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->l:I

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->f:Ljava/lang/String;

    return-object p0
.end method
