.class Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate;
.super Lccsancom/google/android/material/textfield/EndIconDelegate;
.source "PasswordToggleEndIconDelegate.java"


# instance fields
.field private final onEditTextAttachedListener:Lccsancom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;

.field private final onEndIconChangedListener:Lccsancom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;

.field private final textWatcher:Lccsanandroid/text/TextWatcher;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/textfield/TextInputLayout;)V
    .locals 1
    .param p1, "textInputLayout"    # Lccsancom/google/android/material/textfield/TextInputLayout;

    .line 81
    invoke-direct {p0, p1}, Lccsancom/google/android/material/textfield/EndIconDelegate;-><init>(Lccsancom/google/android/material/textfield/TextInputLayout;)V

    .line 36
    new-instance v0, Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate$1;

    invoke-direct {v0, p0}, Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate$1;-><init>(Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate;)V

    iput-object v0, p0, Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate;->textWatcher:Lccsanandroid/text/TextWatcher;

    .line 46
    new-instance v0, Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate$2;

    invoke-direct {v0, p0}, Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate$2;-><init>(Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate;)V

    iput-object v0, p0, Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate;->onEditTextAttachedListener:Lccsancom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;

    .line 59
    new-instance v0, Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate$3;

    invoke-direct {v0, p0}, Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate$3;-><init>(Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate;)V

    iput-object v0, p0, Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate;->onEndIconChangedListener:Lccsancom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;

    .line 82
    return-void
.end method

.method static synthetic access$000(Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate;)Z
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate;

    .line 34
    invoke-direct {p0}, Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate;->hasPasswordTransformation()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate;)Lccsanandroid/text/TextWatcher;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate;

    .line 34
    iget-object v0, p0, Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate;->textWatcher:Lccsanandroid/text/TextWatcher;

    return-object v0
.end method

.method private hasPasswordTransformation()Z
    .locals 2

    .line 123
    iget-object v0, p0, Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate;->textInputLayout:Lccsancom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lccsancom/google/android/material/textfield/TextInputLayout;->getEditText()Lccsanandroid/widget/EditText;

    move-result-object v0

    .line 124
    .local v0, "editText":Lccsanandroid/widget/EditText;
    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0}, Lccsanandroid/widget/EditText;->getTransformationMethod()Lccsanandroid/text/method/TransformationMethod;

    move-result-object v1

    instance-of v1, v1, Lccsanandroid/text/method/PasswordTransformationMethod;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 124
    :goto_0
    return v1
.end method

.method private static isInputTypePassword(Lccsanandroid/widget/EditText;)Z
    .locals 2
    .param p0, "editText"    # Lccsanandroid/widget/EditText;

    .line 129
    if-eqz p0, :cond_1

    .line 130
    invoke-virtual {p0}, Lccsanandroid/widget/EditText;->getInputType()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 131
    invoke-virtual {p0}, Lccsanandroid/widget/EditText;->getInputType()I

    move-result v0

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    .line 132
    invoke-virtual {p0}, Lccsanandroid/widget/EditText;->getInputType()I

    move-result v0

    const/16 v1, 0x90

    if-eq v0, v1, :cond_0

    .line 133
    invoke-virtual {p0}, Lccsanandroid/widget/EditText;->getInputType()I

    move-result v0

    const/16 v1, 0xe0

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 129
    :goto_0
    return v0
.end method


# virtual methods
.method initialize()V
    .locals 3

    .line 86
    iget-object v0, p0, Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate;->textInputLayout:Lccsancom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate;->context:Lccsanandroid/content/Context;

    sget v2, Lccsancom/google/android/material/R$drawable;->ccsan_design_password_eye:I

    .line 87
    invoke-static {v1, v2}, Lccsanandroidx/appcompat/content/res/AppCompatResources;->getDrawable(Lccsanandroid/content/Context;I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 86
    invoke-virtual {v0, v1}, Lccsancom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 88
    iget-object v0, p0, Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate;->textInputLayout:Lccsancom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate;->textInputLayout:Lccsancom/google/android/material/textfield/TextInputLayout;

    .line 89
    invoke-virtual {v1}, Lccsancom/google/android/material/textfield/TextInputLayout;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v1

    sget v2, Lccsancom/google/android/material/R$string;->password_toggle_content_description:I

    invoke-virtual {v1, v2}, Lccsanandroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Lccsancom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate;->textInputLayout:Lccsancom/google/android/material/textfield/TextInputLayout;

    new-instance v1, Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate$4;

    invoke-direct {v1, p0}, Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate$4;-><init>(Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate;)V

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate;->textInputLayout:Lccsancom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate;->onEditTextAttachedListener:Lccsancom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/textfield/TextInputLayout;->addOnEditTextAttachedListener(Lccsancom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;)V

    .line 114
    iget-object v0, p0, Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate;->textInputLayout:Lccsancom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate;->onEndIconChangedListener:Lccsancom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/textfield/TextInputLayout;->addOnEndIconChangedListener(Lccsancom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;)V

    .line 115
    iget-object v0, p0, Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate;->textInputLayout:Lccsancom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lccsancom/google/android/material/textfield/TextInputLayout;->getEditText()Lccsanandroid/widget/EditText;

    move-result-object v0

    .line 116
    .local v0, "editText":Lccsanandroid/widget/EditText;
    invoke-static {v0}, Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate;->isInputTypePassword(Lccsanandroid/widget/EditText;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    invoke-static {}, Lccsanandroid/text/method/PasswordTransformationMethod;->getInstance()Lccsanandroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/widget/EditText;->setTransformationMethod(Lccsanandroid/text/method/TransformationMethod;)V

    .line 120
    :cond_0
    return-void
.end method
