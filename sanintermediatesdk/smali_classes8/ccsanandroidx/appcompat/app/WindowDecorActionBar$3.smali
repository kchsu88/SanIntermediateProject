.class Lccsanandroidx/appcompat/app/WindowDecorActionBar$3;
.super Ljava/lang/Object;
.source "WindowDecorActionBar.java"

# interfaces
.implements Lccsanandroidx/core/view/ViewPropertyAnimatorUpdateListener;


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

    .line 161
    iput-object p1, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$3;->this$0:Lccsanandroidx/appcompat/app/WindowDecorActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lccsanandroid/view/View;)V
    .locals 2
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 164
    iget-object v0, p0, Lccsanandroidx/appcompat/app/WindowDecorActionBar$3;->this$0:Lccsanandroidx/appcompat/app/WindowDecorActionBar;

    iget-object v0, v0, Lccsanandroidx/appcompat/app/WindowDecorActionBar;->mContainerView:Lccsanandroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ActionBarContainer;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    .line 165
    .local v0, "parent":Lccsanandroid/view/ViewParent;
    move-object v1, v0

    check-cast v1, Lccsanandroid/view/View;

    invoke-virtual {v1}, Lccsanandroid/view/View;->invalidate()V

    .line 166
    return-void
.end method
