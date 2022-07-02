.class Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;
.super Ljava/lang/Object;
.source "TimePickerTextInputPresenter.java"

# interfaces
.implements Lccsancom/google/android/material/timepicker/TimePickerView$OnSelectionChange;
.implements Lccsancom/google/android/material/timepicker/TimePickerPresenter;


# instance fields
.field private final controller:Lccsancom/google/android/material/timepicker/TimePickerTextInputKeyController;

.field private final hourEditText:Lccsanandroid/widget/EditText;

.field private final hourTextInput:Lccsancom/google/android/material/timepicker/ChipTextInputComboView;

.field private final hourTextWatcher:Lccsanandroid/text/TextWatcher;

.field private final minuteEditText:Lccsanandroid/widget/EditText;

.field private final minuteTextInput:Lccsancom/google/android/material/timepicker/ChipTextInputComboView;

.field private final minuteTextWatcher:Lccsanandroid/text/TextWatcher;

.field private final time:Lccsancom/google/android/material/timepicker/TimeModel;

.field private final timePickerView:Lccsanandroid/widget/LinearLayout;

.field private toggle:Lccsancom/google/android/material/button/MaterialButtonToggleGroup;


# direct methods
.method public constructor <init>(Lccsanandroid/widget/LinearLayout;Lccsancom/google/android/material/timepicker/TimeModel;)V
    .locals 10
    .param p1, "timePickerView"    # Lccsanandroid/widget/LinearLayout;
    .param p2, "time"    # Lccsancom/google/android/material/timepicker/TimeModel;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter$1;

    invoke-direct {v0, p0}, Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter$1;-><init>(Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;)V

    iput-object v0, p0, Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;->minuteTextWatcher:Lccsanandroid/text/TextWatcher;

    .line 75
    new-instance v0, Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter$2;

    invoke-direct {v0, p0}, Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter$2;-><init>(Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;)V

    iput-object v0, p0, Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;->hourTextWatcher:Lccsanandroid/text/TextWatcher;

    .line 99
    iput-object p1, p0, Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;->timePickerView:Lccsanandroid/widget/LinearLayout;

    .line 100
    iput-object p2, p0, Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;->time:Lccsancom/google/android/material/timepicker/TimeModel;

    .line 101
    invoke-virtual {p1}, Lccsanandroid/widget/LinearLayout;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    .line 102
    .local v0, "res":Lccsanandroid/content/res/Resources;
    sget v1, Lccsancom/google/android/material/R$id;->material_minute_text_input:I

    invoke-virtual {p1, v1}, Lccsanandroid/widget/LinearLayout;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/material/timepicker/ChipTextInputComboView;

    iput-object v1, p0, Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;->minuteTextInput:Lccsancom/google/android/material/timepicker/ChipTextInputComboView;

    .line 103
    sget v2, Lccsancom/google/android/material/R$id;->material_hour_text_input:I

    invoke-virtual {p1, v2}, Lccsanandroid/widget/LinearLayout;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v2

    check-cast v2, Lccsancom/google/android/material/timepicker/ChipTextInputComboView;

    iput-object v2, p0, Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;->hourTextInput:Lccsancom/google/android/material/timepicker/ChipTextInputComboView;

    .line 104
    sget v3, Lccsancom/google/android/material/R$id;->material_label:I

    invoke-virtual {v1, v3}, Lccsancom/google/android/material/timepicker/ChipTextInputComboView;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v3

    check-cast v3, Lccsanandroid/widget/TextView;

    .line 105
    .local v3, "minuteLabel":Lccsanandroid/widget/TextView;
    sget v4, Lccsancom/google/android/material/R$id;->material_label:I

    invoke-virtual {v2, v4}, Lccsancom/google/android/material/timepicker/ChipTextInputComboView;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v4

    check-cast v4, Lccsanandroid/widget/TextView;

    .line 107
    .local v4, "hourLabel":Lccsanandroid/widget/TextView;
    sget v5, Lccsancom/google/android/material/R$string;->ccsan_ccsan_material_timepicker_minute:I

    invoke-virtual {v0, v5}, Lccsanandroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    sget v5, Lccsancom/google/android/material/R$string;->ccsan_ccsan_material_timepicker_hour:I

    invoke-virtual {v0, v5}, Lccsanandroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    sget v5, Lccsancom/google/android/material/R$id;->selection_type:I

    const/16 v6, 0xc

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lccsancom/google/android/material/timepicker/ChipTextInputComboView;->setTag(ILjava/lang/Object;)V

    .line 110
    sget v5, Lccsancom/google/android/material/R$id;->selection_type:I

    const/16 v6, 0xa

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lccsancom/google/android/material/timepicker/ChipTextInputComboView;->setTag(ILjava/lang/Object;)V

    .line 112
    iget v5, p2, Lccsancom/google/android/material/timepicker/TimeModel;->format:I

    if-nez v5, :cond_0

    .line 113
    invoke-direct {p0}, Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;->setupPeriodToggle()V

    .line 116
    :cond_0
    new-instance v5, Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter$3;

    invoke-direct {v5, p0}, Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter$3;-><init>(Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;)V

    .line 124
    .local v5, "onClickListener":Lccsanandroid/view/View$OnClickListener;
    invoke-virtual {v2, v5}, Lccsancom/google/android/material/timepicker/ChipTextInputComboView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 125
    invoke-virtual {v1, v5}, Lccsancom/google/android/material/timepicker/ChipTextInputComboView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 126
    invoke-virtual {p2}, Lccsancom/google/android/material/timepicker/TimeModel;->getHourInputValidator()Lccsancom/google/android/material/timepicker/MaxInputValidator;

    move-result-object v6

    invoke-virtual {v2, v6}, Lccsancom/google/android/material/timepicker/ChipTextInputComboView;->addInputFilter(Lccsanandroid/text/InputFilter;)V

    .line 127
    invoke-virtual {p2}, Lccsancom/google/android/material/timepicker/TimeModel;->getMinuteInputValidator()Lccsancom/google/android/material/timepicker/MaxInputValidator;

    move-result-object v6

    invoke-virtual {v1, v6}, Lccsancom/google/android/material/timepicker/ChipTextInputComboView;->addInputFilter(Lccsanandroid/text/InputFilter;)V

    .line 129
    invoke-virtual {v2}, Lccsancom/google/android/material/timepicker/ChipTextInputComboView;->getTextInput()Lccsancom/google/android/material/textfield/TextInputLayout;

    move-result-object v6

    invoke-virtual {v6}, Lccsancom/google/android/material/textfield/TextInputLayout;->getEditText()Lccsanandroid/widget/EditText;

    move-result-object v6

    iput-object v6, p0, Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;->hourEditText:Lccsanandroid/widget/EditText;

    .line 130
    invoke-virtual {v1}, Lccsancom/google/android/material/timepicker/ChipTextInputComboView;->getTextInput()Lccsancom/google/android/material/textfield/TextInputLayout;

    move-result-object v7

    invoke-virtual {v7}, Lccsancom/google/android/material/textfield/TextInputLayout;->getEditText()Lccsanandroid/widget/EditText;

    move-result-object v7

    iput-object v7, p0, Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;->minuteEditText:Lccsanandroid/widget/EditText;

    .line 131
    sget v8, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-ge v8, v9, :cond_1

    .line 133
    sget v8, Lccsancom/google/android/material/R$attr;->colorPrimary:I

    invoke-static {p1, v8}, Lccsancom/google/android/material/color/MaterialColors;->getColor(Lccsanandroid/view/View;I)I

    move-result v8

    .line 134
    .local v8, "primaryColor":I
    invoke-static {v6, v8}, Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;->setCursorDrawableColor(Lccsanandroid/widget/EditText;I)V

    .line 135
    invoke-static {v7, v8}, Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;->setCursorDrawableColor(Lccsanandroid/widget/EditText;I)V

    .line 138
    .end local v8    # "primaryColor":I
    :cond_1
    new-instance v6, Lccsancom/google/android/material/timepicker/TimePickerTextInputKeyController;

    invoke-direct {v6, v2, v1, p2}, Lccsancom/google/android/material/timepicker/TimePickerTextInputKeyController;-><init>(Lccsancom/google/android/material/timepicker/ChipTextInputComboView;Lccsancom/google/android/material/timepicker/ChipTextInputComboView;Lccsancom/google/android/material/timepicker/TimeModel;)V

    iput-object v6, p0, Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;->controller:Lccsancom/google/android/material/timepicker/TimePickerTextInputKeyController;

    .line 139
    new-instance v6, Lccsancom/google/android/material/timepicker/ClickActionDelegate;

    .line 140
    invoke-virtual {p1}, Lccsanandroid/widget/LinearLayout;->getContext()Lccsanandroid/content/Context;

    move-result-object v7

    sget v8, Lccsancom/google/android/material/R$string;->material_hour_selection:I

    invoke-direct {v6, v7, v8}, Lccsancom/google/android/material/timepicker/ClickActionDelegate;-><init>(Lccsanandroid/content/Context;I)V

    .line 139
    invoke-virtual {v2, v6}, Lccsancom/google/android/material/timepicker/ChipTextInputComboView;->setChipDelegate(Lccsanandroidx/core/view/AccessibilityDelegateCompat;)V

    .line 141
    new-instance v2, Lccsancom/google/android/material/timepicker/ClickActionDelegate;

    .line 142
    invoke-virtual {p1}, Lccsanandroid/widget/LinearLayout;->getContext()Lccsanandroid/content/Context;

    move-result-object v6

    sget v7, Lccsancom/google/android/material/R$string;->material_minute_selection:I

    invoke-direct {v2, v6, v7}, Lccsancom/google/android/material/timepicker/ClickActionDelegate;-><init>(Lccsanandroid/content/Context;I)V

    .line 141
    invoke-virtual {v1, v2}, Lccsancom/google/android/material/timepicker/ChipTextInputComboView;->setChipDelegate(Lccsanandroidx/core/view/AccessibilityDelegateCompat;)V

    .line 144
    invoke-virtual {p0}, Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;->initialize()V

    .line 145
    return-void
