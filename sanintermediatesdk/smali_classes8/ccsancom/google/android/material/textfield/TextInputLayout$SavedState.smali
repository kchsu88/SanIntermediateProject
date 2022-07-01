.class Lccsancom/google/android/material/textfield/TextInputLayout$SavedState;
.super Lccsanandroidx/customview/view/AbsSavedState;
.source "TextInputLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/textfield/TextInputLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Lccsanandroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/os/Parcelable$Creator<",
            "Lccsancom/google/android/material/textfield/TextInputLayout$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field error:Ljava/lang/CharSequence;

.field helperText:Ljava/lang/CharSequence;

.field hintText:Ljava/lang/CharSequence;

.field isEndIconChecked:Z

.field placeholderText:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2774
    new-instance v0, Lccsancom/google/android/material/textfield/TextInputLayout$SavedState$1;

    invoke-direct {v0}, Lccsancom/google/android/material/textfield/TextInputLayout$SavedState$1;-><init>()V

    sput-object v0, Lccsancom/google/android/material/textfield/TextInputLayout$SavedState;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lccsanandroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 2
    .param p1, "source"    # Lccsanandroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 2740
    invoke-direct {p0, p1, p2}, Lccsanandroidx/customview/view/AbsSavedState;-><init>(Lccsanandroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 2741
    sget-object v0, Lccsanandroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Lccsanandroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Lccsanandroid/os/Parcelable$Creator;->createFromParcel(Lccsanandroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lccsancom/google/android/material/textfield/TextInputLayout$SavedState;->error:Ljava/lang/CharSequence;

    .line 2742
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lccsancom/google/android/material/textfield/TextInputLayout$SavedState;->isEndIconChecked:Z

    .line 2743
    sget-object v0, Lccsanandroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Lccsanandroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Lccsanandroid/os/Parcelable$Creator;->createFromParcel(Lccsanandroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lccsancom/google/android/material/textfield/TextInputLayout$SavedState;->hintText:Ljava/lang/CharSequence;

    .line 2744
    sget-object v0, Lccsanandroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Lccsanandroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Lccsanandroid/os/Parcelable$Creator;->createFromParcel(Lccsanandroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lccsancom/google/android/material/textfield/TextInputLayout$SavedState;->helperText:Ljava/lang/CharSequence;

    .line 2745
    sget-object v0, Lccsanandroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Lccsanandroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Lccsanandroid/os/Parcelable$Creator;->createFromParcel(Lccsanandroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lccsancom/google/android/material/textfield/TextInputLayout$SavedState;->placeholderText:Ljava/lang/CharSequence;

    .line 2746
    return-void
.end method

.method constructor <init>(Lccsanandroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Lccsanandroid/os/Parcelable;

    .line 2736
    invoke-direct {p0, p1}, Lccsanandroidx/customview/view/AbsSavedState;-><init>(Lccsanandroid/os/Parcelable;)V

    .line 2737
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 2761
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TextInputLayout.SavedState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2762
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/google/android/material/textfield/TextInputLayout$SavedState;->error:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " hint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/google/android/material/textfield/TextInputLayout$SavedState;->hintText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " helperText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/google/android/material/textfield/TextInputLayout$SavedState;->helperText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " placeholderText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/google/android/material/textfield/TextInputLayout$SavedState;->placeholderText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2761
    return-object v0
.end method

.method public writeToParcel(Lccsanandroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Lccsanandroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2750
    invoke-super {p0, p1, p2}, Lccsanandroidx/customview/view/AbsSavedState;->writeToParcel(Lccsanandroid/os/Parcel;I)V

    .line 2751
    iget-object v0, p0, Lccsancom/google/android/material/textfield/TextInputLayout$SavedState;->error:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Lccsanandroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Lccsanandroid/os/Parcel;I)V

    .line 2752
    iget-boolean v0, p0, Lccsancom/google/android/material/textfield/TextInputLayout$SavedState;->isEndIconChecked:Z

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 2753
    iget-object v0, p0, Lccsancom/google/android/material/textfield/TextInputLayout$SavedState;->hintText:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Lccsanandroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Lccsanandroid/os/Parcel;I)V

    .line 2754
    iget-object v0, p0, Lccsancom/google/android/material/textfield/TextInputLayout$SavedState;->helperText:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Lccsanandroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Lccsanandroid/os/Parcel;I)V

    .line 2755
    iget-object v0, p0, Lccsancom/google/android/material/textfield/TextInputLayout$SavedState;->placeholderText:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Lccsanandroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Lccsanandroid/os/Parcel;I)V

    .line 2756
    return-void
.end method
