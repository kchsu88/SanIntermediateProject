.class Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$9;
.super Lccsanandroid/animation/AnimatorListenerAdapter;
.source "DropdownMenuEndIconDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->initAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    .line 469
    iput-object p1, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$9;->this$0:Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    invoke-direct {p0}, Lccsanandroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lccsanandroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Lccsanandroid/animation/Animator;

    .line 472
    iget-object v0, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$9;->this$0:Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    iget-object v0, v0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->endIconView:Lccsancom/google/android/material/internal/CheckableImageButton;

    iget-object v1, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$9;->this$0:Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    invoke-static {v1}, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->access$1500(Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    .line 473
    iget-object v0, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$9;->this$0:Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    invoke-static {v0}, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->access$1600(Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;)Lccsanandroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/animation/ValueAnimator;->start()V

    .line 474
    return-void
.end method
