.class Lccsancom/google/android/material/bottomappbar/BottomAppBar$7;
.super Lccsanandroid/animation/AnimatorListenerAdapter;
.source "BottomAppBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/bottomappbar/BottomAppBar;->createMenuViewTranslationAnimation(IZLjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public cancelled:Z

.field final synthetic this$0:Lccsancom/google/android/material/bottomappbar/BottomAppBar;

.field final synthetic val$actionMenuView:Lccsanandroidx/appcompat/widget/ActionMenuView;

.field final synthetic val$targetAttached:Z

.field final synthetic val$targetMode:I


# direct methods
.method constructor <init>(Lccsancom/google/android/material/bottomappbar/BottomAppBar;Lccsanandroidx/appcompat/widget/ActionMenuView;IZ)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/bottomappbar/BottomAppBar;

    .line 725
    iput-object p1, p0, Lccsancom/google/android/material/bottomappbar/BottomAppBar$7;->this$0:Lccsancom/google/android/material/bottomappbar/BottomAppBar;

    iput-object p2, p0, Lccsancom/google/android/material/bottomappbar/BottomAppBar$7;->val$actionMenuView:Lccsanandroidx/appcompat/widget/ActionMenuView;

    iput p3, p0, Lccsancom/google/android/material/bottomappbar/BottomAppBar$7;->val$targetMode:I

    iput-boolean p4, p0, Lccsancom/google/android/material/bottomappbar/BottomAppBar$7;->val$targetAttached:Z

    invoke-direct {p0}, Lccsanandroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lccsanandroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Lccsanandroid/animation/Animator;

    .line 730
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/google/android/material/bottomappbar/BottomAppBar$7;->cancelled:Z

    .line 731
    return-void
.end method

.method public onAnimationEnd(Lccsanandroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Lccsanandroid/animation/Animator;

    .line 735
    iget-boolean v0, p0, Lccsancom/google/android/material/bottomappbar/BottomAppBar$7;->cancelled:Z

    if-nez v0, :cond_1

    .line 736
    iget-object v0, p0, Lccsancom/google/android/material/bottomappbar/BottomAppBar$7;->this$0:Lccsancom/google/android/material/bottomappbar/BottomAppBar;

    invoke-static {v0}, Lccsancom/google/android/material/bottomappbar/BottomAppBar;->access$2000(Lccsancom/google/android/material/bottomappbar/BottomAppBar;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 737
    .local v0, "replaced":Z
    :goto_0
    iget-object v1, p0, Lccsancom/google/android/material/bottomappbar/BottomAppBar$7;->this$0:Lccsancom/google/android/material/bottomappbar/BottomAppBar;

    invoke-static {v1}, Lccsancom/google/android/material/bottomappbar/BottomAppBar;->access$2000(Lccsancom/google/android/material/bottomappbar/BottomAppBar;)I

    move-result v2

    invoke-virtual {v1, v2}, Lccsancom/google/android/material/bottomappbar/BottomAppBar;->replaceMenu(I)V

    .line 738
    iget-object v1, p0, Lccsancom/google/android/material/bottomappbar/BottomAppBar$7;->this$0:Lccsancom/google/android/material/bottomappbar/BottomAppBar;

    iget-object v2, p0, Lccsancom/google/android/material/bottomappbar/BottomAppBar$7;->val$actionMenuView:Lccsanandroidx/appcompat/widget/ActionMenuView;

    iget v3, p0, Lccsancom/google/android/material/bottomappbar/BottomAppBar$7;->val$targetMode:I

    iget-boolean v4, p0, Lccsancom/google/android/material/bottomappbar/BottomAppBar$7;->val$targetAttached:Z

    invoke-static {v1, v2, v3, v4, v0}, Lccsancom/google/android/material/bottomappbar/BottomAppBar;->access$2100(Lccsancom/google/android/material/bottomappbar/BottomAppBar;Lccsanandroidx/appcompat/widget/ActionMenuView;IZZ)V

    .line 740
    .end local v0    # "replaced":Z
    :cond_1
    return-void
.end method
