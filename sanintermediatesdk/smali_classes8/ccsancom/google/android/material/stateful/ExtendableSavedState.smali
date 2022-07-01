.class public Lccsancom/google/android/material/stateful/ExtendableSavedState;
.super Lccsanandroidx/customview/view/AbsSavedState;
.source "ExtendableSavedState.java"


# static fields
.field public static final CREATOR:Lccsanandroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/os/Parcelable$Creator<",
            "Lccsancom/google/android/material/stateful/ExtendableSavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final extendableStates:Lccsanandroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Lccsanandroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 91
    new-instance v0, Lccsancom/google/android/material/stateful/ExtendableSavedState$1;

    invoke-direct {v0}, Lccsancom/google/android/material/stateful/ExtendableSavedState$1;-><init>()V

    sput-object v0, Lccsancom/google/android/material/stateful/ExtendableSavedState;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Lccsanandroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 7
    .param p1, "in"    # Lccsanandroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 46
    invoke-direct {p0, p1, p2}, Lccsanandroidx/customview/view/AbsSavedState;-><init>(Lccsanandroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 48
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v0

    .line 50
    .local v0, "size":I
    new-array v1, v0, [Ljava/lang/String;

    .line 51
    .local v1, "keys":[Ljava/lang/String;
    invoke-virtual {p1, v1}, Lccsanandroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 53
    new-array v2, v0, [Lccsanandroid/os/Bundle;

    .line 54
    .local v2, "states":[Lccsanandroid/os/Bundle;
    sget-object v3, Lccsanandroid/os/Bundle;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2, v3}, Lccsanandroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Lccsanandroid/os/Parcelable$Creator;)V

    .line 56
    new-instance v3, Lccsanandroidx/collection/SimpleArrayMap;

    invoke-direct {v3, v0}, Lccsanandroidx/collection/SimpleArrayMap;-><init>(I)V

    iput-object v3, p0, Lccsancom/google/android/material/stateful/ExtendableSavedState;->extendableStates:Lccsanandroidx/collection/SimpleArrayMap;

    .line 57
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 58
    iget-object v4, p0, Lccsancom/google/android/material/stateful/ExtendableSavedState;->extendableStates:Lccsanandroidx/collection/SimpleArrayMap;

    aget-object v5, v1, v3

    aget-object v6, v2, v3

    invoke-virtual {v4, v5, v6}, Lccsanandroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 60
    .end local v3    # "i":I
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lccsanandroid/os/Parcel;Ljava/lang/ClassLoader;Lccsancom/google/android/material/stateful/ExtendableSavedState$1;)V
    .locals 0
    .param p1, "x0"    # Lccsanandroid/os/Parcel;
    .param p2, "x1"    # Ljava/lang/ClassLoader;
    .param p3, "x2"    # Lccsancom/google/android/material/stateful/ExtendableSavedState$1;

    .line 36
    invoke-direct {p0, p1, p2}, Lccsancom/google/android/material/stateful/ExtendableSavedState;-><init>(Lccsanandroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Lccsanandroid/os/Parcelable;)V
    .locals 1
    .param p1, "superState"    # Lccsanandroid/os/Parcelable;

    .line 41
    invoke-direct {p0, p1}, Lccsanandroidx/customview/view/AbsSavedState;-><init>(Lccsanandroid/os/Parcelable;)V

    .line 42
    new-instance v0, Lccsanandroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Lccsanandroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/stateful/ExtendableSavedState;->extendableStates:Lccsanandroidx/collection/SimpleArrayMap;

    .line 43
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExtendableSavedState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " states="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/google/android/material/stateful/ExtendableSavedState;->extendableStates:Lccsanandroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    return-object v0
.end method

.method public writeToParcel(Lccsanandroid/os/Parcel;I)V
    .locals 5
    .param p1, "out"    # Lccsanandroid/os/Parcel;
    .param p2, "flags"    # I

    .line 64
    invoke-super {p0, p1, p2}, Lccsanandroidx/customview/view/AbsSavedState;->writeToParcel(Lccsanandroid/os/Parcel;I)V

    .line 66
    iget-object v0, p0, Lccsancom/google/android/material/stateful/ExtendableSavedState;->extendableStates:Lccsanandroidx/collection/SimpleArrayMap;

    invoke-virtual {v0}, Lccsanandroidx/collection/SimpleArrayMap;->size()I

    move-result v0

    .line 67
    .local v0, "size":I
    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 69
    new-array v1, v0, [Ljava/lang/String;

    .line 70
    .local v1, "keys":[Ljava/lang/String;
    new-array v2, v0, [Lccsanandroid/os/Bundle;

    .line 72
    .local v2, "states":[Lccsanandroid/os/Bundle;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 73
    iget-object v4, p0, Lccsancom/google/android/material/stateful/ExtendableSavedState;->extendableStates:Lccsanandroidx/collection/SimpleArrayMap;

    invoke-virtual {v4, v3}, Lccsanandroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v1, v3

    .line 74
    iget-object v4, p0, Lccsancom/google/android/material/stateful/ExtendableSavedState;->extendableStates:Lccsanandroidx/collection/SimpleArrayMap;

    invoke-virtual {v4, v3}, Lccsanandroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsanandroid/os/Bundle;

    aput-object v4, v2, v3

    .line 72
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 77
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {p1, v1}, Lccsanandroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 78
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lccsanandroid/os/Parcel;->writeTypedArray([Lccsanandroid/os/Parcelable;I)V

    .line 79
    return-void
.end method