.end method

.method static synthetic access$000(Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;)Lccsancom/google/android/material/timepicker/TimeModel;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;

    .line 54
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;->time:Lccsancom/google/android/material/timepicker/TimeModel;

    return-object v0
.end method

.method private addTextWatchers()V
    .locals 2

    .line 155
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;->hourEditText:Lccsanandroid/widget/EditText;

    iget-object v1, p0, Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;->hourTextWatcher:Lccsanandroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/EditText;->addTextChangedListener(Lccsanandroid/text/TextWatcher;)V

    .line 156
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;->minuteEditText:Lccsanandroid/widget/EditText;

    iget-object v1, p0, Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;->minuteTextWatcher:Lccsanandroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/EditText;->addTextChangedListener(Lccsanandroid/text/TextWatcher;)V

    .line 157
    return-void
.end method

.method private removeTextWatchers()V
    .locals 2

    .line 160
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;->hourEditText:Lccsanandroid/widget/EditText;

    iget-object v1, p0, Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;->hourTextWatcher:Lccsanandroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/EditText;->removeTextChangedListener(Lccsanandroid/text/TextWatcher;)V

    .line 161
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;->minuteEditText:Lccsanandroid/widget/EditText;

    iget-object v1, p0, Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;->minuteTextWatcher:Lccsanandroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/EditText;->removeTextChangedListener(Lccsanandroid/text/TextWatcher;)V

    .line 162
    return-void
