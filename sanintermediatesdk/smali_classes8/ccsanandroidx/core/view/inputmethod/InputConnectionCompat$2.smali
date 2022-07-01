.class Lccsanandroidx/core/view/inputmethod/InputConnectionCompat$2;
.super Lccsanandroid/view/inputmethod/InputConnectionWrapper;
.source "InputConnectionCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/core/view/inputmethod/InputConnectionCompat;->createWrapper(Lccsanandroid/view/inputmethod/InputConnection;Lccsanandroid/view/inputmethod/EditorInfo;Lccsanandroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)Lccsanandroid/view/inputmethod/InputConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lccsanandroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;


# direct methods
.method constructor <init>(Lccsanandroid/view/inputmethod/InputConnection;ZLccsanandroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)V
    .locals 0
    .param p1, "target"    # Lccsanandroid/view/inputmethod/InputConnection;
    .param p2, "mutable"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x1010
        }
        names = {
            "target",
            "mutable",
            "val$listener"
        }
    .end annotation

    .line 288
    iput-object p3, p0, Lccsanandroidx/core/view/inputmethod/InputConnectionCompat$2;->val$listener:Lccsanandroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;

    invoke-direct {p0, p1, p2}, Lccsanandroid/view/inputmethod/InputConnectionWrapper;-><init>(Lccsanandroid/view/inputmethod/InputConnection;Z)V

    return-void
.end method


# virtual methods
.method public performPrivateCommand(Ljava/lang/String;Lccsanandroid/os/Bundle;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Lccsanandroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "action",
            "data"
        }
    .end annotation

    .line 291
    iget-object v0, p0, Lccsanandroidx/core/view/inputmethod/InputConnectionCompat$2;->val$listener:Lccsanandroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;

    invoke-static {p1, p2, v0}, Lccsanandroidx/core/view/inputmethod/InputConnectionCompat;->handlePerformPrivateCommand(Ljava/lang/String;Lccsanandroid/os/Bundle;Lccsanandroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    const/4 v0, 0x1

    return v0

    .line 294
    :cond_0
    invoke-super {p0, p1, p2}, Lccsanandroid/view/inputmethod/InputConnectionWrapper;->performPrivateCommand(Ljava/lang/String;Lccsanandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
