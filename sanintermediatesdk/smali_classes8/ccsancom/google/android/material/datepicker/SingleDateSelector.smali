.class public Lccsancom/google/android/material/datepicker/SingleDateSelector;
.super Ljava/lang/Object;
.source "SingleDateSelector.java"

# interfaces
.implements Lccsancom/google/android/material/datepicker/DateSelector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/google/android/material/datepicker/DateSelector<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lccsanandroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/os/Parcelable$Creator<",
            "Lccsancom/google/android/material/datepicker/SingleDateSelector;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private selectedItem:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 166
    new-instance v0, Lccsancom/google/android/material/datepicker/SingleDateSelector$2;

    invoke-direct {v0}, Lccsancom/google/android/material/datepicker/SingleDateSelector$2;-><init>()V

    sput-object v0, Lccsancom/google/android/material/datepicker/SingleDateSelector;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lccsancom/google/android/material/datepicker/SingleDateSelector;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/google/android/material/datepicker/SingleDateSelector;

    .line 49
    invoke-direct {p0}, Lccsancom/google/android/material/datepicker/SingleDateSelector;->clearSelection()V

    return-void
.end method

.method static synthetic access$102(Lccsancom/google/android/material/datepicker/SingleDateSelector;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0
    .param p0, "x0"    # Lccsancom/google/android/material/datepicker/SingleDateSelector;
    .param p1, "x1"    # Ljava/lang/Long;

    .line 49
    iput-object p1, p0, Lccsancom/google/android/material/datepicker/SingleDateSelector;->selectedItem:Ljava/lang/Long;

    return-object p1
.end method

.method private clearSelection()V
    .locals 1

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/google/android/material/datepicker/SingleDateSelector;->selectedItem:Ljava/lang/Long;

    .line 60
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultThemeResId(Lccsanandroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 143
    sget v0, Lccsancom/google/android/material/R$attr;->materialCalendarTheme:I

    const-class v1, Lccsancom/google/android/material/datepicker/MaterialDatePicker;

    .line 144
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-static {p1, v0, v1}, Lccsancom/google/android/material/resources/MaterialAttributes;->resolveOrThrow(Lccsanandroid/content/Context;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDefaultTitleResId()I
    .locals 1

    .line 160
    sget v0, Lccsancom/google/android/material/R$string;->mtrl_picker_date_header_title:I

    return v0
.end method

.method public getSelectedDays()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v0, "selections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v1, p0, Lccsancom/google/android/material/datepicker/SingleDateSelector;->selectedItem:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_0
    return-object v0
.end method

.method public getSelectedRanges()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lccsanandroidx/core/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getSelection()Ljava/lang/Long;
    .locals 1

    .line 91
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/SingleDateSelector;->selectedItem:Ljava/lang/Long;

    return-object v0
.end method

.method public bridge synthetic getSelection()Ljava/lang/Object;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lccsancom/google/android/material/datepicker/SingleDateSelector;->getSelection()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getSelectionDisplayString(Lccsanandroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 150
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    .line 151
    .local v0, "res":Lccsanandroid/content/res/Resources;
    iget-object v1, p0, Lccsancom/google/android/material/datepicker/SingleDateSelector;->selectedItem:Ljava/lang/Long;

    if-nez v1, :cond_0

    .line 152
    sget v1, Lccsancom/google/android/material/R$string;->mtrl_picker_date_header_unselected:I

    invoke-virtual {v0, v1}, Lccsanandroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 154
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lccsancom/google/android/material/datepicker/DateStrings;->getYearMonthDay(J)Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, "startString":Ljava/lang/String;
    sget v2, Lccsancom/google/android/material/R$string;->mtrl_picker_date_header_selected:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Lccsanandroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public isSelectionComplete()Z
    .locals 1

    .line 69
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/SingleDateSelector;->selectedItem:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCreateTextInputView(Lccsanandroid/view/LayoutInflater;Lccsanandroid/view/ViewGroup;Lccsanandroid/os/Bundle;Lccsancom/google/android/material/datepicker/CalendarConstraints;Lccsancom/google/android/material/datepicker/OnSelectionChangedListener;)Lccsanandroid/view/View;
    .locals 16
    .param p1, "layoutInflater"    # Lccsanandroid/view/LayoutInflater;
    .param p2, "viewGroup"    # Lccsanandroid/view/ViewGroup;
    .param p3, "bundle"    # Lccsanandroid/os/Bundle;
    .param p4, "constraints"    # Lccsancom/google/android/material/datepicker/CalendarConstraints;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/view/LayoutInflater;",
            "Lccsanandroid/view/ViewGroup;",
            "Lccsanandroid/os/Bundle;",
            "Lccsancom/google/android/material/datepicker/CalendarConstraints;",
            "Lccsancom/google/android/material/datepicker/OnSelectionChangedListener<",
            "Ljava/lang/Long;",
            ">;)",
            "Lccsanandroid/view/View;"
        }
    .end annotation

    .line 101
    .local p5, "listener":Lccsancom/google/android/material/datepicker/OnSelectionChangedListener;, "Lccsancom/google/android/material/datepicker/OnSelectionChangedListener<Ljava/lang/Long;>;"
    sget v0, Lccsancom/google/android/material/R$layout;->ccsan_mtrl_picker_text_input_date:I

    const/4 v1, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v2, v0, v3, v1}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;Z)Lccsanandroid/view/View;

    move-result-object v0

    .line 103
    .local v0, "root":Lccsanandroid/view/View;
    sget v1, Lccsancom/google/android/material/R$id;->ccsan_mtrl_picker_text_input_date:I

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/material/textfield/TextInputLayout;

    .line 104
    .local v1, "dateTextInput":Lccsancom/google/android/material/textfield/TextInputLayout;
    invoke-virtual {v1}, Lccsancom/google/android/material/textfield/TextInputLayout;->getEditText()Lccsanandroid/widget/EditText;

    move-result-object v11

    .line 105
    .local v11, "dateEditText":Lccsanandroid/widget/EditText;
    invoke-static {}, Lccsancom/google/android/material/internal/ManufacturerUtils;->isDateInputKeyboardMissingSeparatorCharacters()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 107
    const/16 v4, 0x11

    invoke-virtual {v11, v4}, Lccsanandroid/widget/EditText;->setInputType(I)V

    .line 109
    :cond_0
    invoke-static {}, Lccsancom/google/android/material/datepicker/UtcDates;->getTextInputFormat()Ljava/text/SimpleDateFormat;

    move-result-object v12

    .line 110
    .local v12, "format":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0}, Lccsanandroid/view/View;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v12}, Lccsancom/google/android/material/datepicker/UtcDates;->getTextInputHint(Lccsanandroid/content/res/Resources;Ljava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v13

    .line 112
    .local v13, "formatHint":Ljava/lang/String;
    invoke-virtual {v1, v13}, Lccsancom/google/android/material/textfield/TextInputLayout;->setPlaceholderText(Ljava/lang/CharSequence;)V

    .line 113
    move-object/from16 v14, p0

    iget-object v4, v14, Lccsancom/google/android/material/datepicker/SingleDateSelector;->selectedItem:Ljava/lang/Long;

    if-eqz v4, :cond_1

    .line 114
    invoke-virtual {v12, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Lccsanandroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :cond_1
    new-instance v15, Lccsancom/google/android/material/datepicker/SingleDateSelector$1;

    move-object v4, v15

    move-object/from16 v5, p0

    move-object v6, v13

    move-object v7, v12

    move-object v8, v1

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v4 .. v10}, Lccsancom/google/android/material/datepicker/SingleDateSelector$1;-><init>(Lccsancom/google/android/material/datepicker/SingleDateSelector;Ljava/lang/String;Ljava/text/DateFormat;Lccsancom/google/android/material/textfield/TextInputLayout;Lccsancom/google/android/material/datepicker/CalendarConstraints;Lccsancom/google/android/material/datepicker/OnSelectionChangedListener;)V

    invoke-virtual {v11, v15}, Lccsanandroid/widget/EditText;->addTextChangedListener(Lccsanandroid/text/TextWatcher;)V

    .line 136
    invoke-static {v11}, Lccsancom/google/android/material/internal/ViewUtils;->requestFocusAndShowKeyboard(Lccsanandroid/view/View;)V

    .line 138
    return-object v0
.end method

.method public select(J)V
    .locals 1
    .param p1, "selection"    # J

    .line 55
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/datepicker/SingleDateSelector;->selectedItem:Ljava/lang/Long;

    .line 56
    return-void
.end method

.method public setSelection(Ljava/lang/Long;)V
    .locals 2
    .param p1, "selection"    # Ljava/lang/Long;

    .line 64
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lccsancom/google/android/material/datepicker/UtcDates;->canonicalYearMonthDay(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lccsancom/google/android/material/datepicker/SingleDateSelector;->selectedItem:Ljava/lang/Long;

    .line 65
    return-void
.end method

.method public bridge synthetic setSelection(Ljava/lang/Object;)V
    .locals 0

    .line 48
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lccsancom/google/android/material/datepicker/SingleDateSelector;->setSelection(Ljava/lang/Long;)V

    return-void
.end method

.method public writeToParcel(Lccsanandroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Lccsanandroid/os/Parcel;
    .param p2, "flags"    # I

    .line 190
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/SingleDateSelector;->selectedItem:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 191
    return-void
.end method
