.class Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate$7;
.super Lccsanandroid/animation/AnimatorListenerAdapter;
.source "ClearTextEndIconDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;->initAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;

    .line 173
    iput-object p1, p0, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate$7;->this$0:Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;

    invoke-direct {p0}, Lccsanandroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lccsanandroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Lccsanandroid/animation/Animator;

    .line 176
    iget-object v0, p0, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate$7;->this$0:Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;

    iget-object v0, v0, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;->textInputLayout:Lccsancom/google/android/material/textfield/TextInputLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    .line 177
    return-void
.end method
