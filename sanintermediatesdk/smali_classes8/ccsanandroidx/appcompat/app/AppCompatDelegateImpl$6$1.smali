.class Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$6$1;
.super Lccsanandroidx/core/view/ViewPropertyAnimatorListenerAdapter;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$6;


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$6;)V
    .locals 0
    .param p1, "this$1"    # Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$6;

    .line 1290
    iput-object p1, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$6$1;->this$1:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$6;

    invoke-direct {p0}, Lccsanandroidx/core/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lccsanandroid/view/View;)V
    .locals 2
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 1298
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$6$1;->this$1:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$6;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$6;->this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Lccsanandroidx/appcompat/widget/ActionBarContextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->setAlpha(F)V

    .line 1299
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$6$1;->this$1:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$6;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$6;->this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;->mFadeAnim:Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Lccsanandroidx/core/view/ViewPropertyAnimatorListener;)Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;

    .line 1300
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$6$1;->this$1:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$6;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$6;->this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    iput-object v1, v0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;->mFadeAnim:Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;

    .line 1301
    return-void
.end method

.method public onAnimationStart(Lccsanandroid/view/View;)V
    .locals 2
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 1293
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$6$1;->this$1:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$6;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$6;->this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Lccsanandroidx/appcompat/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 1294
    return-void
.end method
