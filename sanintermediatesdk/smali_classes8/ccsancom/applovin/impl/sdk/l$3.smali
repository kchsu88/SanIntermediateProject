.class Lccsancom/applovin/impl/sdk/l$3;
.super Ljava/lang/Object;

# interfaces
.implements Lccsanandroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/sdk/l;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsanandroid/view/View;

.field final synthetic b:Lccsanandroid/widget/FrameLayout;

.field final synthetic c:Lccsancom/applovin/impl/sdk/l;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/sdk/l;Lccsanandroid/view/View;Lccsanandroid/widget/FrameLayout;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/l$3;->c:Lccsancom/applovin/impl/sdk/l;

    iput-object p2, p0, Lccsancom/applovin/impl/sdk/l$3;->a:Lccsanandroid/view/View;

    iput-object p3, p0, Lccsancom/applovin/impl/sdk/l$3;->b:Lccsanandroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/l$3;->a:Lccsanandroid/view/View;

    invoke-virtual {v0}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/l$3;->b:Lccsanandroid/widget/FrameLayout;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/l$3;->a:Lccsanandroid/view/View;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;)V

    :cond_0
    return-void
.end method
