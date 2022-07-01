.class Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9$1;
.super Lccsanandroidx/core/view/ViewPropertyAnimatorListenerAdapter;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->onDestroyActionMode(Lccsanandroidx/appcompat/view/ActionMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;)V
    .locals 0
    .param p1, "this$1"    # Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;

    .line 2702
    iput-object p1, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9$1;->this$1:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;

    invoke-direct {p0}, Lccsanandroidx/core/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lccsanandroid/view/View;)V
    .locals 2
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 2705
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9$1;->this$1:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Lccsanandroidx/appcompat/widget/ActionBarContextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 2706
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9$1;->this$1:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;->mActionModePopup:Lccsanandroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 2707
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9$1;->this$1:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;->mActionModePopup:Lccsanandroid/widget/PopupWindow;

    invoke-virtual {v0}, Lccsanandroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 2708
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9$1;->this$1:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Lccsanandroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lccsanandroid/view/View;

    if-eqz v0, :cond_1

    .line 2709
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9$1;->this$1:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Lccsanandroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    invoke-static {v0}, Lccsanandroidx/core/view/ViewCompat;->requestApplyInsets(Lccsanandroid/view/View;)V

    .line 2711
    :cond_1
    :goto_0
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9$1;->this$1:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Lccsanandroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ActionBarContextView;->removeAllViews()V

    .line 2712
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9$1;->this$1:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;->mFadeAnim:Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Lccsanandroidx/core/view/ViewPropertyAnimatorListener;)Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;

    .line 2713
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9$1;->this$1:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    iput-object v1, v0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;->mFadeAnim:Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;

    .line 2714
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9$1;->this$1:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;->mSubDecor:Lccsanandroid/view/ViewGroup;

    invoke-static {v0}, Lccsanandroidx/core/view/ViewCompat;->requestApplyInsets(Lccsanandroid/view/View;)V

    .line 2715
    return-void
.end method
