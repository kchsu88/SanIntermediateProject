.class Lccsancom/google/android/material/timepicker/ChipTextInputComboView;
.super Lccsanandroid/widget/FrameLayout;
.source "ChipTextInputComboView.java"

# interfaces
.implements Lccsanandroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/material/timepicker/ChipTextInputComboView$TextFormatter;
    }
.end annotation


# instance fields
.field private final chip:Lccsancom/google/android/material/chip/Chip;

.field private final editText:Lccsanandroid/widget/EditText;

.field private label:Lccsanandroid/widget/TextView;

.field private final textInputLayout:Lccsancom/google/android/material/textfield/TextInputLayout;

.field private watcher:Lccsanandroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/google/android/material/timepicker/ChipTextInputComboView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lccsancom/google/android/material/timepicker/ChipTextInputComboView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 68
    invoke-static {p1}, Lccsanandroid/view/LayoutInflater;->from(Lccsanandroid/content/Context;)Lccsanandroid/view/LayoutInflater;

    move-result-object v0

    .line 69
    .local v0, "inflater":Lccsanandroid/view/LayoutInflater;
    sget v1, Lccsancom/google/android/material/R$layout;->material_time_chip:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;Z)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/material/chip/Chip;

    iput-object v1, p0, Lccsancom/google/android/material/timepicker/ChipTextInputComboView;->chip:Lccsancom/google/android/material/chip/Chip;

    .line 70
    sget v3, Lccsancom/google/android/material/R$layout;->material_time_input:I

    invoke-virtual {v0, v3, p0, v2}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;Z)Lccsanandroid/view/View;

    move-result-object v3

    check-cast v3, Lccsancom/google/android/material/textfield/TextInputLayout;

    iput-object v3, p0, Lccsancom/google/android/material/timepicker/ChipTextInputComboView;->textInputLayout:Lccsancom/google/android/material/textfield/TextInputLayout;

    .line 71
    invoke-virtual {v3}, Lccsancom/google/android/material/textfield/TextInputLayout;->getEditText()Lccsanandroid/widget/EditText;

    move-result-object v4

    iput-object v4, p0, Lccsancom/google/android/material/timepicker/ChipTextInputComboView;->editText:Lccsanandroid/widget/EditText;

    .line 72
    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lccsanandroid/widget/EditText;->setVisibility(I)V

    .line 73
    new-instance v5, Lccsancom/google/android/material/timepicker/ChipTextInputComboView$TextFormatter;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lccsancom/google/android/material/timepicker/ChipTextInputComboView$TextFormatter;-><init>(Lccsancom/google/android/material/timepicker/ChipTextInputComboView;Lccsancom/google/android/material/timepicker/ChipTextInputComboView$1;)V

    iput-object v5, p0, Lccsancom/google/android/material/timepicker/ChipTextInputComboView;->watcher:Lccsanandroid/text/TextWatcher;

    .line 74
    invoke-virtual {v4, v5}, Lccsanandroid/widget/EditText;->addTextChangedListener(Lccsanandroid/text/TextWatcher;)V

    .line 75
    invoke-direct {p0}, Lccsancom/google/android/material/timepicker/ChipTextInputComboView;->updateHintLocales()V

    .line 76
    invoke-virtual {p0, v1}, Lccsancom/google/android/material/timepicker/ChipTextInputComboView;->addView(Lccsanandroid/view/View;)V

    .line 77
    invoke-virtual {p0, v3}, Lccsancom/google/android/material/timepicker/ChipTextInputComboView;->addView(Lccsanandroid/view/View;)V

    .line 78
    sget v1, Lccsancom/google/android/material/R$id;->material_label:I

    invoke-virtual {p0, v1}, Lccsancom/google/android/material/timepicker/ChipTextInputComboView;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/TextView;

    iput-object v1, p0, Lccsancom/google/android/material/timepicker/ChipTextInputComboView;->label:Lccsanandroid/widget/TextView;

    .line 79
    invoke-virtual {v4, v2}, Lccsanandroid/widget/EditText;->setSaveEnabled(Z)V

    .line 80
    return-void
.end method

