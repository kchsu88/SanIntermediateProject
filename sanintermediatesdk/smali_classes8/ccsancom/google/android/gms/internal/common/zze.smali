.class public Lccsancom/google/android/gms/internal/common/zze;
.super Lccsanandroid/os/Handler;


# static fields
.field private static volatile zzit:Lccsancom/google/android/gms/internal/common/zzf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    const/4 v0, 0x0

    sput-object v0, Lccsancom/google/android/gms/internal/common/zze;->zzit:Lccsancom/google/android/gms/internal/common/zzf;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsanandroid/os/Handler;-><init>()V

    .line 2
    return-void
.end method

.method public constructor <init>(Lccsanandroid/os/Looper;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    .line 4
    return-void
.end method

.method public constructor <init>(Lccsanandroid/os/Looper;Lccsanandroid/os/Handler$Callback;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;Lccsanandroid/os/Handler$Callback;)V

    .line 6
    return-void
.end method
