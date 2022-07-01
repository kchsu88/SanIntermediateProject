.class public final Lccsancom/google/android/material/datepicker/MaterialTextInputPicker;
.super Lccsancom/google/android/material/datepicker/PickerFragment;
.source "MaterialTextInputPicker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/android/material/datepicker/PickerFragment<",
        "TS;>;"
    }
.end annotation


# static fields
.field private static final CALENDAR_CONSTRAINTS_KEY:Ljava/lang/String; = "CALENDAR_CONSTRAINTS_KEY"

.field private static final DATE_SELECTOR_KEY:Ljava/lang/String; = "DATE_SELECTOR_KEY"

.field private static final THEME_RES_ID_KEY:Ljava/lang/String; = "THEME_RES_ID_KEY"


# instance fields
.field private calendarConstraints:Lccsancom/google/android/material/datepicker/CalendarConstraints;

.field private dateSelector:Lccsancom/google/android/material/datepicker/DateSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/android/material/datepicker/DateSelector<",
            "TS;>;"
        }
    .end annotation
.end field

.field private themeResId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialTextInputPicker;, "Lccsancom/google/android/material/datepicker/MaterialTextInputPicker<TS;>;"
    invoke-direct {p0}, Lccsancom/google/android/material/datepicker/PickerFragment;-><init>()V

    return-void
.end method

.method static newInstance(Lccsancom/google/android/material/datepicker/DateSelector;ILccsancom/google/android/material/datepicker/CalendarConstraints;)Lccsancom/google/android/material/datepicker/MaterialTextInputPicker;
    .locals 3
    .param p1, "themeResId"    # I
    .param p2, "calendarConstraints"    # Lccsancom/google/android/material/datepicker/CalendarConstraints;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/android/material/datepicker/DateSelector<",
            "TT;>;I",
            "Lccsancom/google/android/material/datepicker/CalendarConstraints;",
            ")",
            "Lccsancom/google/android/material/datepicker/MaterialTextInputPicker<",
            "TT;>;"
        }
    .end annotation

    .line 50
    .local p0, "dateSelector":Lccsancom/google/android/material/datepicker/DateSelector;, "Lccsancom/google/android/material/datepicker/DateSelector<TT;>;"
    new-instance v0, Lccsancom/google/android/material/datepicker/MaterialTextInputPicker;

    invoke-direct {v0}, Lccsancom/google/android/material/datepicker/MaterialTextInputPicker;-><init>()V

    .line 51
    .local v0, "materialCalendar":Lccsancom/google/android/material/datepicker/MaterialTextInputPicker;, "Lccsancom/google/android/material/datepicker/MaterialTextInputPicker<TT;>;"
    new-instance v1, Lccsanandroid/os/Bundle;

    invoke-direct {v1}, Lccsanandroid/os/Bundle;-><init>()V

    .line 52
    .local v1, "args":Lccsanandroid/os/Bundle;
    const-string v2, "THEME_RES_ID_KEY"

    invoke-virtual {v1, v2, p1}, Lccsanandroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 53
    const-string v2, "DATE_SELECTOR_KEY"

    invoke-virtual {v1, v2, p0}, Lccsanandroid/os/Bundle;->putParcelable(Ljava/lang/String;Lccsanandroid/os/Parcelable;)V

    .line 54
    const-string v2, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {v1, v2, p2}, Lccsanandroid/os/Bundle;->putParcelable(Ljava/lang/String;Lccsanandroid/os/Parcelable;)V

    .line 55
    invoke-virtual {v0, v1}, Lccsancom/google/android/material/datepicker/MaterialTextInputPicker;->setArguments(Lccsanandroid/os/Bundle;)V

    .line 56
    return-object v0
.end method


# virtual methods
.method public getDateSelector()Lccsancom/google/android/material/datepicker/DateSelector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/android/material/datepicker/DateSelector<",
            "TS;>;"
        }
    .end annotation

    .line 109
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialTextInputPicker;, "Lccsancom/google/android/material/datepicker/MaterialTextInputPicker<TS;>;"
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialTextInputPicker;->dateSelector:Lccsancom/google/android/material/datepicker/DateSelector;

    if-eqz v0, :cond_0

    .line 115
    return-object v0

    .line 110
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "dateSelector should not be null. Use MaterialTextInputPicker#newInstance() to create this fragment with a DateSelector, and call this method after the fragment has been created."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Lccsanandroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Lccsanandroid/os/Bundle;

    .line 69
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialTextInputPicker;, "Lccsancom/google/android/material/datepicker/MaterialTextInputPicker<TS;>;"
    invoke-super {p0, p1}, Lccsancom/google/android/material/datepicker/PickerFragment;->onCreate(Lccsanandroid/os/Bundle;)V

    .line 70
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lccsancom/google/android/material/datepicker/MaterialTextInputPicker;->getArguments()Lccsanandroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 71
    .local v0, "activeBundle":Lccsanandroid/os/Bundle;
    :goto_0
    const-string v1, "THEME_RES_ID_KEY"

    invoke-virtual {v0, v1}, Lccsanandroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lccsancom/google/android/material/datepicker/MaterialTextInputPicker;->themeResId:I

    .line 72
    const-string v1, "DATE_SELECTOR_KEY"

    invoke-virtual {v0, v1}, Lccsanandroid/os/Bundle;->getParcelable(Ljava/lang/String;)Lccsanandroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/material/datepicker/DateSelector;

    iput-object v1, p0, Lccsancom/google/android/material/datepicker/MaterialTextInputPicker;->dateSelector:Lccsancom/google/android/material/datepicker/DateSelector;

    .line 73
    const-string v1, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {v0, v1}, Lccsanandroid/os/Bundle;->getParcelable(Ljava/lang/String;)Lccsanandroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/material/datepicker/CalendarConstraints;

    iput-object v1, p0, Lccsancom/google/android/material/datepicker/MaterialTextInputPicker;->calendarConstraints:Lccsancom/google/android/material/datepicker/CalendarConstraints;

    .line 74
    return-void
