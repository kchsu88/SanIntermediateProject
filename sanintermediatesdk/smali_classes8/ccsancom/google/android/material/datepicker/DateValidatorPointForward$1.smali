.class final Lccsancom/google/android/material/datepicker/DateValidatorPointForward$1;
.super Ljava/lang/Object;
.source "DateValidatorPointForward.java"

# interfaces
.implements Lccsanandroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/datepicker/DateValidatorPointForward;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsanandroid/os/Parcelable$Creator<",
        "Lccsancom/google/android/material/datepicker/DateValidatorPointForward;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Lccsanandroid/os/Parcel;)Lccsancom/google/android/material/datepicker/DateValidatorPointForward;
    .locals 4
    .param p1, "source"    # Lccsanandroid/os/Parcel;

    .line 62
    new-instance v0, Lccsancom/google/android/material/datepicker/DateValidatorPointForward;

    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readLong()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lccsancom/google/android/material/datepicker/DateValidatorPointForward;-><init>(JLccsancom/google/android/material/datepicker/DateValidatorPointForward$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Lccsanandroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 58
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/datepicker/DateValidatorPointForward$1;->createFromParcel(Lccsanandroid/os/Parcel;)Lccsancom/google/android/material/datepicker/DateValidatorPointForward;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lccsancom/google/android/material/datepicker/DateValidatorPointForward;
    .locals 1
    .param p1, "size"    # I

    .line 68
    new-array v0, p1, [Lccsancom/google/android/material/datepicker/DateValidatorPointForward;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 58
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/datepicker/DateValidatorPointForward$1;->newArray(I)[Lccsancom/google/android/material/datepicker/DateValidatorPointForward;

    move-result-object p1

    return-object p1
.end method
