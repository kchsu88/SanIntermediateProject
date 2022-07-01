.class public Lccsancom/applovin/impl/mediation/debugger/ui/b/a/a;
.super Lccsancom/applovin/impl/mediation/debugger/ui/d/c;


# instance fields
.field private final a:Lccsancom/applovin/impl/mediation/debugger/a/b/b;

.field private final o:Lccsanandroid/content/Context;


# direct methods
.method public constructor <init>(Lccsancom/applovin/impl/mediation/debugger/a/b/b;Lccsanandroid/content/Context;)V
    .locals 1

    sget-object v0, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$b;->d:Lccsancom/applovin/impl/mediation/debugger/ui/d/c$b;

    invoke-direct {p0, v0}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c;-><init>(Lccsancom/applovin/impl/mediation/debugger/ui/d/c$b;)V

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a/a;->a:Lccsancom/applovin/impl/mediation/debugger/a/b/b;

    iput-object p2, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a/a;->o:Lccsanandroid/content/Context;

    invoke-direct {p0}, Lccsancom/applovin/impl/mediation/debugger/ui/b/a/a;->q()Lccsanandroid/text/SpannedString;

    move-result-object p1

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a/a;->d:Lccsanandroid/text/SpannedString;

    invoke-direct {p0}, Lccsancom/applovin/impl/mediation/debugger/ui/b/a/a;->r()Lccsanandroid/text/SpannedString;

    move-result-object p1

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a/a;->e:Lccsanandroid/text/SpannedString;

    return-void
.end method

.method private q()Lccsanandroid/text/SpannedString;
    .locals 4

    invoke-virtual {p0}, Lccsancom/applovin/impl/mediation/debugger/ui/b/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x1000000

    goto :goto_0

    :cond_0
    const v0, -0x777778

    :goto_0
    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a/a;->a:Lccsancom/applovin/impl/mediation/debugger/a/b/b;

    invoke-virtual {v1}, Lccsancom/applovin/impl/mediation/debugger/a/b/b;->h()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->createSpannedString(Ljava/lang/String;III)Lccsanandroid/text/SpannedString;

    move-result-object v0

    return-object v0
.end method

.method private r()Lccsanandroid/text/SpannedString;
    .locals 4

    invoke-virtual {p0}, Lccsancom/applovin/impl/mediation/debugger/ui/b/a/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lccsanandroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Lccsanandroid/text/SpannableStringBuilder;-><init>()V

    invoke-direct {p0}, Lccsancom/applovin/impl/mediation/debugger/ui/b/a/a;->s()Lccsanandroid/text/SpannedString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lccsanandroid/text/SpannableStringBuilder;

    new-instance v1, Lccsanandroid/text/SpannableString;

    const-string v2, "\n"

    invoke-direct {v1, v2}, Lccsanandroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lccsanandroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lccsanandroid/text/SpannableStringBuilder;

    invoke-direct {p0}, Lccsancom/applovin/impl/mediation/debugger/ui/b/a/a;->t()Lccsanandroid/text/SpannedString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lccsanandroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a/a;->a:Lccsancom/applovin/impl/mediation/debugger/a/b/b;

    invoke-virtual {v1}, Lccsancom/applovin/impl/mediation/debugger/a/b/b;->a()Lccsancom/applovin/impl/mediation/debugger/a/b/b$a;

    move-result-object v1

    sget-object v3, Lccsancom/applovin/impl/mediation/debugger/a/b/b$a;->c:Lccsancom/applovin/impl/mediation/debugger/a/b/b$a;

    if-ne v1, v3, :cond_1

    new-instance v1, Lccsanandroid/text/SpannableString;

    invoke-direct {v1, v2}, Lccsanandroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lccsanandroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lccsanandroid/text/SpannableStringBuilder;

    const/high16 v1, -0x10000

    const-string v2, "Invalid Integration"

    invoke-static {v2, v1}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->createListItemDetailSpannedString(Ljava/lang/String;I)Lccsanandroid/text/SpannedString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lccsanandroid/text/SpannableStringBuilder;

    :cond_1
    new-instance v1, Lccsanandroid/text/SpannedString;

    invoke-direct {v1, v0}, Lccsanandroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    return-object v1
.end method

.method private s()Lccsanandroid/text/SpannedString;
    .locals 4

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a/a;->a:Lccsancom/applovin/impl/mediation/debugger/a/b/b;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/a/b/b;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a/a;->a:Lccsancom/applovin/impl/mediation/debugger/a/b/b;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/a/b/b;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/high16 v1, -0x1000000

    if-nez v0, :cond_0

    new-instance v0, Lccsanandroid/text/SpannableStringBuilder;

    const v2, -0x777778

    const-string v3, "SDK\t\t\t\t\t  "

    invoke-static {v3, v2}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->createListItemDetailSubSpannedString(Ljava/lang/String;I)Lccsanandroid/text/SpannedString;

    move-result-object v2

    invoke-direct {v0, v2}, Lccsanandroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a/a;->a:Lccsancom/applovin/impl/mediation/debugger/a/b/b;

    invoke-virtual {v2}, Lccsancom/applovin/impl/mediation/debugger/a/b/b;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->createListItemDetailSpannedString(Ljava/lang/String;I)Lccsanandroid/text/SpannedString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lccsanandroid/text/SpannableStringBuilder;

    new-instance v1, Lccsanandroid/text/SpannedString;

    invoke-direct {v1, v0}, Lccsanandroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    return-object v1

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a/a;->a:Lccsancom/applovin/impl/mediation/debugger/a/b/b;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/a/b/b;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Retrieving SDK Version..."

    goto :goto_0

    :cond_1
    const-string v0, "SDK Found"

    :goto_0
    invoke-static {v0, v1}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->createListItemDetailSpannedString(Ljava/lang/String;I)Lccsanandroid/text/SpannedString;

    move-result-object v0

    return-object v0

    :cond_2
    const/high16 v0, -0x10000

    const-string v1, "SDK Missing"

    invoke-static {v1, v0}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->createListItemDetailSpannedString(Ljava/lang/String;I)Lccsanandroid/text/SpannedString;

    move-result-object v0

    return-object v0
