.class Lccsanandroidx/appcompat/app/WindowDecorActionBar$1;
.super Lccsanandroidx/core/view/ViewPropertyAnimatorListenerAdapter;
.source "WindowDecorActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/app/WindowDecorActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/appcompat/app/WindowDecorActionBar;


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/app/WindowDecorActionBar;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/appcompat/app/WindowDecorActionBar;

    .line 135
    iput-object p1, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$1;->this$0:Lccsanandroidx/appcompat/app/WindowDecorActionBar;

    invoke-direct {p0}, Lccsanandroidx/core/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lccsanandroid/view/View;)V
    .locals 2
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 138
    iget-object v0, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$1;->this$0:Lccsanandroidx/appcompat/app/WindowDecorActionBar;

    iget-boolean v0, v0, Lccsanandroidx/appcompat/app/WindowDecorActionBar;->mContentAnimations:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$1;->this$0:Lccsanandroidx/appcompat/app/WindowDecorActionBar;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/WindowDecorActionBar;->mContentView:Lccsanandroid/view/View;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$1;->this$0:Lccsanandroidx/appcompat/app/WindowDecorActionBar;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/WindowDecorActionBar;->mContentView:Lccsanandroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setTranslationY(F)V

    .line 140
    iget-object v0, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$1;->this$0:Lccsanandroidx/appcompat/app/WindowDecorActionBar;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/WindowDecorActionBar;->mContainerView:Lccsanandroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/ActionBarContainer;->setTranslationY(F)V

    .line 142
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$1;->this$0:Lccsanandroidx/appcompat/app/WindowDecorActionBar;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/WindowDecorActionBar;->mContainerView:Lccsanandroidx/appcompat/widget/ActionBarContainer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$1;->this$0:Lccsanandroidx/appcompat/app/WindowDecorActionBar;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/WindowDecorActionBar;->mContainerView:Lccsanandroidx/appcompat/widget/ActionBarContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 144
    iget-object v0, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$1;->this$0:Lccsanandroidx/appcompat/app/WindowDecorActionBar;

    const/4 v1, 0x0

    iput-object v1, v0, Lccsanandroidx/appcompat/app/WindowDecorActionBar;->mCurrentShowAnim:Lccsanandroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    .line 145
    iget-object v0, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$1;->this$0:Lccsanandroidx/appcompat/app/WindowDecorActionBar;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/app/WindowDecorActionBar;->completeDeferredDestroyActionMode()V

    .line 146
    iget-object v0, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$1;->this$0:Lccsanandroidx/appcompat/app/WindowDecorActionBar;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/WindowDecorActionBar;->mOverlayLayout:Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$1;->this$0:Lccsanandroidx/appcompat/app/WindowDecorActionBar;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/WindowDecorActionBar;->mOverlayLayout:Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-static {v0}, Lccsanandroidx/core/view/ViewCompat;->requestApplyInsets(Lccsanandroid/view/View;)V

    .line 149
    :cond_1
    return-void
.end method
