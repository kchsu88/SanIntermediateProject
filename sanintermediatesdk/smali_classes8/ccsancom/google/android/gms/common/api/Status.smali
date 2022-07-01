.class public final Lccsancom/google/android/gms/common/api/Status;
.super Lccsancom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Lccsancom/google/android/gms/common/api/Result;
.implements Lccsancom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field public static final CREATOR:Lccsanandroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/os/Parcelable$Creator<",
            "Lccsancom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESULT_CANCELED:Lccsancom/google/android/gms/common/api/Status;

.field public static final RESULT_DEAD_CLIENT:Lccsancom/google/android/gms/common/api/Status;

.field public static final RESULT_INTERNAL_ERROR:Lccsancom/google/android/gms/common/api/Status;

.field public static final RESULT_INTERRUPTED:Lccsancom/google/android/gms/common/api/Status;

.field public static final RESULT_SUCCESS:Lccsancom/google/android/gms/common/api/Status;

.field public static final RESULT_TIMEOUT:Lccsancom/google/android/gms/common/api/Status;

.field private static final zzaq:Lccsancom/google/android/gms/common/api/Status;


# instance fields
.field private final zzg:I

.field private final zzh:I

.field private final zzi:Lccsanandroid/app/PendingIntent;

.field private final zzj:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    new-instance v0, Lccsancom/google/android/gms/common/api/Status;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lccsancom/google/android/gms/common/api/Status;-><init>(I)V

    sput-object v0, Lccsancom/google/android/gms/common/api/Status;->RESULT_SUCCESS:Lccsancom/google/android/gms/common/api/Status;

    .line 59
    new-instance v0, Lccsancom/google/android/gms/common/api/Status;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lccsancom/google/android/gms/common/api/Status;-><init>(I)V

    sput-object v0, Lccsancom/google/android/gms/common/api/Status;->RESULT_INTERRUPTED:Lccsancom/google/android/gms/common/api/Status;

    .line 60
    new-instance v0, Lccsancom/google/android/gms/common/api/Status;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lccsancom/google/android/gms/common/api/Status;-><init>(I)V

    sput-object v0, Lccsancom/google/android/gms/common/api/Status;->RESULT_INTERNAL_ERROR:Lccsancom/google/android/gms/common/api/Status;

    .line 61
    new-instance v0, Lccsancom/google/android/gms/common/api/Status;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lccsancom/google/android/gms/common/api/Status;-><init>(I)V

    sput-object v0, Lccsancom/google/android/gms/common/api/Status;->RESULT_TIMEOUT:Lccsancom/google/android/gms/common/api/Status;

    .line 62
    new-instance v0, Lccsancom/google/android/gms/common/api/Status;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lccsancom/google/android/gms/common/api/Status;-><init>(I)V

    sput-object v0, Lccsancom/google/android/gms/common/api/Status;->RESULT_CANCELED:Lccsancom/google/android/gms/common/api/Status;

    .line 63
    new-instance v0, Lccsancom/google/android/gms/common/api/Status;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lccsancom/google/android/gms/common/api/Status;-><init>(I)V

    sput-object v0, Lccsancom/google/android/gms/common/api/Status;->zzaq:Lccsancom/google/android/gms/common/api/Status;

    .line 64
    new-instance v0, Lccsancom/google/android/gms/common/api/Status;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lccsancom/google/android/gms/common/api/Status;-><init>(I)V

    sput-object v0, Lccsancom/google/android/gms/common/api/Status;->RESULT_DEAD_CLIENT:Lccsancom/google/android/gms/common/api/Status;

    .line 65
    new-instance v0, Lccsancom/google/android/gms/common/api/zzb;

    invoke-direct {v0}, Lccsancom/google/android/gms/common/api/zzb;-><init>()V

    sput-object v0, Lccsancom/google/android/gms/common/api/Status;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 7
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 8
    return-void
.end method

.method constructor <init>(IILjava/lang/String;Lccsanandroid/app/PendingIntent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsancom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput p1, p0, Lccsancom/google/android/gms/common/api/Status;->zzg:I

    .line 3
    iput p2, p0, Lccsancom/google/android/gms/common/api/Status;->zzh:I

    .line 4
    iput-object p3, p0, Lccsancom/google/android/gms/common/api/Status;->zzj:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lccsancom/google/android/gms/common/api/Status;->zzi:Lccsanandroid/app/PendingIntent;

    .line 6
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    .line 9
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lccsancom/google/android/gms/common/api/Status;-><init>(IILjava/lang/String;Lccsanandroid/app/PendingIntent;)V

    .line 10
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lccsanandroid/app/PendingIntent;)V
    .locals 1

    .line 11
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lccsancom/google/android/gms/common/api/Status;-><init>(IILjava/lang/String;Lccsanandroid/app/PendingIntent;)V

    .line 12
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 27
    instance-of v0, p1, Lccsancom/google/android/gms/common/api/Status;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 28
    return v1

    .line 29
    :cond_0
    check-cast p1, Lccsancom/google/android/gms/common/api/Status;

    .line 30
    iget v0, p0, Lccsancom/google/android/gms/common/api/Status;->zzg:I

    iget v2, p1, Lccsancom/google/android/gms/common/api/Status;->zzg:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lccsancom/google/android/gms/common/api/Status;->zzh:I

    iget v2, p1, Lccsancom/google/android/gms/common/api/Status;->zzh:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lccsancom/google/android/gms/common/api/Status;->zzj:Ljava/lang/String;

    iget-object v2, p1, Lccsancom/google/android/gms/common/api/Status;->zzj:Ljava/lang/String;

    .line 31
    invoke-static {v0, v2}, Lccsancom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/google/android/gms/common/api/Status;->zzi:Lccsanandroid/app/PendingIntent;

    iget-object p1, p1, Lccsancom/google/android/gms/common/api/Status;->zzi:Lccsanandroid/app/PendingIntent;

    .line 32
    invoke-static {v0, p1}, Lccsancom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    nop

    .line 33
    return v1