.method static synthetic access$100(Lccsancom/google/android/material/timepicker/ChipTextInputComboView;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/timepicker/ChipTextInputComboView;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .line 49
    invoke-direct {p0, p1}, Lccsancom/google/android/material/timepicker/ChipTextInputComboView;->formatText(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lccsancom/google/android/material/timepicker/ChipTextInputComboView;)Lccsancom/google/android/material/chip/Chip;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/timepicker/ChipTextInputComboView;

    .line 49
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/ChipTextInputComboView;->chip:Lccsancom/google/android/material/chip/Chip;

    return-object v0
.end method

.method private formatText(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 123
    invoke-virtual {p0}, Lccsancom/google/android/material/timepicker/ChipTextInputComboView;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Lccsancom/google/android/material/timepicker/TimeModel;->formatText(Lccsanandroid/content/res/Resources;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateHintLocales()V
    .locals 3

    .line 83
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 84
    invoke-virtual {p0}, Lccsancom/google/android/material/timepicker/ChipTextInputComboView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/content/res/Resources;->getConfiguration()Lccsanandroid/content/res/Configuration;

    move-result-object v0

    .line 85
    .local v0, "configuration":Lccsanandroid/content/res/Configuration;
    invoke-virtual {v0}, Lccsanandroid/content/res/Configuration;->getLocales()Lccsanandroid/os/LocaleList;

    move-result-object v1

    .line 86
    .local v1, "locales":Lccsanandroid/os/LocaleList;
    iget-object v2, p0, Lccsancom/google/android/material/timepicker/ChipTextInputComboView;->editText:Lccsanandroid/widget/EditText;

    invoke-virtual {v2, v1}, Lccsanandroid/widget/EditText;->setImeHintLocales(Lccsanandroid/os/LocaleList;)V

    .line 88
    .end local v0    # "configuration":Lccsanandroid/content/res/Configuration;
    .end local v1    # "locales":Lccsanandroid/os/LocaleList;
    :cond_0
    return-void
.end method


# virtual methods
.method public addInputFilter(Lccsanandroid/text/InputFilter;)V
    .locals 3
    .param p1, "filter"    # Lccsanandroid/text/InputFilter;

    .line 145
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/ChipTextInputComboView;->editText:Lccsanandroid/widget/EditText;

    invoke-virtual {v0}, Lccsanandroid/widget/EditText;->getFilters()[Lccsanandroid/text/InputFilter;

    move-result-object v0

    .line 146
    .local v0, "current":[Lccsanandroid/text/InputFilter;
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lccsanandroid/text/InputFilter;

    .line 147
    .local v1, "arr":[Lccsanandroid/text/InputFilter;
    array-length v2, v0

    aput-object p1, v1, v2

    .line 148
    iget-object v2, p0, Lccsancom/google/android/material/timepicker/ChipTextInputComboView;->editText:Lccsanandroid/widget/EditText;

    invoke-virtual {v2, v1}, Lccsanandroid/widget/EditText;->setFilters([Lccsanandroid/text/InputFilter;)V

    .line 149
    return-void
.end method

.method public getTextInput()Lccsancom/google/android/material/textfield/TextInputLayout;
    .locals 1

    .line 152
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/ChipTextInputComboView;->textInputLayout:Lccsancom/google/android/material/textfield/TextInputLayout;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .line 92
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/ChipTextInputComboView;->chip:Lccsancom/google/android/material/chip/Chip;

    invoke-virtual {v0}, Lccsancom/google/android/material/chip/Chip;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected onConfigurationChanged(Lccsanandroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Lccsanandroid/content/res/Configuration;

    .line 176
    invoke-super {p0, p1}, Lccsanandroid/widget/FrameLayout;->onConfigurationChanged(Lccsanandroid/content/res/Configuration;)V

    .line 177
    invoke-direct {p0}, Lccsancom/google/android/material/timepicker/ChipTextInputComboView;->updateHintLocales()V

    .line 178
    return-void
.end method

.method public setChecked(Z)V
    .locals 3
    .param p1, "checked"    # Z

    .line 97
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/ChipTextInputComboView;->chip:Lccsancom/google/android/material/chip/Chip;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/chip/Chip;->setChecked(Z)V

    .line 98
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/ChipTextInputComboView;->editText:Lccsanandroid/widget/EditText;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    :goto_0
    invoke-virtual {v0, v2}, Lccsanandroid/widget/EditText;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/ChipTextInputComboView;->chip:Lccsancom/google/android/material/chip/Chip;

    if-eqz p1, :cond_1

    const/16 v1, 0x8

    :cond_1
    invoke-virtual {v0, v1}, Lccsancom/google/android/material/chip/Chip;->setVisibility(I)V

    .line 100
    invoke-virtual {p0}, Lccsancom/google/android/material/timepicker/ChipTextInputComboView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/ChipTextInputComboView;->editText:Lccsanandroid/widget/EditText;

    invoke-virtual {v0}, Lccsanandroid/widget/EditText;->requestFocus()Z

    .line 102
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/ChipTextInputComboView;->editText:Lccsanandroid/widget/EditText;

    invoke-virtual {v0}, Lccsanandroid/widget/EditText;->getText()Lccsanandroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 103
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/ChipTextInputComboView;->editText:Lccsanandroid/widget/EditText;

    invoke-virtual {v0}, Lccsanandroid/widget/EditText;->getText()Lccsanandroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Lccsanandroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/widget/EditText;->setSelection(I)V

    .line 106
    :cond_2
    return-void
.end method

.method public setChipDelegate(Lccsanandroidx/core/view/AccessibilityDelegateCompat;)V
    .locals 1
    .param p1, "clickActionDelegate"    # Lccsanandroidx/core/view/AccessibilityDelegateCompat;

    .line 156
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/ChipTextInputComboView;->chip:Lccsancom/google/android/material/chip/Chip;

    invoke-static {v0, p1}, Lccsanandroidx/core/view/ViewCompat;->setAccessibilityDelegate(Lccsanandroid/view/View;Lccsanandroidx/core/view/AccessibilityDelegateCompat;)V

    .line 157
    return-void
.end method

.method public setCursorVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .line 141
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/ChipTextInputComboView;->editText:Lccsanandroid/widget/EditText;

    invoke-virtual {v0, p1}, Lccsanandroid/widget/EditText;->setCursorVisible(Z)V

    .line 142
    return-void
.end method

.method public setHelperText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "helperText"    # Ljava/lang/CharSequence;

    .line 137
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/ChipTextInputComboView;->label:Lccsanandroid/widget/TextView;

    invoke-virtual {v0, p1}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    return-void
.end method

.method public setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "l"    # Lccsanandroid/view/View$OnClickListener;

    .line 128
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/ChipTextInputComboView;->chip:Lccsancom/google/android/material/chip/Chip;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/chip/Chip;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 129
    return-void
.end method

.method public setTag(ILjava/lang/Object;)V
    .locals 1
    .param p1, "key"    # I
    .param p2, "tag"    # Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/ChipTextInputComboView;->chip:Lccsancom/google/android/material/chip/Chip;

    invoke-virtual {v0, p1, p2}, Lccsancom/google/android/material/chip/Chip;->setTag(ILjava/lang/Object;)V

    .line 134
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 114
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/ChipTextInputComboView;->chip:Lccsancom/google/android/material/chip/Chip;

    invoke-direct {p0, p1}, Lccsancom/google/android/material/timepicker/ChipTextInputComboView;->formatText(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/chip/Chip;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/ChipTextInputComboView;->editText:Lccsanandroid/widget/EditText;

    invoke-virtual {v0}, Lccsanandroid/widget/EditText;->getText()Lccsanandroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/ChipTextInputComboView;->editText:Lccsanandroid/widget/EditText;

    iget-object v1, p0, Lccsancom/google/android/material/timepicker/ChipTextInputComboView;->watcher:Lccsanandroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/EditText;->removeTextChangedListener(Lccsanandroid/text/TextWatcher;)V

    .line 117
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/ChipTextInputComboView;->editText:Lccsanandroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/ChipTextInputComboView;->editText:Lccsanandroid/widget/EditText;

    iget-object v1, p0, Lccsancom/google/android/material/timepicker/ChipTextInputComboView;->watcher:Lccsanandroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/EditText;->addTextChangedListener(Lccsanandroid/text/TextWatcher;)V

    .line 120
    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .line 110
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/ChipTextInputComboView;->chip:Lccsancom/google/android/material/chip/Chip;

    invoke-virtual {v0}, Lccsancom/google/android/material/chip/Chip;->toggle()V

    .line 111
    return-void
.end method
