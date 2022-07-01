.class final Lccsancom/google/android/material/internal/ParcelableSparseIntArray$1;
.super Ljava/lang/Object;
.source "ParcelableSparseIntArray.java"

# interfaces
.implements Lccsanandroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/internal/ParcelableSparseIntArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsanandroid/os/Parcelable$Creator<",
        "Lccsancom/google/android/material/internal/ParcelableSparseIntArray;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Lccsanandroid/os/Parcel;)Lccsancom/google/android/material/internal/ParcelableSparseIntArray;
    .locals 7
    .param p1, "source"    # Lccsanandroid/os/Parcel;

    .line 75
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v0

    .line 76
    .local v0, "size":I
    new-instance v1, Lccsancom/google/android/material/internal/ParcelableSparseIntArray;

    invoke-direct {v1, v0}, Lccsancom/google/android/material/internal/ParcelableSparseIntArray;-><init>(I)V

    .line 78
    .local v1, "read":Lccsancom/google/android/material/internal/ParcelableSparseIntArray;
    new-array v2, v0, [I

    .line 79
    .local v2, "keys":[I
    new-array v3, v0, [I

    .line 81
    .local v3, "values":[I
    invoke-virtual {p1, v2}, Lccsanandroid/os/Parcel;->readIntArray([I)V

    .line 82
    invoke-virtual {p1, v3}, Lccsanandroid/os/Parcel;->readIntArray([I)V

    .line 84
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_0

    .line 85
    aget v5, v2, v4

    aget v6, v3, v4

    invoke-virtual {v1, v5, v6}, Lccsancom/google/android/material/internal/ParcelableSparseIntArray;->put(II)V

    .line 84
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 88
    .end local v4    # "i":I
    :cond_0
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Lccsanandroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 71
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/internal/ParcelableSparseIntArray$1;->createFromParcel(Lccsanandroid/os/Parcel;)Lccsancom/google/android/material/internal/ParcelableSparseIntArray;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lccsancom/google/android/material/internal/ParcelableSparseIntArray;
    .locals 1
    .param p1, "size"    # I

    .line 94
    new-array v0, p1, [Lccsancom/google/android/material/internal/ParcelableSparseIntArray;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 71
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/internal/ParcelableSparseIntArray$1;->newArray(I)[Lccsancom/google/android/material/internal/ParcelableSparseIntArray;

    move-result-object p1

    return-object p1
.end method
