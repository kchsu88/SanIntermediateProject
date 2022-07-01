.class public abstract Lccsancom/google/android/material/datepicker/OnSelectionChangedListener;
.super Ljava/lang/Object;
.source "OnSelectionChangedListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    .local p0, "this":Lccsancom/google/android/material/datepicker/OnSelectionChangedListener;, "Lccsancom/google/android/material/datepicker/OnSelectionChangedListener<TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIncompleteSelectionChanged()V
    .locals 0

    .line 29
    .local p0, "this":Lccsancom/google/android/material/datepicker/OnSelectionChangedListener;, "Lccsancom/google/android/material/datepicker/OnSelectionChangedListener<TS;>;"
    return-void
.end method

.method public abstract onSelectionChanged(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation
.end method
