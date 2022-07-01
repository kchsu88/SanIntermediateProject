.class Lccsanandroidx/appcompat/app/WindowDecorActionBar$2;
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

    .line 152
    iput-object p1, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$2;->this$0:Lccsanandroidx/appcompat/app/WindowDecorActionBar;

    invoke-direct {p0}, Lccsanandroidx/core/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lccsanandroid/view/View;)V
    .locals 2
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 155
    iget-object v0, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$2;->this$0:Lccsanandroidx/appcompat/app/WindowDecorActionBar;

    const/4 v1, 0x0

    iput-object v1, v0, Lccsanandroidx/appcompat/app/WindowDecorActionBar;->mCurrentShowAnim:Lccsanandroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    .line 156
    iget-object v0, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$2;->this$0:Lccsanandroidx/appcompat/app/WindowDecorActionBar;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/WindowDecorActionBar;->mContainerView:Lccsanandroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ActionBarContainer;->requestLayout()V

    .line 157
    return-void
.end method
