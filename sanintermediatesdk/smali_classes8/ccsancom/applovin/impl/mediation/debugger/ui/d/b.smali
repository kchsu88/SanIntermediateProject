.class public Lccsancom/applovin/impl/mediation/debugger/ui/d/b;
.super Ljava/lang/Object;


# instance fields
.field public a:Lccsanandroid/widget/TextView;

.field public b:Lccsanandroid/widget/TextView;

.field public c:Lccsanandroid/widget/ImageView;

.field public d:Lccsanandroid/widget/ImageView;

.field private e:Lccsancom/applovin/impl/mediation/debugger/ui/d/c;

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/d/b;->f:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/d/b;->f:I

    return-void
.end method

.method public a(Lccsancom/applovin/impl/mediation/debugger/ui/d/c;)V
    .locals 5

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/d/b;->e:Lccsancom/applovin/impl/mediation/debugger/ui/d/c;

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/d/b;->a:Lccsanandroid/widget/TextView;

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c;->k()Lccsanandroid/text/SpannedString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/d/b;->a:Lccsanandroid/widget/TextView;

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c;->n()I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/d/b;->b:Lccsanandroid/widget/TextView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c;->c_()Lccsanandroid/text/SpannedString;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/d/b;->b:Lccsanandroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Lccsanandroid/widget/TextView;->setTypeface(Lccsanandroid/graphics/Typeface;I)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/d/b;->b:Lccsanandroid/widget/TextView;

    invoke-virtual {v0, v2}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/d/b;->b:Lccsanandroid/widget/TextView;

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c;->c_()Lccsanandroid/text/SpannedString;

    move-result-object v4

    invoke-virtual {v0, v4}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/d/b;->b:Lccsanandroid/widget/TextView;

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c;->c()I

    move-result v4

    invoke-virtual {v0, v4}, Lccsanandroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c;->d_()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/d/b;->b:Lccsanandroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lccsanandroid/widget/TextView;->setTypeface(Lccsanandroid/graphics/Typeface;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/d/b;->b:Lccsanandroid/widget/TextView;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/d/b;->c:Lccsanandroid/widget/ImageView;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c;->e()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/d/b;->c:Lccsanandroid/widget/ImageView;

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c;->e()I

    move-result v3

    invoke-virtual {v0, v3}, Lccsanandroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/d/b;->c:Lccsanandroid/widget/ImageView;

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c;->o()I

    move-result v3

    invoke-virtual {v0, v3}, Lccsanandroid/widget/ImageView;->setColorFilter(I)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/d/b;->c:Lccsanandroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/d/b;->c:Lccsanandroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/d/b;->d:Lccsanandroid/widget/ImageView;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c;->f()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/d/b;->d:Lccsanandroid/widget/ImageView;

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/d/b;->d:Lccsanandroid/widget/ImageView;

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c;->g()I

    move-result p1

    invoke-virtual {v0, p1}, Lccsanandroid/widget/ImageView;->setColorFilter(I)V

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/d/b;->d:Lccsanandroid/widget/ImageView;

    invoke-virtual {p1, v2}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/d/b;->d:Lccsanandroid/widget/ImageView;

    invoke-virtual {p1, v1}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method public b()Lccsancom/applovin/impl/mediation/debugger/ui/d/c;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/d/b;->e:Lccsancom/applovin/impl/mediation/debugger/ui/d/c;

    return-object v0
.end method
