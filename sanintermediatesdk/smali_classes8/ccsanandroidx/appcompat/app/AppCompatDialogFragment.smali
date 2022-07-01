.class public Lccsanandroidx/appcompat/app/AppCompatDialogFragment;
.super Lccsanandroidx/fragment/app/DialogFragment;
.source "AppCompatDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lccsanandroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Lccsanandroid/os/Bundle;)Lccsanandroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Lccsanandroid/os/Bundle;

    .line 43
    new-instance v0, Lccsanandroidx/appcompat/app/AppCompatDialog;

    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/AppCompatDialogFragment;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lccsanandroidx/appcompat/app/AppCompatDialogFragment;->getTheme()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lccsanandroidx/appcompat/app/AppCompatDialog;-><init>(Lccsanandroid/content/Context;I)V

    return-object v0
.end method

.method public setupDialog(Lccsanandroid/app/Dialog;I)V
    .locals 3
    .param p1, "dialog"    # Lccsanandroid/app/Dialog;
    .param p2, "style"    # I

    .line 50
    instance-of v0, p1, Lccsanandroidx/appcompat/app/AppCompatDialog;

    if-eqz v0, :cond_0

    .line 52
    move-object v0, p1

    check-cast v0, Lccsanandroidx/appcompat/app/AppCompatDialog;

    .line 53
    .local v0, "acd":Lccsanandroidx/appcompat/app/AppCompatDialog;
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 55
    :pswitch_0
    invoke-virtual {p1}, Lccsanandroid/app/Dialog;->getWindow()Lccsanandroid/view/Window;

    move-result-object v1

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Lccsanandroid/view/Window;->addFlags(I)V

    .line 61
    :pswitch_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/app/AppCompatDialog;->supportRequestWindowFeature(I)Z

    .line 63
    .end local v0    # "acd":Lccsanandroidx/appcompat/app/AppCompatDialog;
    :goto_0
    goto :goto_1

    .line 65
    :cond_0
    invoke-super {p0, p1, p2}, Lccsanandroidx/fragment/app/DialogFragment;->setupDialog(Lccsanandroid/app/Dialog;I)V

    .line 67
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
