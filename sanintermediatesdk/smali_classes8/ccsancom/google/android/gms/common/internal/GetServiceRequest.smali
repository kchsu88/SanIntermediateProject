.class public Lccsancom/google/android/gms/common/internal/GetServiceRequest;
.super Lccsancom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Lccsanandroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/os/Parcelable$Creator<",
            "Lccsancom/google/android/gms/common/internal/GetServiceRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final version:I

.field private final zzdf:I

.field private zzdg:I

.field zzdh:Ljava/lang/String;

.field zzdi:Lccsanandroid/os/IBinder;

.field zzdj:[Lccsancom/google/android/gms/common/api/Scope;

.field zzdk:Lccsanandroid/os/Bundle;

.field zzdl:Lccsanandroid/accounts/Account;

.field zzdm:[Lccsancom/google/android/gms/common/Feature;

.field zzdn:[Lccsancom/google/android/gms/common/Feature;

.field private zzdo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lccsancom/google/android/gms/common/internal/zzd;

    invoke-direct {v0}, Lccsancom/google/android/gms/common/internal/zzd;-><init>()V

    sput-object v0, Lccsancom/google/android/gms/common/internal/GetServiceRequest;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lccsancom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    const/4 v0, 0x4

    iput v0, p0, Lccsancom/google/android/gms/common/internal/GetServiceRequest;->version:I

    .line 3
    sget v0, Lccsancom/google/android/gms/common/GoogleApiAvailabilityLight;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    iput v0, p0, Lccsancom/google/android/gms/common/internal/GetServiceRequest;->zzdg:I

    .line 4
    iput p1, p0, Lccsancom/google/android/gms/common/internal/GetServiceRequest;->zzdf:I

    .line 5
    const/4 p1, 0x1

    iput-boolean p1, p0, Lccsancom/google/android/gms/common/internal/GetServiceRequest;->zzdo:Z

    .line 6
    return-void
.end method

.method constructor <init>(IIILjava/lang/String;Lccsanandroid/os/IBinder;[Lccsancom/google/android/gms/common/api/Scope;Lccsanandroid/os/Bundle;Lccsanandroid/accounts/Account;[Lccsancom/google/android/gms/common/Feature;[Lccsancom/google/android/gms/common/Feature;Z)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lccsancom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 8
    iput p1, p0, Lccsancom/google/android/gms/common/internal/GetServiceRequest;->version:I

    .line 9
    iput p2, p0, Lccsancom/google/android/gms/common/internal/GetServiceRequest;->zzdf:I

    .line 10
    iput p3, p0, Lccsancom/google/android/gms/common/internal/GetServiceRequest;->zzdg:I

    .line 11
    const-string p2, "com.google.android.gms"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 12
    iput-object p2, p0, Lccsancom/google/android/gms/common/internal/GetServiceRequest;->zzdh:Ljava/lang/String;

    goto :goto_0

    .line 13
    :cond_0
    iput-object p4, p0, Lccsancom/google/android/gms/common/internal/GetServiceRequest;->zzdh:Ljava/lang/String;

    .line 14
    :goto_0
    const/4 p2, 0x2

    if-ge p1, p2, :cond_2

    .line 15
    nop

    .line 16
    const/4 p1, 0x0

    .line 17
    if-eqz p5, :cond_1

    .line 18
    nop

    .line 19
    invoke-static {p5}, Lccsancom/google/android/gms/common/internal/IAccountAccessor$Stub;->asInterface(Lccsanandroid/os/IBinder;)Lccsancom/google/android/gms/common/internal/IAccountAccessor;

    move-result-object p1

    .line 20
    invoke-static {p1}, Lccsancom/google/android/gms/common/internal/AccountAccessor;->getAccountBinderSafe(Lccsancom/google/android/gms/common/internal/IAccountAccessor;)Lccsanandroid/accounts/Account;

    move-result-object p1

    .line 21
    :cond_1
    nop

    .line 22
    iput-object p1, p0, Lccsancom/google/android/gms/common/internal/GetServiceRequest;->zzdl:Lccsanandroid/accounts/Account;

    goto :goto_1

    .line 23
    :cond_2
    iput-object p5, p0, Lccsancom/google/android/gms/common/internal/GetServiceRequest;->zzdi:Lccsanandroid/os/IBinder;

    .line 24
    iput-object p8, p0, Lccsancom/google/android/gms/common/internal/GetServiceRequest;->zzdl:Lccsanandroid/accounts/Account;

    .line 25
    :goto_1
    iput-object p6, p0, Lccsancom/google/android/gms/common/internal/GetServiceRequest;->zzdj:[Lccsancom/google/android/gms/common/api/Scope;

    .line 26
    iput-object p7, p0, Lccsancom/google/android/gms/common/internal/GetServiceRequest;->zzdk:Lccsanandroid/os/Bundle;

    .line 27
    iput-object p9, p0, Lccsancom/google/android/gms/common/internal/GetServiceRequest;->zzdm:[Lccsancom/google/android/gms/common/Feature;

    .line 28
    iput-object p10, p0, Lccsancom/google/android/gms/common/internal/GetServiceRequest;->zzdn:[Lccsancom/google/android/gms/common/Feature;

    .line 29
    iput-boolean p11, p0, Lccsancom/google/android/gms/common/internal/GetServiceRequest;->zzdo:Z

    .line 30
    return-void
.end method


# virtual methods
.method public getExtraArgs()Lccsanandroid/os/Bundle;
    .locals 1

    .line 31
    iget-object v0, p0, Lccsancom/google/android/gms/common/internal/GetServiceRequest;->zzdk:Lccsanandroid/os/Bundle;

    return-object v0
.end method

.method public writeToParcel(Lccsanandroid/os/Parcel;I)V
    .locals 4

    .line 32
    nop

    .line 33
    invoke-static {p1}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Lccsanandroid/os/Parcel;)I

    move-result v0

    .line 34
    iget v1, p0, Lccsancom/google/android/gms/common/internal/GetServiceRequest;->version:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Lccsanandroid/os/Parcel;II)V

    .line 35
    iget v1, p0, Lccsancom/google/android/gms/common/internal/GetServiceRequest;->zzdf:I

    const/4 v2, 0x2

    invoke-static {p1, v2, v1}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Lccsanandroid/os/Parcel;II)V

    .line 36
    iget v1, p0, Lccsancom/google/android/gms/common/internal/GetServiceRequest;->zzdg:I

    const/4 v2, 0x3

    invoke-static {p1, v2, v1}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Lccsanandroid/os/Parcel;II)V

    .line 37
    iget-object v1, p0, Lccsancom/google/android/gms/common/internal/GetServiceRequest;->zzdh:Ljava/lang/String;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Lccsanandroid/os/Parcel;ILjava/lang/String;Z)V

    .line 38
    iget-object v1, p0, Lccsancom/google/android/gms/common/internal/GetServiceRequest;->zzdi:Lccsanandroid/os/IBinder;

    const/4 v2, 0x5

    invoke-static {p1, v2, v1, v3}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Lccsanandroid/os/Parcel;ILccsanandroid/os/IBinder;Z)V

    .line 39
    iget-object v1, p0, Lccsancom/google/android/gms/common/internal/GetServiceRequest;->zzdj:[Lccsancom/google/android/gms/common/api/Scope;

    const/4 v2, 0x6

    invoke-static {p1, v2, v1, p2, v3}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedArray(Lccsanandroid/os/Parcel;I[Lccsanandroid/os/Parcelable;IZ)V

    .line 40
    iget-object v1, p0, Lccsancom/google/android/gms/common/internal/GetServiceRequest;->zzdk:Lccsanandroid/os/Bundle;

    const/4 v2, 0x7

    invoke-static {p1, v2, v1, v3}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBundle(Lccsanandroid/os/Parcel;ILccsanandroid/os/Bundle;Z)V

    .line 41
    iget-object v1, p0, Lccsancom/google/android/gms/common/internal/GetServiceRequest;->zzdl:Lccsanandroid/accounts/Account;

    const/16 v2, 0x8

    invoke-static {p1, v2, v1, p2, v3}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Lccsanandroid/os/Parcel;ILccsanandroid/os/Parcelable;IZ)V

    .line 42
    iget-object v1, p0, Lccsancom/google/android/gms/common/internal/GetServiceRequest;->zzdm:[Lccsancom/google/android/gms/common/Feature;

    const/16 v2, 0xa

    invoke-static {p1, v2, v1, p2, v3}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedArray(Lccsanandroid/os/Parcel;I[Lccsanandroid/os/Parcelable;IZ)V

    .line 43
    iget-object v1, p0, Lccsancom/google/android/gms/common/internal/GetServiceRequest;->zzdn:[Lccsancom/google/android/gms/common/Feature;

    const/16 v2, 0xb

    invoke-static {p1, v2, v1, p2, v3}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedArray(Lccsanandroid/os/Parcel;I[Lccsanandroid/os/Parcelable;IZ)V

    .line 44
    iget-boolean p2, p0, Lccsancom/google/android/gms/common/internal/GetServiceRequest;->zzdo:Z

    const/16 v1, 0xc

    invoke-static {p1, v1, p2}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Lccsanandroid/os/Parcel;IZ)V

    .line 45
    invoke-static {p1, v0}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Lccsanandroid/os/Parcel;I)V

    .line 46
    return-void
.end method
