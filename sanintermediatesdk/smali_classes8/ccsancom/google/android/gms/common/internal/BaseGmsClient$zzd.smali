.class public final Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzd;
.super Lccsancom/google/android/gms/common/internal/IGmsCallbacks$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/gms/common/internal/BaseGmsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzd"
.end annotation


# instance fields
.field private zzcv:Lccsancom/google/android/gms/common/internal/BaseGmsClient;

.field private final zzcw:I


# direct methods
.method public constructor <init>(Lccsancom/google/android/gms/common/internal/BaseGmsClient;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsancom/google/android/gms/common/internal/IGmsCallbacks$zza;-><init>()V

    .line 2
    iput-object p1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzd;->zzcv:Lccsancom/google/android/gms/common/internal/BaseGmsClient;

    .line 3
    iput p2, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzd;->zzcw:I

    .line 4
    return-void
.end method


# virtual methods
.method public final onPostInitComplete(ILccsanandroid/os/IBinder;Lccsanandroid/os/Bundle;)V
    .locals 2

    .line 7
    iget-object v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzd;->zzcv:Lccsancom/google/android/gms/common/internal/BaseGmsClient;

    const-string v1, "onPostInitComplete can be called only once per call to getRemoteService"

    invoke-static {v0, v1}, Lccsancom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzd;->zzcv:Lccsancom/google/android/gms/common/internal/BaseGmsClient;

    iget v1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzd;->zzcw:I

    invoke-virtual {v0, p1, p2, p3, v1}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->onPostInitHandler(ILccsanandroid/os/IBinder;Lccsanandroid/os/Bundle;I)V

    .line 9
    nop

    .line 10
    const/4 p1, 0x0

    iput-object p1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzd;->zzcv:Lccsancom/google/android/gms/common/internal/BaseGmsClient;

    .line 11
    return-void
.end method

.method public final zza(ILccsanandroid/os/Bundle;)V
    .locals 1

    .line 5
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string p2, "GmsClient"

    const-string v0, "received deprecated onAccountValidationComplete callback, ignoring"

    invoke-static {p2, v0, p1}, Lccsanandroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    return-void
.end method

.method public final zza(ILccsanandroid/os/IBinder;Lccsancom/google/android/gms/common/internal/zzb;)V
    .locals 2

    .line 12
    iget-object v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzd;->zzcv:Lccsancom/google/android/gms/common/internal/BaseGmsClient;

    const-string v1, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService"

    invoke-static {v0, v1}, Lccsancom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {p3}, Lccsancom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzd;->zzcv:Lccsancom/google/android/gms/common/internal/BaseGmsClient;

    invoke-static {v0, p3}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zza(Lccsancom/google/android/gms/common/internal/BaseGmsClient;Lccsancom/google/android/gms/common/internal/zzb;)V

    .line 15
    nop

    .line 16
    iget-object p3, p3, Lccsancom/google/android/gms/common/internal/zzb;->zzcz:Lccsanandroid/os/Bundle;

    .line 17
    invoke-virtual {p0, p1, p2, p3}, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzd;->onPostInitComplete(ILccsanandroid/os/IBinder;Lccsanandroid/os/Bundle;)V

    .line 18
    return-void
.end method
