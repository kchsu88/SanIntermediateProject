.class abstract Lccsancom/google/android/material/textfield/EndIconDelegate;
.super Ljava/lang/Object;
.source "EndIconDelegate.java"


# instance fields
.field context:Lccsanandroid/content/Context;

.field endIconView:Lccsancom/google/android/material/internal/CheckableImageButton;

.field textInputLayout:Lccsancom/google/android/material/textfield/TextInputLayout;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/textfield/TextInputLayout;)V
    .locals 1
    .param p1, "textInputLayout"    # Lccsancom/google/android/material/textfield/TextInputLayout;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lccsancom/google/android/material/textfield/EndIconDelegate;->textInputLayout:Lccsancom/google/android/material/textfield/TextInputLayout;

    .line 38
    invoke-virtual {p1}, Lccsancom/google/android/material/textfield/TextInputLayout;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/textfield/EndIconDelegate;->context:Lccsanandroid/content/Context;

    .line 39
    invoke-virtual {p1}, Lccsancom/google/android/material/textfield/TextInputLayout;->getEndIconView()Lccsancom/google/android/material/internal/CheckableImageButton;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/textfield/EndIconDelegate;->endIconView:Lccsancom/google/android/material/internal/CheckableImageButton;

    .line 40
    return-void
.end method


# virtual methods
.method abstract initialize()V
.end method

.method isBoxBackgroundModeSupported(I)Z
    .locals 1
    .param p1, "boxBackgroundMode"    # I

    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method onSuffixVisibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .line 70
    return-void
.end method

.method shouldTintIconOnError()Z
    .locals 1

    .line 52
    const/4 v0, 0x0

    return v0
.end method
