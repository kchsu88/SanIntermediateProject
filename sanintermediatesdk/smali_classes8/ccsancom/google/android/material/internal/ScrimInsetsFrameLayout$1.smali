.class Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout$1;
.super Ljava/lang/Object;
.source "ScrimInsetsFrameLayout.java"

# interfaces
.implements Lccsanandroidx/core/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;

    .line 74
    iput-object p1, p0, Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout$1;->this$0:Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Lccsanandroid/view/View;Lccsanandroidx/core/view/WindowInsetsCompat;)Lccsanandroidx/core/view/WindowInsetsCompat;
    .locals 5
    .param p1, "v"    # Lccsanandroid/view/View;
    .param p2, "insets"    # Lccsanandroidx/core/view/WindowInsetsCompat;

    .line 78
    iget-object v0, p0, Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout$1;->this$0:Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;

    iget-object v0, v0, Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;->insets:Lccsanandroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout$1;->this$0:Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;

    new-instance v1, Lccsanandroid/graphics/Rect;

    invoke-direct {v1}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;->insets:Lccsanandroid/graphics/Rect;

    .line 81
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout$1;->this$0:Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;

    iget-object v0, v0, Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;->insets:Lccsanandroid/graphics/Rect;

    .line 82
    invoke-virtual {p2}, Lccsanandroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v1

    .line 83
    invoke-virtual {p2}, Lccsanandroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v2

    .line 84
    invoke-virtual {p2}, Lccsanandroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v3

    .line 85
    invoke-virtual {p2}, Lccsanandroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v4

    .line 81
    invoke-virtual {v0, v1, v2, v3, v4}, Lccsanandroid/graphics/Rect;->set(IIII)V

    .line 86
    iget-object v0, p0, Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout$1;->this$0:Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;

    invoke-virtual {v0, p2}, Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;->onInsetsChanged(Lccsanandroidx/core/view/WindowInsetsCompat;)V

    .line 87
    iget-object v0, p0, Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout$1;->this$0:Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;

    invoke-virtual {p2}, Lccsanandroidx/core/view/WindowInsetsCompat;->hasSystemWindowInsets()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout$1;->this$0:Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;

    iget-object v1, v1, Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;->insetForeground:Lccsanandroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;->setWillNotDraw(Z)V

    .line 88
    iget-object v0, p0, Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout$1;->this$0:Lccsancom/google/android/material/internal/ScrimInsetsFrameLayout;

    invoke-static {v0}, Lccsanandroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Lccsanandroid/view/View;)V

    .line 89
    invoke-virtual {p2}, Lccsanandroidx/core/view/WindowInsetsCompat;->consumeSystemWindowInsets()Lccsanandroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method
