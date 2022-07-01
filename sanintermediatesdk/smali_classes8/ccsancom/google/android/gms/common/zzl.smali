.class public final Lccsancom/google/android/gms/common/zzl;
.super Ljava/lang/Object;

# interfaces
.implements Lccsanandroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsanandroid/os/Parcelable$Creator<",
        "Lccsancom/google/android/gms/common/zzk;",
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
    .locals 6

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
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v2, v1

    const/4 v3, 0x0

    .line 11
    :goto_0
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_0

    .line 12
    invoke-static {p1}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Lccsanandroid/os/Parcel;)I

    move-result v4

    .line 13
    invoke-static {v4}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 23
    invoke-static {p1, v4}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Lccsanandroid/os/Parcel;I)V

    .line 24
    goto :goto_0

    .line 20
    :pswitch_0
    nop

    .line 21
    invoke-static {p1, v4}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readBoolean(Lccsanandroid/os/Parcel;I)Z

    move-result v3

    .line 22
    goto :goto_0

    .line 17
    :pswitch_1
    nop

    .line 18
    invoke-static {p1, v4}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readIBinder(Lccsanandroid/os/Parcel;I)Lccsanandroid/os/IBinder;

    move-result-object v2

    .line 19
    goto :goto_0

    .line 14
    :pswitch_2
    nop

    .line 15
    invoke-static {p1, v4}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Lccsanandroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v1

    .line 16
    goto :goto_0

    .line 25
    :cond_0
    invoke-static {p1, v0}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Lccsanandroid/os/Parcel;I)V

    .line 26
    new-instance p1, Lccsancom/google/android/gms/common/zzk;

    invoke-direct {p1, v1, v2, v3}, Lccsancom/google/android/gms/common/zzk;-><init>(Ljava/lang/String;Lccsanandroid/os/IBinder;Z)V

    .line 27
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 3
    nop

    .line 4
    new-array p1, p1, [Lccsancom/google/android/gms/common/zzk;

    .line 5
    return-object p1
.end method
