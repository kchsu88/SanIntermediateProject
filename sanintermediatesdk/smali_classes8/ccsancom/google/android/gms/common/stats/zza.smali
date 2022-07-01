.class public final Lccsancom/google/android/gms/common/stats/zza;
.super Ljava/lang/Object;

# interfaces
.implements Lccsanandroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsanandroid/os/Parcelable$Creator<",
        "Lccsancom/google/android/gms/common/stats/WakeLockEvent;",
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
    .locals 25

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
    nop

    .line 19
    nop

    .line 20
    nop

    .line 21
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-wide v9, v2

    move-wide/from16 v16, v9

    move-wide/from16 v22, v16

    move-object v12, v5

    move-object v14, v12

    move-object v15, v14

    move-object/from16 v19, v15

    move-object/from16 v20, v19

    move-object/from16 v24, v20

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x0

    .line 22
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lccsanandroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v1, :cond_0

    .line 23
    invoke-static/range {p1 .. p1}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Lccsanandroid/os/Parcel;)I

    move-result v2

    .line 24
    invoke-static {v2}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 67
    :pswitch_0
    invoke-static {v0, v2}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Lccsanandroid/os/Parcel;I)V

    .line 68
    goto :goto_0

    .line 64
    :pswitch_1
    nop

    .line 65
    invoke-static {v0, v2}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Lccsanandroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v24

    .line 66
    goto :goto_0

    .line 61
    :pswitch_2
    nop

    .line 62
    invoke-static {v0, v2}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLong(Lccsanandroid/os/Parcel;I)J

    move-result-wide v22

    .line 63
    goto :goto_0

    .line 58
    :pswitch_3
    nop

    .line 59
    invoke-static {v0, v2}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readFloat(Lccsanandroid/os/Parcel;I)F

    move-result v21

    .line 60
    goto :goto_0

    .line 55
    :pswitch_4
    nop

    .line 56
    invoke-static {v0, v2}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Lccsanandroid/os/Parcel;I)I

    move-result v18

    .line 57
    goto :goto_0

    .line 52
    :pswitch_5
    nop

    .line 53
    invoke-static {v0, v2}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Lccsanandroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v20

    .line 54
    goto :goto_0

    .line 49
    :pswitch_6
    nop

    .line 50
    invoke-static {v0, v2}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Lccsanandroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v15

    .line 51
    goto :goto_0

    .line 46
    :pswitch_7
    nop

    .line 47
    invoke-static {v0, v2}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Lccsanandroid/os/Parcel;I)I

    move-result v11

    .line 48
    goto :goto_0

    .line 43
    :pswitch_8
    nop

    .line 44
    invoke-static {v0, v2}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Lccsanandroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v19

    .line 45
    goto :goto_0

    .line 40
    :pswitch_9
    nop

    .line 41
    invoke-static {v0, v2}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLong(Lccsanandroid/os/Parcel;I)J

    move-result-wide v16

    .line 42
    goto :goto_0

    .line 37
    :pswitch_a
    nop

    .line 38
    invoke-static {v0, v2}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createStringList(Lccsanandroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v14

    .line 39
    goto :goto_0

    .line 34
    :pswitch_b
    nop

    .line 35
    invoke-static {v0, v2}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Lccsanandroid/os/Parcel;I)I

    move-result v13

    .line 36
    goto :goto_0

    .line 31
    :pswitch_c
    nop

    .line 32
    invoke-static {v0, v2}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Lccsanandroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v12

    .line 33
    goto :goto_0

    .line 28
    :pswitch_d
    nop

    .line 29
    invoke-static {v0, v2}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readLong(Lccsanandroid/os/Parcel;I)J

    move-result-wide v9

    .line 30
    goto :goto_0

    .line 25
    :pswitch_e
    nop

    .line 26
    invoke-static {v0, v2}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Lccsanandroid/os/Parcel;I)I

    move-result v8

    .line 27
    goto :goto_0

    .line 69
    :cond_0
    invoke-static {v0, v1}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Lccsanandroid/os/Parcel;I)V

    .line 70
    new-instance v0, Lccsancom/google/android/gms/common/stats/WakeLockEvent;

    move-object v7, v0

    invoke-direct/range {v7 .. v24}, Lccsancom/google/android/gms/common/stats/WakeLockEvent;-><init>(IJILjava/lang/String;ILjava/util/List;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;FJLjava/lang/String;)V

    .line 71
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
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
    new-array p1, p1, [Lccsancom/google/android/gms/common/stats/WakeLockEvent;

    .line 5
    return-object p1
.end method
