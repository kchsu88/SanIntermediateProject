.class public Lccsancom/google/android/material/internal/ParcelableSparseBooleanArray;
.super Lccsanandroid/util/SparseBooleanArray;
.source "ParcelableSparseBooleanArray.java"

# interfaces
.implements Lccsanandroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lccsanandroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/os/Parcelable$Creator<",
            "Lccsancom/google/android/material/internal/ParcelableSparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    new-instance v0, Lccsancom/google/android/material/internal/ParcelableSparseBooleanArray$1;

    invoke-direct {v0}, Lccsancom/google/android/material/internal/ParcelableSparseBooleanArray$1;-><init>()V

    sput-object v0, Lccsancom/google/android/material/internal/ParcelableSparseBooleanArray;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lccsanandroid/util/SparseBooleanArray;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "initialCapacity"    # I

    .line 40
    invoke-direct {p0, p1}, Lccsanandroid/util/SparseBooleanArray;-><init>(I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lccsanandroid/util/SparseBooleanArray;)V
    .locals 3
    .param p1, "sparseBooleanArray"    # Lccsanandroid/util/SparseBooleanArray;

    .line 44
    invoke-virtual {p1}, Lccsanandroid/util/SparseBooleanArray;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lccsanandroid/util/SparseBooleanArray;-><init>(I)V

    .line 45
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lccsanandroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 46
    invoke-virtual {p1, v0}, Lccsanandroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p1, v0}, Lccsanandroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lccsancom/google/android/material/internal/ParcelableSparseBooleanArray;->put(IZ)V

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Lccsanandroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Lccsanandroid/os/Parcel;
    .param p2, "flags"    # I

    .line 57
    invoke-virtual {p0}, Lccsancom/google/android/material/internal/ParcelableSparseBooleanArray;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 58
    .local v0, "keys":[I
    invoke-virtual {p0}, Lccsancom/google/android/material/internal/ParcelableSparseBooleanArray;->size()I

    move-result v1

    new-array v1, v1, [Z

    .line 60
    .local v1, "values":[Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lccsancom/google/android/material/internal/ParcelableSparseBooleanArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 61
    invoke-virtual {p0, v2}, Lccsancom/google/android/material/internal/ParcelableSparseBooleanArray;->keyAt(I)I

    move-result v3

    aput v3, v0, v2

    .line 62
    invoke-virtual {p0, v2}, Lccsancom/google/android/material/internal/ParcelableSparseBooleanArray;->valueAt(I)Z

    move-result v3

    aput-boolean v3, v1, v2

    .line 60
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 65
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p0}, Lccsancom/google/android/material/internal/ParcelableSparseBooleanArray;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 66
    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeIntArray([I)V

    .line 67
    invoke-virtual {p1, v1}, Lccsanandroid/os/Parcel;->writeBooleanArray([Z)V

    .line 68
    return-void
.end method
