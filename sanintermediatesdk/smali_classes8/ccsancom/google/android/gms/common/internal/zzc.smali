.class public final Lccsancom/google/android/gms/common/internal/zzc;
.super Ljava/lang/Object;

# interfaces
.implements Lccsanandroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsanandroid/os/Parcelable$Creator<",
        "Lccsancom/google/android/gms/common/internal/zzb;",
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
    .locals 5

    .line 6
    nop

    .line 7
    invoke-static {p1}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Lccsanandroid/os/Parcel;)I

    move-result v0

    .line 8
    nop

    .line 9
    const/4 v1, 0x0

    move-object v2, v1

    .line 10
    :goto_0
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_0

    .line 11
    invoke-static {p1}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Lccsanandroid/os/Parcel;)I

    move-result v3

    .line 12
    invoke-static {v3}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 19
    invoke-static {p1, v3}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Lccsanandroid/os/Parcel;I)V

    .line 20
    goto :goto_0

    .line 16
    :pswitch_0
    sget-object v2, Lccsancom/google/android/gms/common/Feature;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    .line 17
    invoke-static {p1, v3, v2}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createTypedArray(Lccsanandroid/os/Parcel;ILccsanandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lccsancom/google/android/gms/common/Feature;

    .line 18
    goto :goto_0

    .line 13
    :pswitch_1
    nop

    .line 14
    invoke-static {p1, v3}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createBundle(Lccsanandroid/os/Parcel;I)Lccsanandroid/os/Bundle;

    move-result-object v1

    .line 15
    goto :goto_0

    .line 21
    :cond_0
    invoke-static {p1, v0}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Lccsanandroid/os/Parcel;I)V

    .line 22
    new-instance p1, Lccsancom/google/android/gms/common/internal/zzb;

    invoke-direct {p1, v1, v2}, Lccsancom/google/android/gms/common/internal/zzb;-><init>(Lccsanandroid/os/Bundle;[Lccsancom/google/android/gms/common/Feature;)V

    .line 23
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 3
    nop

    .line 4
    new-array p1, p1, [Lccsancom/google/android/gms/common/internal/zzb;

    .line 5
    return-object p1
.end method
