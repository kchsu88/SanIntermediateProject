.class public final Lccsancom/google/android/gms/common/internal/zzs;
.super Ljava/lang/Object;

# interfaces
.implements Lccsanandroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsanandroid/os/Parcelable$Creator<",
        "Lccsancom/google/android/gms/common/internal/zzr;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Lccsanandroid/os/Parcel;)Ljava/lang/Object;
    .locals 4

    .line 6
    nop

    .line 7
    invoke-static {p1}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Lccsanandroid/os/Parcel;)I

    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_0

    .line 10
    invoke-static {p1}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Lccsanandroid/os/Parcel;)I

    move-result v2

    .line 11
    invoke-static {v2}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 15
    invoke-static {p1, v2}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Lccsanandroid/os/Parcel;I)V

    .line 16
    goto :goto_0

    .line 12
    :pswitch_0
    nop

    .line 13
    invoke-static {p1, v2}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Lccsanandroid/os/Parcel;I)I

    move-result v1

    .line 14
    goto :goto_0

    .line 17
    :cond_0
    invoke-static {p1, v0}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Lccsanandroid/os/Parcel;I)V

    .line 18
    new-instance p1, Lccsancom/google/android/gms/common/internal/zzr;

    invoke-direct {p1, v1}, Lccsancom/google/android/gms/common/internal/zzr;-><init>(I)V

    .line 19
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 3
    nop

    .line 4
    new-array p1, p1, [Lccsancom/google/android/gms/common/internal/zzr;

    .line 5
    return-object p1
.end method
