.class public Lccsancom/google/android/material/internal/ParcelableSparseArray;
.super Lccsanandroid/util/SparseArray;
.source "ParcelableSparseArray.java"

# interfaces
.implements Lccsanandroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsanandroid/util/SparseArray<",
        "Lccsanandroid/os/Parcelable;",
        ">;",
        "Lccsanandroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lccsanandroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/os/Parcelable$Creator<",
            "Lccsancom/google/android/material/internal/ParcelableSparseArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    new-instance v0, Lccsancom/google/android/material/internal/ParcelableSparseArray$1;

    invoke-direct {v0}, Lccsancom/google/android/material/internal/ParcelableSparseArray$1;-><init>()V

    sput-object v0, Lccsancom/google/android/material/internal/ParcelableSparseArray;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lccsanandroid/util/SparseArray;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(Lccsanandroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 6
    .param p1, "source"    # Lccsanandroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 37
    invoke-direct {p0}, Lccsanandroid/util/SparseArray;-><init>()V

    .line 38
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v0

    .line 39
    .local v0, "size":I
    new-array v1, v0, [I

    .line 40
    .local v1, "keys":[I
    invoke-virtual {p1, v1}, Lccsanandroid/os/Parcel;->readIntArray([I)V

    .line 41
    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Lccsanandroid/os/Parcelable;

    move-result-object v2

    .line 42
    .local v2, "values":[Lccsanandroid/os/Parcelable;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 43
    aget v4, v1, v3

    aget-object v5, v2, v3

    invoke-virtual {p0, v4, v5}, Lccsancom/google/android/material/internal/ParcelableSparseArray;->put(ILjava/lang/Object;)V

    .line 42
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 45
    .end local v3    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Lccsanandroid/os/Parcel;I)V
    .locals 5
    .param p1, "parcel"    # Lccsanandroid/os/Parcel;
    .param p2, "flags"    # I

    .line 54
    invoke-virtual {p0}, Lccsancom/google/android/material/internal/ParcelableSparseArray;->size()I

    move-result v0

    .line 55
    .local v0, "size":I
    new-array v1, v0, [I

    .line 56
    .local v1, "keys":[I
    new-array v2, v0, [Lccsanandroid/os/Parcelable;

    .line 57
    .local v2, "values":[Lccsanandroid/os/Parcelable;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 58
    invoke-virtual {p0, v3}, Lccsancom/google/android/material/internal/ParcelableSparseArray;->keyAt(I)I

    move-result v4

    aput v4, v1, v3

    .line 59
    invoke-virtual {p0, v3}, Lccsancom/google/android/material/internal/ParcelableSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsanandroid/os/Parcelable;

    aput-object v4, v2, v3

    .line 57
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 61
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 62
    invoke-virtual {p1, v1}, Lccsanandroid/os/Parcel;->writeIntArray([I)V

    .line 63
    invoke-virtual {p1, v2, p2}, Lccsanandroid/os/Parcel;->writeParcelableArray([Lccsanandroid/os/Parcelable;I)V

    .line 64
    return-void
.end method
