.class final Lccsancom/google/android/material/internal/ViewUtils$4;
.super Ljava/lang/Object;
.source "ViewUtils.java"

# interfaces
.implements Lccsanandroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/internal/ViewUtils;->requestApplyInsetsWhenAttached(Lccsanandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Lccsanandroid/view/View;)V
    .locals 0
    .param p1, "v"    # Lccsanandroid/view/View;

    .line 249
    invoke-virtual {p1, p0}, Lccsanandroid/view/View;->removeOnAttachStateChangeListener(Lccsanandroid/view/View$OnAttachStateChangeListener;)V

    .line 250
    invoke-static {p1}, Lccsanandroidx/core/view/ViewCompat;->requestApplyInsets(Lccsanandroid/view/View;)V

    .line 251
    return-void
.end method

.method public onViewDetachedFromWindow(Lccsanandroid/view/View;)V
    .locals 0
    .param p1, "v"    # Lccsanandroid/view/View;

    .line 254
    return-void
.end method
