.class Lccsancom/google/android/material/textfield/CustomEndIconDelegate;
.super Lccsancom/google/android/material/textfield/EndIconDelegate;
.source "CustomEndIconDelegate.java"


# direct methods
.method constructor <init>(Lccsancom/google/android/material/textfield/TextInputLayout;)V
    .locals 0
    .param p1, "textInputLayout"    # Lccsancom/google/android/material/textfield/TextInputLayout;

    .line 27
    invoke-direct {p0, p1}, Lccsancom/google/android/material/textfield/EndIconDelegate;-><init>(Lccsancom/google/android/material/textfield/TextInputLayout;)V

    .line 28
    return-void
.end method


# virtual methods
.method initialize()V
    .locals 2

    .line 32
    iget-object v0, p0, Lccsancom/google/android/material/textfield/CustomEndIconDelegate;->textInputLayout:Lccsancom/google/android/material/textfield/TextInputLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 33
    iget-object v0, p0, Lccsancom/google/android/material/textfield/CustomEndIconDelegate;->textInputLayout:Lccsancom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/textfield/TextInputLayout;->setEndIconOnLongClickListener(Lccsanandroid/view/View$OnLongClickListener;)V

    .line 34
    return-void
.end method
