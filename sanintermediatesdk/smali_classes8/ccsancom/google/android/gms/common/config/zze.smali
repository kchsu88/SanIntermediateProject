.class final Lccsancom/google/android/gms/common/config/zze;
.super Lccsancom/google/android/gms/common/config/GservicesValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/android/gms/common/config/GservicesValue<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lccsancom/google/android/gms/common/config/GservicesValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zzd(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 2
    nop

    .line 3
    nop

    .line 4
    iget-object p1, p0, Lccsancom/google/android/gms/common/config/zze;->mKey:Ljava/lang/String;

    iget-object v0, p0, Lccsancom/google/android/gms/common/config/zze;->zzbp:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {v1, p1, v0}, Lccsancom/google/android/gms/common/config/GservicesValue$zza;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    return-object p1
.end method
