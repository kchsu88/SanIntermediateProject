.class final Lccsancom/google/android/material/internal/ViewUtils$1;
.super Ljava/lang/Object;
.source "ViewUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/internal/ViewUtils;->requestFocusAndShowKeyboard(Lccsanandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$view:Lccsanandroid/view/View;


# direct methods
.method constructor <init>(Lccsanandroid/view/View;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lccsancom/google/android/material/internal/ViewUtils$1;->val$view:Lccsanandroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 91
    iget-object v0, p0, Lccsancom/google/android/material/internal/ViewUtils$1;->val$view:Lccsanandroid/view/View;

    .line 93
    invoke-virtual {v0}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/inputmethod/InputMethodManager;

    .line 94
    .local v0, "inputMethodManager":Lccsanandroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lccsancom/google/android/material/internal/ViewUtils$1;->val$view:Lccsanandroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lccsanandroid/view/inputmethod/InputMethodManager;->showSoftInput(Lccsanandroid/view/View;I)Z

    .line 95
    return-void
.end method
