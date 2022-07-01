.class Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Lccsanandroidx/appcompat/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionModeCallbackWrapperV9"
.end annotation


# instance fields
.field private mWrapped:Lccsanandroidx/appcompat/view/ActionMode$Callback;

.field final synthetic this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method public constructor <init>(Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;Lccsanandroidx/appcompat/view/ActionMode$Callback;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;
    .param p2, "wrapped"    # Lccsanandroidx/appcompat/view/ActionMode$Callback;

    .line 2672
    iput-object p1, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2673
    iput-object p2, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->mWrapped:Lccsanandroidx/appcompat/view/ActionMode$Callback;

    .line 2674
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Lccsanandroidx/appcompat/view/ActionMode;Lccsanandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "mode"    # Lccsanandroidx/appcompat/view/ActionMode;
    .param p2, "item"    # Lccsanandroid/view/MenuItem;

    .line 2689
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->mWrapped:Lccsanandroidx/appcompat/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Lccsanandroidx/appcompat/view/ActionMode$Callback;->onActionItemClicked(Lccsanandroidx/appcompat/view/ActionMode;Lccsanandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Lccsanandroidx/appcompat/view/ActionMode;Lccsanandroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Lccsanandroidx/appcompat/view/ActionMode;
    .param p2, "menu"    # Lccsanandroid/view/Menu;

    .line 2678
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->mWrapped:Lccsanandroidx/appcompat/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Lccsanandroidx/appcompat/view/ActionMode$Callback;->onCreateActionMode(Lccsanandroidx/appcompat/view/ActionMode;Lccsanandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroyActionMode(Lccsanandroidx/appcompat/view/ActionMode;)V
    .locals 3
    .param p1, "mode"    # Lccsanandroidx/appcompat/view/ActionMode;

    .line 2694
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->mWrapped:Lccsanandroidx/appcompat/view/ActionMode$Callback;

    invoke-interface {v0, p1}, Lccsanandroidx/appcompat/view/ActionMode$Callback;->onDestroyActionMode(Lccsanandroidx/appcompat/view/ActionMode;)V

    .line 2695
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;->mActionModePopup:Lccsanandroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 2696
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;->mWindow:Lccsanandroid/view/Window;

    invoke-virtual {v0}, Lccsanandroid/view/Window;->getDecorView()Lccsanandroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v1, v1, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;->mShowActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2699
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Lccsanandroidx/appcompat/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    .line 2700
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;->endOnGoingFadeAnimation()V

    .line 2701
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v1, v0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;->mActionModeView:Lccsanandroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v1}, Lccsanandroidx/core/view/ViewCompat;->animate(Lccsanandroid/view/View;)Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    iput-object v1, v0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;->mFadeAnim:Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;

    .line 2702
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;->mFadeAnim:Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;

    new-instance v1, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9$1;

    invoke-direct {v1, p0}, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9$1;-><init>(Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;)V

    invoke-virtual {v0, v1}, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Lccsanandroidx/core/view/ViewPropertyAnimatorListener;)Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;

    .line 2718
    :cond_1
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;->mAppCompatCallback:Lccsanandroidx/appcompat/app/AppCompatCallback;

    if-eqz v0, :cond_2

    .line 2719
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;->mAppCompatCallback:Lccsanandroidx/appcompat/app/AppCompatCallback;

    iget-object v1, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v1, v1, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;->mActionMode:Lccsanandroidx/appcompat/view/ActionMode;

    invoke-interface {v0, v1}, Lccsanandroidx/appcompat/app/AppCompatCallback;->onSupportActionModeFinished(Lccsanandroidx/appcompat/view/ActionMode;)V

    .line 2721
    :cond_2
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    const/4 v1, 0x0

    iput-object v1, v0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;->mActionMode:Lccsanandroidx/appcompat/view/ActionMode;

    .line 2722
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;->mSubDecor:Lccsanandroid/view/ViewGroup;

    invoke-static {v0}, Lccsanandroidx/core/view/ViewCompat;->requestApplyInsets(Lccsanandroid/view/View;)V

    .line 2723
    return-void
.end method

.method public onPrepareActionMode(Lccsanandroidx/appcompat/view/ActionMode;Lccsanandroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Lccsanandroidx/appcompat/view/ActionMode;
    .param p2, "menu"    # Lccsanandroid/view/Menu;

    .line 2683
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;->mSubDecor:Lccsanandroid/view/ViewGroup;

    invoke-static {v0}, Lccsanandroidx/core/view/ViewCompat;->requestApplyInsets(Lccsanandroid/view/View;)V

    .line 2684
    iget-object v0, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$ActionModeCallbackWrapperV9;->mWrapped:Lccsanandroidx/appcompat/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Lccsanandroidx/appcompat/view/ActionMode$Callback;->onPrepareActionMode(Lccsanandroidx/appcompat/view/ActionMode;Lccsanandroid/view/Menu;)Z

    move-result v0

    return v0
.end method
