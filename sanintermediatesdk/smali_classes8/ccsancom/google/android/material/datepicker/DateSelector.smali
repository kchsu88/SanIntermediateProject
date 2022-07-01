.class public interface abstract Lccsancom/google/android/material/datepicker/DateSelector;
.super Ljava/lang/Object;
.source "DateSelector.java"

# interfaces
.implements Lccsanandroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lccsanandroid/os/Parcelable;"
    }
.end annotation


# virtual methods
.method public abstract getDefaultThemeResId(Lccsanandroid/content/Context;)I
.end method

.method public abstract getDefaultTitleResId()I
.end method

.method public abstract getSelectedDays()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSelectedRanges()Ljava/util/Collection;
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
.end method

.method public abstract getSelection()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation
.end method

.method public abstract getSelectionDisplayString(Lccsanandroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract isSelectionComplete()Z
.end method

.method public abstract onCreateTextInputView(Lccsanandroid/view/LayoutInflater;Lccsanandroid/view/ViewGroup;Lccsanandroid/os/Bundle;Lccsancom/google/android/material/datepicker/CalendarConstraints;Lccsancom/google/android/material/datepicker/OnSelectionChangedListener;)Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/view/LayoutInflater;",
            "Lccsanandroid/view/ViewGroup;",
            "Lccsanandroid/os/Bundle;",
            "Lccsancom/google/android/material/datepicker/CalendarConstraints;",
            "Lccsancom/google/android/material/datepicker/OnSelectionChangedListener<",
            "TS;>;)",
            "Lccsanandroid/view/View;"
        }
    .end annotation
.end method

.method public abstract select(J)V
.end method

.method public abstract setSelection(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation
.end method
