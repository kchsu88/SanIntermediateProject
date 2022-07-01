.class public final Lccsancom/google/android/gms/common/api/zzb;
.super Ljava/lang/Object;

# interfaces
.implements Lccsanandroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsanandroid/os/Parcelable$Creator<",
        "Lccsancom/google/android/gms/common/api/Status;",
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
    .locals 7

    .line 6
    nop

    .line 7
    invoke-static {p1}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Lccsanandroid/os/Parcel;)I

    move-result v0

    .line 8
    nop

    .line 9
    nop

    .line 10
    nop

    .line 11
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 12
    :goto_0
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v0, :cond_0

    .line 13
    invoke-static {p1}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Lccsanandroid/os/Parcel;)I

    move-result v5

    .line 14
    invoke-static {v5}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 27
    invoke-static {p1, v5}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Lccsanandroid/os/Parcel;I)V

    .line 28
    goto :goto_0

    .line 24
    :sswitch_0
    nop

    .line 25
    invoke-static {p1, v5}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Lccsanandroid/os/Parcel;I)I

    move-result v3

    .line 26
    goto :goto_0

    .line 21
    :sswitch_1
    sget-object v2, Lccsanandroid/app/PendingIntent;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    .line 22
    invoke-static {p1, v5, v2}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createParcelable(Lccsanandroid/os/Parcel;ILccsanandroid/os/Parcelable$Creator;)Lccsanandroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lccsanandroid/app/PendingIntent;

    .line 23
    goto :goto_0

    .line 18
    :sswitch_2
    nop

    .line 19
    invoke-static {p1, v5}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Lccsanandroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v1

    .line 20
    goto :goto_0

    .line 15
    :sswitch_3
    nop

    .line 16
    invoke-static {p1, v5}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Lccsanandroid/os/Parcel;I)I

    move-result v4

    .line 17
    goto :goto_0

    .line 29
    :cond_0
    invoke-static {p1, v0}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Lccsanandroid/os/Parcel;I)V

    .line 30
    new-instance p1, Lccsancom/google/android/gms/common/api/Status;

    invoke-direct {p1, v3, v4, v1, v2}, Lccsancom/google/android/gms/common/api/Status;-><init>(IILjava/lang/String;Lccsanandroid/app/PendingIntent;)V

    .line 31
    return-object p1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 3
    nop

    .line 4
    new-array p1, p1, [Lccsancom/google/android/gms/common/api/Status;

    .line 5
    return-object p1
.end method
