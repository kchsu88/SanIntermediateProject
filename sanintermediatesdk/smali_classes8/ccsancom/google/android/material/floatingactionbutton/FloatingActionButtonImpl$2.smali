.class Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$2;
.super Lccsanandroid/animation/AnimatorListenerAdapter;
.source "FloatingActionButtonImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->show(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

.field final synthetic val$fromUser:Z

.field final synthetic val$listener:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;ZLccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    .line 505
    iput-object p1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$2;->this$0:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    iput-boolean p2, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$2;->val$fromUser:Z

    iput-object p3, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$2;->val$listener:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;

    invoke-direct {p0}, Lccsanandroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lccsanandroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Lccsanandroid/animation/Animator;

    .line 516
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$2;->this$0:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->access$002(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;I)I

    .line 517
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$2;->this$0:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->access$102(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;Lccsanandroid/animation/Animator;)Lccsanandroid/animation/Animator;

    .line 519
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$2;->val$listener:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;

    if-eqz v0, :cond_0

    .line 520
    invoke-interface {v0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$InternalVisibilityChangedListener;->onShown()V

    .line 522
    :cond_0
    return-void
.end method

.method public onAnimationStart(Lccsanandroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Lccsanandroid/animation/Animator;

    .line 508
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$2;->this$0:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    iget-object v0, v0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->view:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-boolean v1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$2;->val$fromUser:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->internalSetVisibility(IZ)V

    .line 510
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$2;->this$0:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->access$002(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;I)I

    .line 511
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl$2;->this$0:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;

    invoke-static {v0, p1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->access$102(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;Lccsanandroid/animation/Animator;)Lccsanandroid/animation/Animator;

    .line 512
    return-void
.end method
