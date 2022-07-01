.class Lccsancom/google/android/material/textfield/NoEndIconDelegate;
.super Lccsancom/google/android/material/textfield/EndIconDelegate;
.source "NoEndIconDelegate.java"


# direct methods
.method constructor <init>(Lccsancom/google/android/material/textfield/TextInputLayout;)V
    .locals 0
    .param p1, "textInputLayout"    # Lccsancom/google/android/material/textfield/TextInputLayout;

    .line 26
    invoke-direct {p0, p1}, Lccsancom/google/android/material/textfield/EndIconDelegate;-><init>(Lccsancom/google/android/material/textfield/TextInputLayout;)V

    .line 27
    return-void
.end method


# virtual methods
.method initialize()V
    .locals 2

    .line 31
    iget-object v0, p0, Lccsancom/google/android/material/textfield/NoEndIconDelegate;->textInputLayout:Lccsancom/google/android/material/textfield/TextInputLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 32
    iget-object v0, p0, Lccsancom/google/android/material/textfield/NoEndIconDelegate;->textInputLayout:Lccsancom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 33
    iget-object v0, p0, Lccsancom/google/android/material/textfield/NoEndIconDelegate;->textInputLayout:Lccsancom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    .line 34
    return-void
.end method
