.class final Lccsancom/google/android/material/internal/ViewUtils$3;
.super Ljava/lang/Object;
.source "ViewUtils.java"

# interfaces
.implements Lccsanandroidx/core/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/internal/ViewUtils;->doOnApplyWindowInsets(Lccsanandroid/view/View;Lccsancom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$initialPadding:Lccsancom/google/android/material/internal/ViewUtils$RelativePadding;

.field final synthetic val$listener:Lccsancom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;Lccsancom/google/android/material/internal/ViewUtils$RelativePadding;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lccsancom/google/android/material/internal/ViewUtils$3;->val$listener:Lccsancom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;

    iput-object p2, p0, Lccsancom/google/android/material/internal/ViewUtils$3;->val$initialPadding:Lccsancom/google/android/material/internal/ViewUtils$RelativePadding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Lccsanandroid/view/View;Lccsanandroidx/core/view/WindowInsetsCompat;)Lccsanandroidx/core/view/WindowInsetsCompat;
    .locals 3
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "insets"    # Lccsanandroidx/core/view/WindowInsetsCompat;

    .line 231
    iget-object v0, p0, Lccsancom/google/android/material/internal/ViewUtils$3;->val$listener:Lccsancom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;

    new-instance v1, Lccsancom/google/android/material/internal/ViewUtils$RelativePadding;

    iget-object v2, p0, Lccsancom/google/android/material/internal/ViewUtils$3;->val$initialPadding:Lccsancom/google/android/material/internal/ViewUtils$RelativePadding;

    invoke-direct {v1, v2}, Lccsancom/google/android/material/internal/ViewUtils$RelativePadding;-><init>(Lccsancom/google/android/material/internal/ViewUtils$RelativePadding;)V

    invoke-interface {v0, p1, p2, v1}, Lccsancom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;->onApplyWindowInsets(Lccsanandroid/view/View;Lccsanandroidx/core/view/WindowInsetsCompat;Lccsancom/google/android/material/internal/ViewUtils$RelativePadding;)Lccsanandroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method
