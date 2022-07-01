.class Lccsanandroidx/core/view/ViewCompat$Api21Impl$1;
.super Ljava/lang/Object;
.source "ViewCompat.java"

# interfaces
.implements Lccsanandroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/core/view/ViewCompat$Api21Impl;->setOnApplyWindowInsetsListener(Lccsanandroid/view/View;Lccsanandroidx/core/view/OnApplyWindowInsetsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mLastInsets:Lccsanandroidx/core/view/WindowInsetsCompat;

.field final synthetic val$listener:Lccsanandroidx/core/view/OnApplyWindowInsetsListener;

.field final synthetic val$v:Lccsanandroid/view/View;


# direct methods
.method constructor <init>(Lccsanandroid/view/View;Lccsanandroidx/core/view/OnApplyWindowInsetsListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$v",
            "val$listener"
        }
    .end annotation

    .line 4774
    iput-object p1, p0, Lccsanandroidx/core/view/ViewCompat$Api21Impl$1;->val$v:Lccsanandroid/view/View;

    iput-object p2, p0, Lccsanandroidx/core/view/ViewCompat$Api21Impl$1;->val$listener:Lccsanandroidx/core/view/OnApplyWindowInsetsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4775
    const/4 p1, 0x0

    iput-object p1, p0, Lccsanandroidx/core/view/ViewCompat$Api21Impl$1;->mLastInsets:Lccsanandroidx/core/view/WindowInsetsCompat;

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Lccsanandroid/view/View;Lccsanandroid/view/WindowInsets;)Lccsanandroid/view/WindowInsets;
    .locals 3
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "insets"    # Lccsanandroid/view/WindowInsets;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "view",
            "insets"
        }
    .end annotation

    .line 4780
    invoke-static {p2, p1}, Lccsanandroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Lccsanandroid/view/WindowInsets;Lccsanandroid/view/View;)Lccsanandroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    .line 4782
    .local v0, "compatInsets":Lccsanandroidx/core/view/WindowInsetsCompat;
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_0

    .line 4783
    iget-object v1, p0, Lccsanandroidx/core/view/ViewCompat$Api21Impl$1;->val$v:Lccsanandroid/view/View;

    invoke-static {p2, v1}, Lccsanandroidx/core/view/ViewCompat$Api21Impl;->callCompatInsetAnimationCallback(Lccsanandroid/view/WindowInsets;Lccsanandroid/view/View;)V

    .line 4785
    iget-object v1, p0, Lccsanandroidx/core/view/ViewCompat$Api21Impl$1;->mLastInsets:Lccsanandroidx/core/view/WindowInsetsCompat;

    invoke-virtual {v0, v1}, Lccsanandroidx/core/view/WindowInsetsCompat;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4787
    iget-object v1, p0, Lccsanandroidx/core/view/ViewCompat$Api21Impl$1;->val$listener:Lccsanandroidx/core/view/OnApplyWindowInsetsListener;

    invoke-interface {v1, p1, v0}, Lccsanandroidx/core/view/OnApplyWindowInsetsListener;->onApplyWindowInsets(Lccsanandroid/view/View;Lccsanandroidx/core/view/WindowInsetsCompat;)Lccsanandroidx/core/view/WindowInsetsCompat;

    move-result-object v1

    .line 4788
    invoke-virtual {v1}, Lccsanandroidx/core/view/WindowInsetsCompat;->toWindowInsets()Lccsanandroid/view/WindowInsets;

    move-result-object v1

    .line 4787
    return-object v1

    .line 4791
    :cond_0
    iput-object v0, p0, Lccsanandroidx/core/view/ViewCompat$Api21Impl$1;->mLastInsets:Lccsanandroidx/core/view/WindowInsetsCompat;

    .line 4792
    iget-object v1, p0, Lccsanandroidx/core/view/ViewCompat$Api21Impl$1;->val$listener:Lccsanandroidx/core/view/OnApplyWindowInsetsListener;

    invoke-interface {v1, p1, v0}, Lccsanandroidx/core/view/OnApplyWindowInsetsListener;->onApplyWindowInsets(Lccsanandroid/view/View;Lccsanandroidx/core/view/WindowInsetsCompat;)Lccsanandroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    .line 4794
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_1

    .line 4795
    invoke-virtual {v0}, Lccsanandroidx/core/view/WindowInsetsCompat;->toWindowInsets()Lccsanandroid/view/WindowInsets;

    move-result-object v1

    return-object v1

    .line 4802
    :cond_1
    invoke-static {p1}, Lccsanandroidx/core/view/ViewCompat;->requestApplyInsets(Lccsanandroid/view/View;)V

    .line 4806
    invoke-virtual {v0}, Lccsanandroidx/core/view/WindowInsetsCompat;->toWindowInsets()Lccsanandroid/view/WindowInsets;

    move-result-object v1

    return-object v1
.end method
