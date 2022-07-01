.class Lccsanandroidx/appcompat/widget/AppCompatHintHelper;
.super Ljava/lang/Object;
.source "AppCompatHintHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method static onCreateInputConnection(Lccsanandroid/view/inputmethod/InputConnection;Lccsanandroid/view/inputmethod/EditorInfo;Lccsanandroid/view/View;)Lccsanandroid/view/inputmethod/InputConnection;
    .locals 2
    .param p0, "ic"    # Lccsanandroid/view/inputmethod/InputConnection;
    .param p1, "outAttrs"    # Lccsanandroid/view/inputmethod/EditorInfo;
    .param p2, "view"    # Lccsanandroid/view/View;

    .line 28
    if-eqz p0, :cond_1

    iget-object v0, p1, Lccsanandroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    .line 31
    invoke-virtual {p2}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    .line 32
    .local v0, "parent":Lccsanandroid/view/ViewParent;
    :goto_0
    instance-of v1, v0, Lccsanandroid/view/View;

    if-eqz v1, :cond_1

    .line 33
    instance-of v1, v0, Lccsanandroidx/appcompat/widget/WithHint;

    if-eqz v1, :cond_0

    .line 34
    move-object v1, v0

    check-cast v1, Lccsanandroidx/appcompat/widget/WithHint;

    invoke-interface {v1}, Lccsanandroidx/appcompat/widget/WithHint;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p1, Lccsanandroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    .line 35
    goto :goto_1

    .line 37
    :cond_0
    invoke-interface {v0}, Lccsanandroid/view/ViewParent;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 40
    .end local v0    # "parent":Lccsanandroid/view/ViewParent;
    :cond_1
    :goto_1
    return-object p0
.end method