.end method

.method private t()Lccsanandroid/text/SpannedString;
    .locals 5

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a/a;->a:Lccsancom/applovin/impl/mediation/debugger/a/b/b;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/a/b/b;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a/a;->a:Lccsancom/applovin/impl/mediation/debugger/a/b/b;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/a/b/b;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/high16 v1, -0x1000000

    if-nez v0, :cond_1

    new-instance v0, Lccsanandroid/text/SpannableStringBuilder;

    const v2, -0x777778

    const-string v3, "ADAPTER  "

    invoke-static {v3, v2}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->createListItemDetailSubSpannedString(Ljava/lang/String;I)Lccsanandroid/text/SpannedString;

    move-result-object v2

    invoke-direct {v0, v2}, Lccsanandroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a/a;->a:Lccsancom/applovin/impl/mediation/debugger/a/b/b;

    invoke-virtual {v2}, Lccsancom/applovin/impl/mediation/debugger/a/b/b;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->createListItemDetailSpannedString(Ljava/lang/String;I)Lccsanandroid/text/SpannedString;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsanandroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lccsanandroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a/a;->a:Lccsancom/applovin/impl/mediation/debugger/a/b/b;

    invoke-virtual {v2}, Lccsancom/applovin/impl/mediation/debugger/a/b/b;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xff

    const/16 v3, 0x7f

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lccsanandroid/graphics/Color;->rgb(III)I

    move-result v2

    const-string v3, "  LATEST  "

    invoke-static {v3, v2}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->createListItemDetailSubSpannedString(Ljava/lang/String;I)Lccsanandroid/text/SpannedString;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsanandroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lccsanandroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a/a;->a:Lccsancom/applovin/impl/mediation/debugger/a/b/b;

    invoke-virtual {v2}, Lccsancom/applovin/impl/mediation/debugger/a/b/b;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->createListItemDetailSpannedString(Ljava/lang/String;I)Lccsanandroid/text/SpannedString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lccsanandroid/text/SpannableStringBuilder;

    :cond_0
    new-instance v1, Lccsanandroid/text/SpannedString;

    invoke-direct {v1, v0}, Lccsanandroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    return-object v1

    :cond_1
    const-string v0, "Adapter Found"

    invoke-static {v0, v1}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->createListItemDetailSpannedString(Ljava/lang/String;I)Lccsanandroid/text/SpannedString;

    move-result-object v0

    return-object v0

    :cond_2
    const/high16 v0, -0x10000

    const-string v1, "Adapter Missing"

    invoke-static {v1, v0}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->createListItemDetailSpannedString(Ljava/lang/String;I)Lccsanandroid/text/SpannedString;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public b()Z
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a/a;->a:Lccsancom/applovin/impl/mediation/debugger/a/b/b;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/a/b/b;->a()Lccsancom/applovin/impl/mediation/debugger/a/b/b$a;

    move-result-object v0

    sget-object v1, Lccsancom/applovin/impl/mediation/debugger/a/b/b$a;->a:Lccsancom/applovin/impl/mediation/debugger/a/b/b$a;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()Lccsancom/applovin/impl/mediation/debugger/a/b/b;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a/a;->a:Lccsancom/applovin/impl/mediation/debugger/a/b/b;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a/a;->a:Lccsancom/applovin/impl/mediation/debugger/a/b/b;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/a/b/b;->n()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Lccsancom/applovin/sdk/R$drawable;->applovin_ic_mediation_placeholder:I

    :goto_0
    return v0
.end method

.method public f()I
    .locals 1

    invoke-virtual {p0}, Lccsancom/applovin/impl/mediation/debugger/ui/b/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lccsancom/applovin/sdk/R$drawable;->applovin_ic_disclosure_arrow:I

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c;->e()I

    move-result v0

    :goto_0
    return v0
.end method

.method public g()I
    .locals 2

    sget v0, Lccsancom/applovin/sdk/R$color;->applovin_sdk_disclosureButtonColor:I

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a/a;->o:Lccsanandroid/content/Context;

    invoke-static {v0, v1}, Lccsancom/applovin/impl/sdk/utils/e;->a(ILccsanandroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediatedNetworkListItemViewModel{text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a/a;->d:Lccsanandroid/text/SpannedString;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", detailText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a/a;->e:Lccsanandroid/text/SpannedString;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", network="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a/a;->a:Lccsancom/applovin/impl/mediation/debugger/a/b/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
