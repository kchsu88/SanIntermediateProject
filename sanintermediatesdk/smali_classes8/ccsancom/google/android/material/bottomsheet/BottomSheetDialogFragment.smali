.class public Lccsancom/google/android/material/bottomsheet/BottomSheetDialogFragment;
.super Lccsanandroidx/appcompat/app/AppCompatDialogFragment;
.source "BottomSheetDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/material/bottomsheet/BottomSheetDialogFragment$BottomSheetDismissCallback;
    }
.end annotation


# instance fields
.field private waitingForDismissAllowingStateLoss:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lccsanandroidx/appcompat/app/AppCompatDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lccsancom/google/android/material/bottomsheet/BottomSheetDialogFragment;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/google/android/material/bottomsheet/BottomSheetDialogFragment;

    .line 30
    invoke-direct {p0}, Lccsancom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissAfterAnimation()V

    return-void
.end method

.method private dismissAfterAnimation()V
    .locals 1

    .line 92
    iget-boolean v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetDialogFragment;->waitingForDismissAllowingStateLoss:Z

    if-eqz v0, :cond_0

    .line 93
    invoke-super {p0}, Lccsanandroidx/appcompat/app/AppCompatDialogFragment;->dismissAllowingStateLoss()V

    goto :goto_0

    .line 95
    :cond_0
    invoke-super {p0}, Lccsanandroidx/appcompat/app/AppCompatDialogFragment;->dismiss()V

    .line 97
    :goto_0
    return-void
.end method

.method private dismissWithAnimation(Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;Z)V
    .locals 3
    .param p2, "allowingStateLoss"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "*>;Z)V"
        }
    .end annotation

    .line 78
    .local p1, "behavior":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<*>;"
    iput-boolean p2, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetDialogFragment;->waitingForDismissAllowingStateLoss:Z

    .line 80
    invoke-virtual {p1}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 81
    invoke-direct {p0}, Lccsancom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissAfterAnimation()V

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p0}, Lccsancom/google/android/material/bottomsheet/BottomSheetDialogFragment;->getDialog()Lccsanandroid/app/Dialog;

    move-result-object v0

    instance-of v0, v0, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;

    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {p0}, Lccsancom/google/android/material/bottomsheet/BottomSheetDialogFragment;->getDialog()Lccsanandroid/app/Dialog;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v0}, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;->removeDefaultCallback()V

    .line 86
    :cond_1
    new-instance v0, Lccsancom/google/android/material/bottomsheet/BottomSheetDialogFragment$BottomSheetDismissCallback;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lccsancom/google/android/material/bottomsheet/BottomSheetDialogFragment$BottomSheetDismissCallback;-><init>(Lccsancom/google/android/material/bottomsheet/BottomSheetDialogFragment;Lccsancom/google/android/material/bottomsheet/BottomSheetDialogFragment$1;)V

    invoke-virtual {p1, v0}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->addBottomSheetCallback(Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V

    .line 87
    invoke-virtual {p1, v1}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 89
    :goto_0
    return-void
.end method

.method private tryDismissWithAnimation(Z)Z
    .locals 4
    .param p1, "allowingStateLoss"    # Z

    .line 63
    invoke-virtual {p0}, Lccsancom/google/android/material/bottomsheet/BottomSheetDialogFragment;->getDialog()Lccsanandroid/app/Dialog;

    move-result-object v0

    .line 64
    .local v0, "baseDialog":Lccsanandroid/app/Dialog;
    instance-of v1, v0, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;

    if-eqz v1, :cond_0

    .line 65
    move-object v1, v0

    check-cast v1, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 66
    .local v1, "dialog":Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;
    invoke-virtual {v1}, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;->getBehavior()Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v2

    .line 67
    .local v2, "behavior":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<*>;"
    invoke-virtual {v2}, Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;->isHideable()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;->getDismissWithAnimation()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    invoke-direct {p0, v2, p1}, Lccsancom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissWithAnimation(Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;Z)V

    .line 69
    const/4 v3, 0x1

    return v3

    .line 73
    .end local v1    # "dialog":Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;
    .end local v2    # "behavior":Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior;, "Lccsancom/google/android/material/bottomsheet/BottomSheetBehavior<*>;"
    :cond_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lccsancom/google/android/material/bottomsheet/BottomSheetDialogFragment;->tryDismissWithAnimation(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    invoke-super {p0}, Lccsanandroidx/appcompat/app/AppCompatDialogFragment;->dismiss()V

    .line 49
    :cond_0
    return-void
.end method

.method public dismissAllowingStateLoss()V
    .locals 1

    .line 53
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lccsancom/google/android/material/bottomsheet/BottomSheetDialogFragment;->tryDismissWithAnimation(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    invoke-super {p0}, Lccsanandroidx/appcompat/app/AppCompatDialogFragment;->dismissAllowingStateLoss()V

    .line 56
    :cond_0
    return-void
.end method

.method public onCreateDialog(Lccsanandroid/os/Bundle;)Lccsanandroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Lccsanandroid/os/Bundle;

    .line 41
    new-instance v0, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {p0}, Lccsancom/google/android/material/bottomsheet/BottomSheetDialogFragment;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lccsancom/google/android/material/bottomsheet/BottomSheetDialogFragment;->getTheme()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Lccsanandroid/content/Context;I)V

    return-object v0
.end method
