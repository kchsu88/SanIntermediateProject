.class public Lccsancom/google/android/material/internal/VisibilityAwareImageButton;
.super Lccsanandroid/widget/ImageButton;
.source "VisibilityAwareImageButton.java"


# instance fields
.field private userSetVisibility:I


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/google/android/material/internal/VisibilityAwareImageButton;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lccsancom/google/android/material/internal/VisibilityAwareImageButton;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lccsanandroid/widget/ImageButton;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 48
    invoke-virtual {p0}, Lccsancom/google/android/material/internal/VisibilityAwareImageButton;->getVisibility()I

    move-result v0

    iput v0, p0, Lccsancom/google/android/material/internal/VisibilityAwareImageButton;->userSetVisibility:I

    .line 49
    return-void
.end method


# virtual methods
.method public final getUserSetVisibility()I
    .locals 1

    .line 64
    iget v0, p0, Lccsancom/google/android/material/internal/VisibilityAwareImageButton;->userSetVisibility:I

    return v0
.end method

.method public final internalSetVisibility(IZ)V
    .locals 0
    .param p1, "visibility"    # I
    .param p2, "fromUser"    # Z

    .line 57
    invoke-super {p0, p1}, Lccsanandroid/widget/ImageButton;->setVisibility(I)V

    .line 58
    if-eqz p2, :cond_0

    .line 59
    iput p1, p0, Lccsancom/google/android/material/internal/VisibilityAwareImageButton;->userSetVisibility:I

    .line 61
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .line 53
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lccsancom/google/android/material/internal/VisibilityAwareImageButton;->internalSetVisibility(IZ)V

    .line 54
    return-void
.end method
