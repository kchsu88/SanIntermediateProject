.class Lccsancom/google/android/material/snackbar/Snackbar$1;
.super Ljava/lang/Object;
.source "Snackbar.java"

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/snackbar/Snackbar;->setAction(Ljava/lang/CharSequence;Lccsanandroid/view/View$OnClickListener;)Lccsancom/google/android/material/snackbar/Snackbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/snackbar/Snackbar;

.field final synthetic val$listener:Lccsanandroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/snackbar/Snackbar;Lccsanandroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/snackbar/Snackbar;

    .line 348
    iput-object p1, p0, Lccsancom/google/android/material/snackbar/Snackbar$1;->this$0:Lccsancom/google/android/material/snackbar/Snackbar;

    iput-object p2, p0, Lccsancom/google/android/material/snackbar/Snackbar$1;->val$listener:Lccsanandroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lccsanandroid/view/View;)V
    .locals 2
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 351
    iget-object v0, p0, Lccsancom/google/android/material/snackbar/Snackbar$1;->val$listener:Lccsanandroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Lccsanandroid/view/View$OnClickListener;->onClick(Lccsanandroid/view/View;)V

    .line 353
    iget-object v0, p0, Lccsancom/google/android/material/snackbar/Snackbar$1;->this$0:Lccsancom/google/android/material/snackbar/Snackbar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/snackbar/Snackbar;->dispatchDismiss(I)V

    .line 354
    return-void
.end method
