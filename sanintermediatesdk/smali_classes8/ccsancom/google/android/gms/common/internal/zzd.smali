.class public final Lccsancom/google/android/gms/common/internal/zzd;
.super Ljava/lang/Object;

# interfaces
.implements Lccsanandroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsanandroid/os/Parcelable$Creator<",
        "Lccsancom/google/android/gms/common/internal/GetServiceRequest;",
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
    .locals 16

    .line 6
    move-object/from16 v0, p1

    .line 7
    invoke-static/range {p1 .. p1}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Lccsanandroid/os/Parcel;)I

    move-result v1

    .line 8
    nop

    .line 9
    nop

    .line 10
    nop

    .line 11
    nop

    .line 12
    nop

    .line 13
    nop

    .line 14
    nop

    .line 15
    nop

    .line 16
    nop

    .line 17
    nop

    .line 18
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v8, v3

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v15, 0x0

    .line 19
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lccsanandroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v1, :cond_0

    .line 20
    invoke-static/range {p1 .. p1}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Lccsanandroid/os/Parcel;)I

    move-result v2

    .line 21
    invoke-static {v2}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 55
    :pswitch_0
    invoke-static {v0, v2}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Lccsanandroid/os/Parcel;I)V

    .line 56
    goto :goto_0

    .line 52
    :pswitch_1
    nop

    .line 53
    invoke-static {v0, v2}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readBoolean(Lccsanandroid/os/Parcel;I)Z

    move-result v15

    .line 54
    goto :goto_0

    .line 49
    :pswitch_2
    sget-object v3, Lccsancom/google/android/gms/common/Feature;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    .line 50
    invoke-static {v0, v2, v3}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createTypedArray(Lccsanandroid/os/Parcel;ILccsanandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, [Lccsancom/google/android/gms/common/Feature;

    .line 51
    goto :goto_0

    .line 46
    :pswitch_3
    sget-object v3, Lccsancom/google/android/gms/common/Feature;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    .line 47
    invoke-static {v0, v2, v3}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createTypedArray(Lccsanandroid/os/Parcel;ILccsanandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, [Lccsancom/google/android/gms/common/Feature;

    .line 48
    goto :goto_0

    .line 43
    :pswitch_4
    sget-object v3, Lccsanandroid/accounts/Account;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    .line 44
    invoke-static {v0, v2, v3}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createParcelable(Lccsanandroid/os/Parcel;ILccsanandroid/os/Parcelable$Creator;)Lccsanandroid/os/Parcelable;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lccsanandroid/accounts/Account;

    .line 45
    goto :goto_0

    .line 40
    :pswitch_5
    nop

    .line 41
    invoke-static {v0, v2}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createBundle(Lccsanandroid/os/Parcel;I)Lccsanandroid/os/Bundle;

    move-result-object v11

    .line 42
    goto :goto_0

    .line 37
    :pswitch_6
    sget-object v3, Lccsancom/google/android/gms/common/api/Scope;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    .line 38
    invoke-static {v0, v2, v3}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createTypedArray(Lccsanandroid/os/Parcel;ILccsanandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, [Lccsancom/google/android/gms/common/api/Scope;

    .line 39
    goto :goto_0

    .line 34
    :pswitch_7
    nop

    .line 35
    invoke-static {v0, v2}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readIBinder(Lccsanandroid/os/Parcel;I)Lccsanandroid/os/IBinder;

    move-result-object v9

    .line 36
    goto :goto_0

    .line 31
    :pswitch_8
    nop

    .line 32
    invoke-static {v0, v2}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Lccsanandroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v8

    .line 33
    goto :goto_0

    .line 28
    :pswitch_9
    nop

    .line 29
    invoke-static {v0, v2}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Lccsanandroid/os/Parcel;I)I

    move-result v7

    .line 30
    goto :goto_0

    .line 25
    :pswitch_a
    nop

    .line 26
    invoke-static {v0, v2}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Lccsanandroid/os/Parcel;I)I

    move-result v6

    .line 27
    goto :goto_0

    .line 22
    :pswitch_b
    nop

    .line 23
    invoke-static {v0, v2}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Lccsanandroid/os/Parcel;I)I

    move-result v5

    .line 24
    goto :goto_0

    .line 57
    :cond_0
    invoke-static {v0, v1}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Lccsanandroid/os/Parcel;I)V

    .line 58
    new-instance v0, Lccsancom/google/android/gms/common/internal/GetServiceRequest;

    move-object v4, v0

    invoke-direct/range {v4 .. v15}, Lccsancom/google/android/gms/common/internal/GetServiceRequest;-><init>(IIILjava/lang/String;Lccsanandroid/os/IBinder;[Lccsancom/google/android/gms/common/api/Scope;Lccsanandroid/os/Bundle;Lccsanandroid/accounts/Account;[Lccsancom/google/android/gms/common/Feature;[Lccsancom/google/android/gms/common/Feature;Z)V

    .line 59
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 3
    nop

    .line 4
    new-array p1, p1, [Lccsancom/google/android/gms/common/internal/GetServiceRequest;

    .line 5
    return-object p1
.end method