.end method

.method private static setCursorDrawableColor(Lccsanandroid/widget/EditText;I)V
    .locals 11
    .param p0, "view"    # Lccsanandroid/widget/EditText;
    .param p1, "color"    # I

    .line 243
    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/widget/EditText;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    .line 244
    .local v0, "context":Lccsanandroid/content/Context;
    const-class v1, Lccsanandroid/widget/TextView;

    const-string v2, "mCursorDrawableRes"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 245
    .local v1, "cursorDrawableResField":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 246
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    .line 247
    .local v3, "cursorDrawableResId":I
    const-class v4, Lccsanandroid/widget/TextView;

    const-string v5, "mEditor"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 248
    .local v4, "editorField":Ljava/lang/reflect/Field;
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 249
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 250
    .local v5, "editor":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 251
    .local v6, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v7, "mCursorDrawable"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 252
    .local v7, "cursorDrawableField":Ljava/lang/reflect/Field;
    invoke-virtual {v7, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 253
    invoke-static {v0, v3}, Lccsanandroidx/appcompat/content/res/AppCompatResources;->getDrawable(Lccsanandroid/content/Context;I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 254
    .local v8, "drawable":Lccsanandroid/graphics/drawable/Drawable;
    sget-object v9, Lccsanandroid/graphics/PorterDuff$Mode;->SRC_IN:Lccsanandroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, p1, v9}, Lccsanandroid/graphics/drawable/Drawable;->setColorFilter(ILccsanandroid/graphics/PorterDuff$Mode;)V

    .line 255
    const/4 v9, 0x2

    new-array v9, v9, [Lccsanandroid/graphics/drawable/Drawable;

    const/4 v10, 0x0

    aput-object v8, v9, v10

    aput-object v8, v9, v2

    move-object v2, v9

    .line 256
    .local v2, "drawables":[Lccsanandroid/graphics/drawable/Drawable;
    invoke-virtual {v7, v5, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    .end local v0    # "context":Lccsanandroid/content/Context;
    .end local v1    # "cursorDrawableResField":Ljava/lang/reflect/Field;
    .end local v2    # "drawables":[Lccsanandroid/graphics/drawable/Drawable;
    .end local v3    # "cursorDrawableResId":I
    .end local v4    # "editorField":Ljava/lang/reflect/Field;
    .end local v5    # "editor":Ljava/lang/Object;
    .end local v6    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "cursorDrawableField":Ljava/lang/reflect/Field;
    .end local v8    # "drawable":Lccsanandroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 257
    :catchall_0
    move-exception v0

    .line 260
    :goto_0
    return-void
.end method

.method private setTime(Lccsancom/google/android/material/timepicker/TimeModel;)V
    .locals 6
    .param p1, "time"    # Lccsancom/google/android/material/timepicker/TimeModel;

    .line 165
    invoke-direct {p0}, Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;->removeTextWatchers()V

    .line 166
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;->timePickerView:Lccsanandroid/widget/LinearLayout;

    invoke-virtual {v0}, Lccsanandroid/widget/LinearLayout;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/content/res/Resources;->getConfiguration()Lccsanandroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Lccsanandroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 167
    .local v0, "current":Ljava/util/Locale;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget v3, p1, Lccsancom/google/android/material/timepicker/TimeModel;->minute:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "%02d"

    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, "minuteFormatted":Ljava/lang/String;
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lccsancom/google/android/material/timepicker/TimeModel;->getHourForDisplay()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v0, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, "hourFormatted":Ljava/lang/String;
    iget-object v3, p0, Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;->minuteTextInput:Lccsancom/google/android/material/timepicker/ChipTextInputComboView;

    invoke-virtual {v3, v2}, Lccsancom/google/android/material/timepicker/ChipTextInputComboView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v3, p0, Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;->hourTextInput:Lccsancom/google/android/material/timepicker/ChipTextInputComboView;

    invoke-virtual {v3, v1}, Lccsancom/google/android/material/timepicker/ChipTextInputComboView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    invoke-direct {p0}, Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;->addTextWatchers()V

    .line 172
    invoke-direct {p0}, Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;->updateSelection()V

    .line 173
    return-void
.end method

.method private setupPeriodToggle()V
    .locals 2

    .line 176
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;->timePickerView:Lccsanandroid/widget/LinearLayout;

    sget v1, Lccsancom/google/android/material/R$id;->ccsan_material_clock_period_toggle:I

    invoke-virtual {v0, v1}, Lccsanandroid/widget/LinearLayout;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;

    iput-object v0, p0, Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;->toggle:Lccsancom/google/android/material/button/MaterialButtonToggleGroup;

    .line 178
    new-instance v1, Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter$4;

    invoke-direct {v1, p0}, Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter$4;-><init>(Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;)V

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->addOnButtonCheckedListener(Lccsancom/google/android/material/button/MaterialButtonToggleGroup$OnButtonCheckedListener;)V

    .line 187
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;->toggle:Lccsancom/google/android/material/button/MaterialButtonToggleGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->setVisibility(I)V

    .line 188
    invoke-direct {p0}, Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;->updateSelection()V

    .line 189
    return-void
.end method

.method private updateSelection()V
    .locals 2

    .line 192
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;->toggle:Lccsancom/google/android/material/button/MaterialButtonToggleGroup;

    if-nez v0, :cond_0

    .line 193
    return-void

    .line 196
    :cond_0
    iget-object v1, p0, Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;->time:Lccsancom/google/android/material/timepicker/TimeModel;

    iget v1, v1, Lccsancom/google/android/material/timepicker/TimeModel;->period:I

    if-nez v1, :cond_1

    sget v1, Lccsancom/google/android/material/R$id;->material_clock_period_am_button:I

    goto :goto_0

    :cond_1
    sget v1, Lccsancom/google/android/material/R$id;->material_clock_period_pm_button:I

    :goto_0
    invoke-virtual {v0, v1}, Lccsancom/google/android/material/button/MaterialButtonToggleGroup;->check(I)V

    .line 200
    return-void
.end method


# virtual methods
.method public clearCheck()V
    .locals 2

    .line 268
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;->minuteTextInput:Lccsancom/google/android/material/timepicker/ChipTextInputComboView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/timepicker/ChipTextInputComboView;->setChecked(Z)V

    .line 269
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;->hourTextInput:Lccsancom/google/android/material/timepicker/ChipTextInputComboView;

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/timepicker/ChipTextInputComboView;->setChecked(Z)V

    .line 270
    return-void
.end method

.method public hide()V
    .locals 6

    .line 217
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;->timePickerView:Lccsanandroid/widget/LinearLayout;

    invoke-virtual {v0}, Lccsanandroid/widget/LinearLayout;->getFocusedChild()Lccsanandroid/view/View;

    move-result-object v0

    .line 219
    .local v0, "currentFocus":Lccsanandroid/view/View;
    const/16 v1, 0x8

    if-nez v0, :cond_0

    .line 220
    iget-object v2, p0, Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;->timePickerView:Lccsanandroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Lccsanandroid/widget/LinearLayout;->setVisibility(I)V

    .line 221
    return-void

    .line 223
    :cond_0
    iget-object v2, p0, Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;->timePickerView:Lccsanandroid/widget/LinearLayout;

    invoke-virtual {v2}, Lccsanandroid/widget/LinearLayout;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    .line 224
    .local v2, "context":Lccsanandroid/content/Context;
    const-class v3, Lccsanandroid/view/inputmethod/InputMethodManager;

    invoke-static {v2, v3}, Lccsanandroidx/core/content/ContextCompat;->getSystemService(Lccsanandroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroid/view/inputmethod/InputMethodManager;

    .line 225
    .local v3, "imm":Lccsanandroid/view/inputmethod/InputMethodManager;
    if-eqz v3, :cond_1

    .line 226
    invoke-virtual {v0}, Lccsanandroid/view/View;->getWindowToken()Lccsanandroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lccsanandroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Lccsanandroid/os/IBinder;I)Z

    .line 228
    :cond_1
    iget-object v4, p0, Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;->timePickerView:Lccsanandroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Lccsanandroid/widget/LinearLayout;->setVisibility(I)V

    .line 229
    return-void
.end method

.method public initialize()V
    .locals 1

    .line 149
    invoke-direct {p0}, Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;->addTextWatchers()V

    .line 150
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;->time:Lccsancom/google/android/material/timepicker/TimeModel;

    invoke-direct {p0, v0}, Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;->setTime(Lccsancom/google/android/material/timepicker/TimeModel;)V

    .line 151
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;->controller:Lccsancom/google/android/material/timepicker/TimePickerTextInputKeyController;

    invoke-virtual {v0}, Lccsancom/google/android/material/timepicker/TimePickerTextInputKeyController;->bind()V

    .line 152
    return-void
.end method

.method public invalidate()V
    .locals 1

    .line 233
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;->time:Lccsancom/google/android/material/timepicker/TimeModel;

    invoke-direct {p0, v0}, Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;->setTime(Lccsancom/google/android/material/timepicker/TimeModel;)V

    .line 234
    return-void
.end method

.method public onSelectionChanged(I)V
    .locals 4
    .param p1, "selection"    # I

    .line 204
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;->time:Lccsancom/google/android/material/timepicker/TimeModel;

    iput p1, v0, Lccsancom/google/android/material/timepicker/TimeModel;->selection:I

    .line 205
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;->minuteTextInput:Lccsancom/google/android/material/timepicker/ChipTextInputComboView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0xc

    if-ne p1, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Lccsancom/google/android/material/timepicker/ChipTextInputComboView;->setChecked(Z)V

    .line 206
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;->hourTextInput:Lccsancom/google/android/material/timepicker/ChipTextInputComboView;

    const/16 v3, 0xa

    if-ne p1, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lccsancom/google/android/material/timepicker/ChipTextInputComboView;->setChecked(Z)V

    .line 207
    invoke-direct {p0}, Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;->updateSelection()V

    .line 208
    return-void
.end method

.method public resetChecked()V
    .locals 5

    .line 263
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;->minuteTextInput:Lccsancom/google/android/material/timepicker/ChipTextInputComboView;

    iget-object v1, p0, Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;->time:Lccsancom/google/android/material/timepicker/TimeModel;

    iget v1, v1, Lccsancom/google/android/material/timepicker/TimeModel;->selection:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0xc

    if-ne v1, v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lccsancom/google/android/material/timepicker/ChipTextInputComboView;->setChecked(Z)V

    .line 264
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;->hourTextInput:Lccsancom/google/android/material/timepicker/ChipTextInputComboView;

    iget-object v1, p0, Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;->time:Lccsancom/google/android/material/timepicker/TimeModel;

    iget v1, v1, Lccsancom/google/android/material/timepicker/TimeModel;->selection:I

    const/16 v4, 0xa

    if-ne v1, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Lccsancom/google/android/material/timepicker/ChipTextInputComboView;->setChecked(Z)V

    .line 265
    return-void
.end method

.method public show()V
    .locals 2

    .line 212
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;->timePickerView:Lccsanandroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/widget/LinearLayout;->setVisibility(I)V

    .line 213
    return-void
.end method
