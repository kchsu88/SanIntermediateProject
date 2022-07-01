.class abstract Lccsancom/google/android/material/datepicker/PickerFragment;
.super Lccsanandroidx/fragment/app/Fragment;
.source "PickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Lccsanandroidx/fragment/app/Fragment;"
    }
.end annotation


# instance fields
.field protected final onSelectionChangedListeners:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lccsancom/google/android/material/datepicker/OnSelectionChangedListener<",
            "TS;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 21
    .local p0, "this":Lccsancom/google/android/material/datepicker/PickerFragment;, "Lccsancom/google/android/material/datepicker/PickerFragment<TS;>;"
    invoke-direct {p0}, Lccsanandroidx/fragment/app/Fragment;-><init>()V

    .line 23
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/datepicker/PickerFragment;->onSelectionChangedListeners:Ljava/util/LinkedHashSet;

    return-void
.end method


# virtual methods
.method addOnSelectionChangedListener(Lccsancom/google/android/material/datepicker/OnSelectionChangedListener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/android/material/datepicker/OnSelectionChangedListener<",
            "TS;>;)Z"
        }
    .end annotation

    .line 30
    .local p0, "this":Lccsancom/google/android/material/datepicker/PickerFragment;, "Lccsancom/google/android/material/datepicker/PickerFragment<TS;>;"
    .local p1, "listener":Lccsancom/google/android/material/datepicker/OnSelectionChangedListener;, "Lccsancom/google/android/material/datepicker/OnSelectionChangedListener<TS;>;"
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/PickerFragment;->onSelectionChangedListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method clearOnSelectionChangedListeners()V
    .locals 1

    .line 40
    .local p0, "this":Lccsancom/google/android/material/datepicker/PickerFragment;, "Lccsancom/google/android/material/datepicker/PickerFragment<TS;>;"
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/PickerFragment;->onSelectionChangedListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 41
    return-void
.end method

.method abstract getDateSelector()Lccsancom/google/android/material/datepicker/DateSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/android/material/datepicker/DateSelector<",
            "TS;>;"
        }
    .end annotation
.end method

.method removeOnSelectionChangedListener(Lccsancom/google/android/material/datepicker/OnSelectionChangedListener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/android/material/datepicker/OnSelectionChangedListener<",
            "TS;>;)Z"
        }
    .end annotation

    .line 35
    .local p0, "this":Lccsancom/google/android/material/datepicker/PickerFragment;, "Lccsancom/google/android/material/datepicker/PickerFragment<TS;>;"
    .local p1, "listener":Lccsancom/google/android/material/datepicker/OnSelectionChangedListener;, "Lccsancom/google/android/material/datepicker/OnSelectionChangedListener<TS;>;"
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/PickerFragment;->onSelectionChangedListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
