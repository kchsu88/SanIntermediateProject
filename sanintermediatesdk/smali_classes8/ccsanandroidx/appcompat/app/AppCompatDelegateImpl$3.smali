.class Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$3;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Lccsanandroidx/core/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;->createSubDecor()Lccsanandroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    .line 938
    iput-object p1, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$3;->this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Lccsanandroid/view/View;Lccsanandroidx/core/view/WindowInsetsCompat;)Lccsanandroidx/core/view/WindowInsetsCompat;
    .locals 5
    .param p1, "v"    # Lccsanandroid/view/View;
    .param p2, "insets"    # Lccsanandroidx/core/view/WindowInsetsCompat;

    .line 942
    invoke-virtual {p2}, Lccsanandroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    .line 943
    .local v0, "top":I
    iget-object v1, p0, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl$3;->this$0:Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lccsanandroidx/appcompat/app/AppCompatDelegateImpl;->updateStatusGuard(Lccsanandroidx/core/view/WindowInsetsCompat;Lccsanandroid/graphics/Rect;)I

    move-result v1

    .line 945
    .local v1, "newTop":I
    if-eq v0, v1, :cond_0

    .line 946
    nop

    .line 947
    invoke-virtual {p2}, Lccsanandroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v2

    .line 949
    invoke-virtual {p2}, Lccsanandroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v3

    .line 950
    invoke-virtual {p2}, Lccsanandroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v4

    .line 946
    invoke-virtual {p2, v2, v1, v3, v4}, Lccsanandroidx/core/view/WindowInsetsCompat;->replaceSystemWindowInsets(IIII)Lccsanandroidx/core/view/WindowInsetsCompat;

    move-result-object p2

    .line 954
    :cond_0
    invoke-static {p1, p2}, Lccsanandroidx/core/view/ViewCompat;->onApplyWindowInsets(Lccsanandroid/view/View;Lccsanandroidx/core/view/WindowInsetsCompat;)Lccsanandroidx/core/view/WindowInsetsCompat;

    move-result-object v2

    return-object v2
.end method
