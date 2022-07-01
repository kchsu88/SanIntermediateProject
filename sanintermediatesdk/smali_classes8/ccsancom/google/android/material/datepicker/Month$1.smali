.class final Lccsancom/google/android/material/datepicker/Month$1;
.super Ljava/lang/Object;
.source "Month.java"

# interfaces
.implements Lccsanandroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/datepicker/Month;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsanandroid/os/Parcelable$Creator<",
        "Lccsancom/google/android/material/datepicker/Month;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Lccsanandroid/os/Parcel;)Lccsancom/google/android/material/datepicker/Month;
    .locals 3
    .param p1, "source"    # Lccsanandroid/os/Parcel;

    .line 207
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v0

    .line 208
    .local v0, "year":I
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v1

    .line 209
    .local v1, "month":I
    invoke-static {v0, v1}, Lccsancom/google/android/material/datepicker/Month;->create(II)Lccsancom/google/android/material/datepicker/Month;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic createFromParcel(Lccsanandroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 203
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/datepicker/Month$1;->createFromParcel(Lccsanandroid/os/Parcel;)Lccsancom/google/android/material/datepicker/Month;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lccsancom/google/android/material/datepicker/Month;
    .locals 1
    .param p1, "size"    # I

    .line 215
    new-array v0, p1, [Lccsancom/google/android/material/datepicker/Month;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 203
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/datepicker/Month$1;->newArray(I)[Lccsancom/google/android/material/datepicker/Month;

    move-result-object p1

    return-object p1
.end method
