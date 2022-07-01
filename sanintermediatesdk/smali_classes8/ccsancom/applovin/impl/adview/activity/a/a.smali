.class abstract Lccsancom/applovin/impl/adview/activity/a/a;
.super Ljava/lang/Object;


# instance fields
.field final a:Lccsancom/applovin/impl/sdk/k;

.field final b:Lccsancom/applovin/adview/AppLovinFullscreenActivity;

.field final c:Lccsancom/applovin/impl/sdk/a/g;

.field final d:Lccsanandroid/view/ViewGroup;

.field final e:Lccsanandroid/widget/FrameLayout$LayoutParams;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/sdk/a/g;Lccsancom/applovin/adview/AppLovinFullscreenActivity;Lccsancom/applovin/impl/sdk/k;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lccsanandroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/16 v2, 0x11

    invoke-direct {v0, v1, v1, v2}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput-object v0, p0, Lccsancom/applovin/impl/adview/activity/a/a;->e:Lccsanandroid/widget/FrameLayout$LayoutParams;

    iput-object p1, p0, Lccsancom/applovin/impl/adview/activity/a/a;->c:Lccsancom/applovin/impl/sdk/a/g;

    iput-object p3, p0, Lccsancom/applovin/impl/adview/activity/a/a;->a:Lccsancom/applovin/impl/sdk/k;

    iput-object p2, p0, Lccsancom/applovin/impl/adview/activity/a/a;->b:Lccsancom/applovin/adview/AppLovinFullscreenActivity;

    new-instance p1, Lccsanandroid/widget/FrameLayout;

    invoke-direct {p1, p2}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;)V

    iput-object p1, p0, Lccsancom/applovin/impl/adview/activity/a/a;->d:Lccsanandroid/view/ViewGroup;

    const/high16 p2, -0x1000000

    invoke-virtual {p1, p2}, Lccsanandroid/view/ViewGroup;->setBackgroundColor(I)V

    invoke-virtual {p1, v0}, Lccsanandroid/view/ViewGroup;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method a(Lccsancom/applovin/impl/sdk/a/g$c;ILccsancom/applovin/impl/adview/n;)V
    .locals 4

    iget v0, p1, Lccsancom/applovin/impl/sdk/a/g$c;->a:I

    iget v1, p1, Lccsancom/applovin/impl/sdk/a/g$c;->e:I

    iget v2, p1, Lccsancom/applovin/impl/sdk/a/g$c;->d:I

    invoke-virtual {p3, v0, v1, v2, p2}, Lccsancom/applovin/impl/adview/n;->a(IIII)V

    new-instance v0, Lccsanandroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p3}, Lccsancom/applovin/impl/adview/n;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    iget v1, p1, Lccsancom/applovin/impl/sdk/a/g$c;->c:I

    iget v2, p1, Lccsancom/applovin/impl/sdk/a/g$c;->b:I

    iget p1, p1, Lccsancom/applovin/impl/sdk/a/g$c;->c:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lccsanandroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iput p2, v0, Lccsanandroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/a/a;->d:Lccsanandroid/view/ViewGroup;

    invoke-virtual {p1, p3, v0}, Lccsanandroid/view/ViewGroup;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
