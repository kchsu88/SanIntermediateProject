.class Lccsancom/google/android/material/bottomnavigation/BottomNavigationView$2;
.super Ljava/lang/Object;
.source "BottomNavigationView.java"

# interfaces
.implements Lccsancom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;->applyWindowInsets()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;

    .line 254
    iput-object p1, p0, Lccsancom/google/android/material/bottomnavigation/BottomNavigationView$2;->this$0:Lccsancom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Lccsanandroid/view/View;Lccsanandroidx/core/view/WindowInsetsCompat;Lccsancom/google/android/material/internal/ViewUtils$RelativePadding;)Lccsanandroidx/core/view/WindowInsetsCompat;
    .locals 5
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "insets"    # Lccsanandroidx/core/view/WindowInsetsCompat;
    .param p3, "initialPadding"    # Lccsancom/google/android/material/internal/ViewUtils$RelativePadding;

    .line 262
    iget v0, p3, Lccsancom/google/android/material/internal/ViewUtils$RelativePadding;->bottom:I

    invoke-virtual {p2}, Lccsanandroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p3, Lccsancom/google/android/material/internal/ViewUtils$RelativePadding;->bottom:I

    .line 264
    invoke-static {p1}, Lccsanandroidx/core/view/ViewCompat;->getLayoutDirection(Lccsanandroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 265
    .local v0, "isRtl":Z
    invoke-virtual {p2}, Lccsanandroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v1

    .line 266
    .local v1, "systemWindowInsetLeft":I
    invoke-virtual {p2}, Lccsanandroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v2

    .line 267
    .local v2, "systemWindowInsetRight":I
    iget v3, p3, Lccsancom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    if-eqz v0, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    add-int/2addr v3, v4

    iput v3, p3, Lccsancom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    .line 268
    iget v3, p3, Lccsancom/google/android/material/internal/ViewUtils$RelativePadding;->end:I

    if-eqz v0, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    add-int/2addr v3, v4

    iput v3, p3, Lccsancom/google/android/material/internal/ViewUtils$RelativePadding;->end:I

    .line 269
    invoke-virtual {p3, p1}, Lccsancom/google/android/material/internal/ViewUtils$RelativePadding;->applyToView(Lccsanandroid/view/View;)V

    .line 270
    return-object p2
.end method
