.class Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$1;
.super Lccsanandroid/animation/AnimatorListenerAdapter;
.source "FloatingActionButtonImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->hide(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private cancelled:Z

.field final synthetic this$0:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

.field final synthetic val$fromUser:Z

.field final synthetic val$listener:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;ZLccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    .line 434
    iput-object p1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$1;->this$0:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    iput-boolean p2, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$1;->val$fromUser:Z

    iput-object p3, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$1;->val$listener:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;

    invoke-direct {p0}, Lccsanandroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lccsanandroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Lccsanandroid/animation/Animator;

    .line 448
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$1;->cancelled:Z

    .line 449
    return-void
.end method

.method public onAnimationEnd(Lccsanandroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Lccsanandroid/animation/Animator;

    .line 453
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$1;->this$0:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->access$002(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;I)I

    .line 454
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$1;->this$0:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->access$102(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;Lccsanandroid/animation/Animator;)Lccsanandroid/animation/Animator;

    .line 456
    iget-boolean v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$1;->cancelled:Z

    if-nez v0, :cond_1

    .line 457
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$1;->this$0:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    iget-object v0, v0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-boolean v1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$1;->val$fromUser:Z

    if-eqz v1, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    :goto_0
    invoke-virtual {v0, v2, v1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->internalSetVisibility(IZ)V

    .line 458
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$1;->val$listener:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;

    if-eqz v0, :cond_1

    .line 459
    invoke-interface {v0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;->onHidden()V

    .line 462
    :cond_1
    return-void
.end method

.method public onAnimationStart(Lccsanandroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Lccsanandroid/animation/Animator;

    .line 439
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$1;->this$0:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    iget-object v0, v0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-boolean v1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$1;->val$fromUser:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->internalSetVisibility(IZ)V

    .line 441
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$1;->this$0:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->access$002(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;I)I

    .line 442
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$1;->this$0:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    invoke-static {v0, p1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->access$102(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;Lccsanandroid/animation/Animator;)Lccsanandroid/animation/Animator;

    .line 443
    iput-boolean v2, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$1;->cancelled:Z

    .line 444
    return-void
.end method