.end method

.method public final getResolution()Lccsanandroid/app/PendingIntent;
    .locals 1

    .line 25
    iget-object v0, p0, Lccsancom/google/android/gms/common/api/Status;->zzi:Lccsanandroid/app/PendingIntent;

    return-object v0
.end method

.method public final getStatus()Lccsancom/google/android/gms/common/api/Status;
    .locals 0

    .line 57
    return-object p0
.end method

.method public final getStatusCode()I
    .locals 1

    .line 24
    iget v0, p0, Lccsancom/google/android/gms/common/api/Status;->zzh:I

    return v0
.end method

.method public final getStatusMessage()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lccsancom/google/android/gms/common/api/Status;->zzj:Ljava/lang/String;

    return-object v0
.end method

.method public final hasResolution()Z
    .locals 1

    .line 20
    iget-object v0, p0, Lccsancom/google/android/gms/common/api/Status;->zzi:Lccsanandroid/app/PendingIntent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 26
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lccsancom/google/android/gms/common/api/Status;->zzg:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lccsancom/google/android/gms/common/api/Status;->zzh:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lccsancom/google/android/gms/common/api/Status;->zzj:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lccsancom/google/android/gms/common/api/Status;->zzi:Lccsanandroid/app/PendingIntent;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lccsancom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final isCanceled()Z
    .locals 2

    .line 22
    iget v0, p0, Lccsancom/google/android/gms/common/api/Status;->zzh:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isInterrupted()Z
    .locals 2

    .line 23
    iget v0, p0, Lccsancom/google/android/gms/common/api/Status;->zzh:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isSuccess()Z
    .locals 1

    .line 21
    iget v0, p0, Lccsancom/google/android/gms/common/api/Status;->zzh:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final startResolutionForResult(Lccsanandroid/app/Activity;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 13
    invoke-virtual {p0}, Lccsancom/google/android/gms/common/api/Status;->hasResolution()Z

    move-result v0

    if-nez v0, :cond_0

    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/gms/common/api/Status;->zzi:Lccsanandroid/app/PendingIntent;

    .line 16
    invoke-virtual {v0}, Lccsanandroid/app/PendingIntent;->getIntentSender()Lccsanandroid/content/IntentSender;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 17
    move-object v1, p1

    move v3, p2

    invoke-virtual/range {v1 .. v7}, Lccsanandroid/app/Activity;->startIntentSenderForResult(Lccsanandroid/content/IntentSender;ILccsanandroid/content/Intent;III)V

    .line 18
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 37
    invoke-static {p0}, Lccsancom/google/android/gms/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lccsancom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 38
    invoke-virtual {p0}, Lccsancom/google/android/gms/common/api/Status;->zzg()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "statusCode"

    invoke-virtual {v0, v2, v1}, Lccsancom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lccsancom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/android/gms/common/api/Status;->zzi:Lccsanandroid/app/PendingIntent;

    .line 39
    const-string v2, "resolution"

    invoke-virtual {v0, v2, v1}, Lccsancom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lccsancom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lccsancom/google/android/gms/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    return-object v0
.end method

.method public final writeToParcel(Lccsanandroid/os/Parcel;I)V
    .locals 4

    .line 42
    nop

    .line 43
    invoke-static {p1}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Lccsanandroid/os/Parcel;)I

    move-result v0

    .line 44
    nop

    .line 45
    invoke-virtual {p0}, Lccsancom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v1

    .line 46
    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Lccsanandroid/os/Parcel;II)V

    .line 47
    nop

    .line 48
    invoke-virtual {p0}, Lccsancom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v1

    .line 49
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Lccsanandroid/os/Parcel;ILjava/lang/String;Z)V

    .line 50
    nop

    .line 51
    iget-object v1, p0, Lccsancom/google/android/gms/common/api/Status;->zzi:Lccsanandroid/app/PendingIntent;

    .line 52
    nop

    .line 53
    const/4 v2, 0x3

    invoke-static {p1, v2, v1, p2, v3}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Lccsanandroid/os/Parcel;ILccsanandroid/os/Parcelable;IZ)V

    .line 54
    iget p2, p0, Lccsancom/google/android/gms/common/api/Status;->zzg:I

    const/16 v1, 0x3e8

    invoke-static {p1, v1, p2}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Lccsanandroid/os/Parcel;II)V

    .line 55
    invoke-static {p1, v0}, Lccsancom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Lccsanandroid/os/Parcel;I)V

    .line 56
    return-void
.end method

.method public final zzg()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lccsancom/google/android/gms/common/api/Status;->zzj:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 35
    return-object v0

    .line 36
    :cond_0
    iget v0, p0, Lccsancom/google/android/gms/common/api/Status;->zzh:I

    invoke-static {v0}, Lccsancom/google/android/gms/common/api/CommonStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
