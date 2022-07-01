.class public Lccsancom/applovin/impl/adview/n;
.super Lccsanandroid/widget/FrameLayout;


# instance fields
.field private final a:Lccsancom/applovin/impl/adview/j;


# direct methods
.method public constructor <init>(Lccsancom/applovin/impl/adview/j$a;Lccsanandroid/app/Activity;)V
    .locals 1

    invoke-direct {p0, p2}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/adview/n;->setBackgroundColor(I)V

    invoke-static {p1, p2}, Lccsancom/applovin/impl/adview/j;->a(Lccsancom/applovin/impl/adview/j$a;Lccsanandroid/content/Context;)Lccsancom/applovin/impl/adview/j;

    move-result-object p1

    iput-object p1, p0, Lccsancom/applovin/impl/adview/n;->a:Lccsancom/applovin/impl/adview/j;

    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/adview/n;->addView(Lccsanandroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a(IIII)V
    .locals 1

    add-int/2addr p2, p1

    add-int/2addr p2, p3

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/n;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    iput p2, v0, Lccsanandroid/view/ViewGroup$LayoutParams;->height:I

    iput p2, v0, Lccsanandroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    :cond_0
    new-instance v0, Lccsanandroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p2, p2}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/adview/n;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    new-instance p2, Lccsanandroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, p1, p1, p4}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p3, p3, p4}, Lccsanandroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object p3, p0, Lccsancom/applovin/impl/adview/n;->a:Lccsancom/applovin/impl/adview/j;

    invoke-virtual {p3, p2}, Lccsancom/applovin/impl/adview/j;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lccsancom/applovin/impl/adview/n;->a:Lccsancom/applovin/impl/adview/j;

    invoke-virtual {p2, p1}, Lccsancom/applovin/impl/adview/j;->a(I)V

    return-void
.end method
