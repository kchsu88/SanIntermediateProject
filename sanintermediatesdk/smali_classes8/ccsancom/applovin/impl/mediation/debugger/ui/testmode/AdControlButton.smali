.class public Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;
.super Lccsanandroid/widget/RelativeLayout;

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$a;,
        Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;
    }
.end annotation


# instance fields
.field private final a:Lccsanandroid/widget/Button;

.field private final b:Lccsancom/applovin/impl/adview/a;

.field private c:Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;

.field private d:Lccsancom/applovin/mediation/MaxAdFormat;

.field private e:Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$a;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Lccsanandroid/widget/RelativeLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    new-instance p2, Lccsanandroid/widget/Button;

    invoke-virtual {p0}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->getContext()Lccsanandroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lccsanandroid/widget/Button;-><init>(Lccsanandroid/content/Context;)V

    iput-object p2, p0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->a:Lccsanandroid/widget/Button;

    new-instance p3, Lccsancom/applovin/impl/adview/a;

    invoke-virtual {p0}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    const/16 v1, 0x14

    const v2, 0x1010079

    invoke-direct {p3, v0, v1, v2}, Lccsancom/applovin/impl/adview/a;-><init>(Lccsanandroid/content/Context;II)V

    iput-object p3, p0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->b:Lccsancom/applovin/impl/adview/a;

    sget-object v0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;->a:Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;

    iput-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->c:Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->setBackgroundColor(I)V

    new-instance v0, Lccsanandroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;)V

    new-instance p1, Lccsanandroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/16 v2, 0x11

    invoke-direct {p1, v1, v1, v2}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2, v1}, Lccsanandroid/widget/Button;->setTextColor(I)V

    invoke-virtual {p2, p0}, Lccsanandroid/widget/Button;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    new-instance p1, Lccsanandroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v1, v1, v2}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, p2, p1}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p3, v1}, Lccsancom/applovin/impl/adview/a;->setColor(I)V

    new-instance p1, Lccsanandroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v1, v1, v2}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, p3, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    sget-object p1, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;->a:Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->a(Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;)V

    return-void
.end method

.method private a(Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;)V
    .locals 2

    sget-object v0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;->b:Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->setEnabled(Z)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->b:Lccsancom/applovin/impl/adview/a;

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/a;->a()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->setEnabled(Z)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->b:Lccsancom/applovin/impl/adview/a;

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/a;->b()V

    :goto_0
    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->a:Lccsanandroid/widget/Button;

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->b(Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->a:Lccsanandroid/widget/Button;

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->c(Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;)I

    move-result p1

    invoke-virtual {v0, p1}, Lccsanandroid/widget/Button;->setBackgroundColor(I)V

    return-void
.end method

.method private b(Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;->a:Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;

    if-ne v0, p1, :cond_0

    const-string p1, "Load"

    return-object p1

    :cond_0
    sget-object v0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;->b:Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;

    if-ne v0, p1, :cond_1

    const-string p1, ""

    return-object p1

    :cond_1
    const-string p1, "Show"

    return-object p1
.end method

.method private c(Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;)I
    .locals 1

    sget-object v0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;->a:Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;

    if-ne v0, p1, :cond_0

    :goto_0
    sget p1, Lccsancom/applovin/sdk/R$color;->applovin_sdk_brand_color:I

    :goto_1
    invoke-virtual {p0}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lccsancom/applovin/impl/sdk/utils/e;->a(ILccsanandroid/content/Context;)I

    move-result p1

    return p1

    :cond_0
    sget-object v0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;->b:Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;

    if-ne v0, p1, :cond_1

    goto :goto_0

    :cond_1
    sget p1, Lccsancom/applovin/sdk/R$color;->applovin_sdk_adControlbutton_brightBlueColor:I

    goto :goto_1
.end method


# virtual methods
.method public getControlState()Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->c:Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;

    return-object v0
.end method

.method public getFormat()Lccsancom/applovin/mediation/MaxAdFormat;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->d:Lccsancom/applovin/mediation/MaxAdFormat;

    return-object v0
.end method

.method public onClick(Lccsanandroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->e:Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$a;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$a;->onClick(Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;)V

    :cond_0
    return-void
.end method

.method public setControlState(Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;)V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->c:Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;

    if-eq v0, p1, :cond_0

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->a(Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;)V

    :cond_0
    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->c:Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;

    return-void
.end method

.method public setFormat(Lccsancom/applovin/mediation/MaxAdFormat;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->d:Lccsancom/applovin/mediation/MaxAdFormat;

    return-void
.end method

.method public setOnClickListener(Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$a;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->e:Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$a;

    return-void
.end method
