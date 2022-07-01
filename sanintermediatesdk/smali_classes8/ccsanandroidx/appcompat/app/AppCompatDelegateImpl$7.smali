.class Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$7;
.super Lccsanandroidx/core/view/ViewPropertyAnimatorListenerAdapter;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;->startSupportActionModeFromWindow(Lccsanandroidx/appcompat/view/ActionMode$Callback;)Lccsanandroidx/appcompat/view/ActionMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    .line 1332
    iput-object p1, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$7;->this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-direct {p0}, Lccsanandroidx/core/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lccsanandroid/view/View;)V
    .locals 2
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 1345
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$7;->this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Lccsanandroidx/appcompat/widget/ActionBarContextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->setAlpha(F)V

    .line 1346
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$7;->this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;->mFadeAnim:Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Lccsanandroidx/core/view/ViewPropertyAnimatorListener;)Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;

    .line 1347
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$7;->this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    iput-object v1, v0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;->mFadeAnim:Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;

    .line 1348
    return-void
.end method

.method public onAnimationStart(Lccsanandroid/view/View;)V
    .locals 2
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 1335
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$7;->this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Lccsanandroidx/appcompat/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 1336
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$7;->this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Lccsanandroidx/appcompat/widget/ActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 1338
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$7;->this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Lccsanandroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lccsanandroid/view/View;

    if-eqz v0, :cond_0

    .line 1339
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$7;->this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Lccsanandroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    invoke-static {v0}, Lccsanandroidx/core/view/ViewCompat;->requestApplyInsets(Lccsanandroid/view/View;)V

    .line 1341
    :cond_0
    return-void
.end method
