.class Lccsanandroidx/fragment/app/DialogFragment$1;
.super Ljava/lang/Object;
.source "DialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/fragment/app/DialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/fragment/app/DialogFragment;


# direct methods
.method constructor <init>(Lccsanandroidx/fragment/app/DialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/fragment/app/DialogFragment;

    .line 93
    iput-object p1, p0, Lccsanandroidx/fragment/app/DialogFragment$1;->this$0:Lccsanandroidx/fragment/app/DialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 96
    iget-object v0, p0, Lccsanandroidx/fragment/app/DialogFragment$1;->this$0:Lccsanandroidx/fragment/app/DialogFragment;

    iget-object v0, v0, Lccsanandroidx/fragment/app/DialogFragment;->mDialog:Lccsanandroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lccsanandroidx/fragment/app/DialogFragment$1;->this$0:Lccsanandroidx/fragment/app/DialogFragment;

    iget-object v1, v0, Lccsanandroidx/fragment/app/DialogFragment;->mDialog:Lccsanandroid/app/Dialog;

    invoke-virtual {v0, v1}, Lccsanandroidx/fragment/app/DialogFragment;->onDismiss(Lccsanandroid/content/DialogInterface;)V

    .line 99
    :cond_0
    return-void
.end method
