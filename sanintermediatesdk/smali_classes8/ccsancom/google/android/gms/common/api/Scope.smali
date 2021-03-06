.class public final Lccsancom/google/android/gms/common/api/Scope;
.super Lccsancom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Lccsancom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field public static final CREATOR:Lccsanandroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/os/Parcelable$Creator<",
            "Lccsancom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzap:Ljava/lang/String;

.field private final zzg:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lccsancom/google/android/gms/common/api/zza;

    invoke-direct {v0}, Lccsancom/google/android/gms/common/api/zza;-><init>()V

    sput-object v0, Lccsancom/google/android/gms/common/api/Scope;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lccsancom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    const-string/jumbo v0, "scopeUri must not be null or empty"

    invoke-static {p2, v0}, Lccsancom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 3
    iput p1, p0, Lccsancom/google/android/gms/common/api/Scope;->zzg:I

    .line 4
    iput-object p2, p0, Lccsancom/google/android/gms/common/api/Scope;->zzap:Ljava/lang/String;

    .line 5
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 6
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lccsancom/google/android/gms/common/api/Scope;-><init>(ILjava/lang/String;)V

    .line 7
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 9
    if-ne p0, p1, :cond_0

    .line 10
    const/4 p1, 0x1

    return p1

    .line 11
    :cond_0
    instance-of v0, p1, Lccsancom/google/android/gms/common/api/Scope;

    if-nez v0, :cond_1

    .line 12
    const/4 p1, 0x0

    return p1

    .line 13
    :cond_1
    iget-object v0, p0, Lccsancom/google/android/gms/common/api/Scope;->zzap:Ljava/lang/String;

    check-cast p1, Lccsancom/google/android/gms/common/api/Scope;

    iget-object p1, p1, Lccsancom/google/android/gms/common/api/Scope;->zzap:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getScopeUri()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lccsancom/google/android/gms/common/api/Scope;->zzap:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .line 14
    iget-object v0, p0, Lccsancom/google/android/gms/common/api/Scope;->zzap:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lccsancom/google/android/gms/common/api/Scope;->zzap:Ljava/lang/String;

    return-object v0
.end method

.method public final writeToParcel(Lccsanandroid/os/Parcel;I)V
    .locals 3

    .line 16
    nop

    .line 17
    invoke-static {p1}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Lccsanandroid/os/Parcel;)I

    move-result p2

    .line 18
    iget v0, p0, Lccsancom/google/android/gms/common/api/Scope;->zzg:I

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Lccsanandroid/os/Parcel;II)V

    .line 19
    nop

    .line 20
    invoke-virtual {p0}, Lccsancom/google/android/gms/common/api/Scope;->getScopeUri()Ljava/lang/String;

    move-result-object v0

    .line 21
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Lccsanandroid/os/Parcel;ILjava/lang/String;Z)V

    .line 22
    invoke-static {p1, p2}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Lccsanandroid/os/Parcel;I)V

    .line 23
    return-void
.end method