.end method

.method public onCreateView(Lccsanandroid/view/LayoutInflater;Lccsanandroid/view/ViewGroup;Lccsanandroid/os/Bundle;)Lccsanandroid/view/View;
    .locals 8
    .param p1, "layoutInflater"    # Lccsanandroid/view/LayoutInflater;
    .param p2, "viewGroup"    # Lccsanandroid/view/ViewGroup;
    .param p3, "bundle"    # Lccsanandroid/os/Bundle;

    .line 82
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialTextInputPicker;, "Lccsancom/google/android/material/datepicker/MaterialTextInputPicker<TS;>;"
    new-instance v0, Lccsanandroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lccsancom/google/android/material/datepicker/MaterialTextInputPicker;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    iget v2, p0, Lccsancom/google/android/material/datepicker/MaterialTextInputPicker;->themeResId:I

    invoke-direct {v0, v1, v2}, Lccsanandroid/view/ContextThemeWrapper;-><init>(Lccsanandroid/content/Context;I)V

    .line 83
    .local v0, "themedContext":Lccsanandroid/view/ContextThemeWrapper;
    invoke-virtual {p1, v0}, Lccsanandroid/view/LayoutInflater;->cloneInContext(Lccsanandroid/content/Context;)Lccsanandroid/view/LayoutInflater;

    move-result-object v7

    .line 84
    .local v7, "themedInflater":Lccsanandroid/view/LayoutInflater;
    iget-object v1, p0, Lccsancom/google/android/material/datepicker/MaterialTextInputPicker;->dateSelector:Lccsancom/google/android/material/datepicker/DateSelector;

    iget-object v5, p0, Lccsancom/google/android/material/datepicker/MaterialTextInputPicker;->calendarConstraints:Lccsancom/google/android/material/datepicker/CalendarConstraints;

    new-instance v6, Lccsancom/google/android/material/datepicker/MaterialTextInputPicker$1;

    invoke-direct {v6, p0}, Lccsancom/google/android/material/datepicker/MaterialTextInputPicker$1;-><init>(Lccsancom/google/android/material/datepicker/MaterialTextInputPicker;)V

    move-object v2, v7

    move-object v3, p2

    move-object v4, p3

    invoke-interface/range {v1 .. v6}, Lccsancom/google/android/material/datepicker/DateSelector;->onCreateTextInputView(Lccsanandroid/view/LayoutInflater;Lccsanandroid/view/ViewGroup;Lccsanandroid/os/Bundle;Lccsancom/google/android/material/datepicker/CalendarConstraints;Lccsancom/google/android/material/datepicker/OnSelectionChangedListener;)Lccsanandroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public onSaveInstanceState(Lccsanandroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Lccsanandroid/os/Bundle;

    .line 61
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialTextInputPicker;, "Lccsancom/google/android/material/datepicker/MaterialTextInputPicker<TS;>;"
    invoke-super {p0, p1}, Lccsancom/google/android/material/datepicker/PickerFragment;->onSaveInstanceState(Lccsanandroid/os/Bundle;)V

    .line 62
    iget v0, p0, Lccsancom/google/android/material/datepicker/MaterialTextInputPicker;->themeResId:I

    const-string v1, "THEME_RES_ID_KEY"

    invoke-virtual {p1, v1, v0}, Lccsanandroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 63
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialTextInputPicker;->dateSelector:Lccsancom/google/android/material/datepicker/DateSelector;

    const-string v1, "DATE_SELECTOR_KEY"

    invoke-virtual {p1, v1, v0}, Lccsanandroid/os/Bundle;->putParcelable(Ljava/lang/String;Lccsanandroid/os/Parcelable;)V

    .line 64
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialTextInputPicker;->calendarConstraints:Lccsancom/google/android/material/datepicker/CalendarConstraints;

    const-string v1, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {p1, v1, v0}, Lccsanandroid/os/Bundle;->putParcelable(Ljava/lang/String;Lccsanandroid/os/Parcelable;)V

    .line 65
    return-void
.end method
