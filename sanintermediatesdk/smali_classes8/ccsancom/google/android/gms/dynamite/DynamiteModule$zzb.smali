.class final Lccsancom/google/android/gms/dynamite/DynamiteModule$zzb;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/gms/dynamite/DynamiteModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zzb"
.end annotation


# instance fields
.field private final zzio:I

.field private final zzip:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lccsancom/google/android/gms/dynamite/DynamiteModule$zzb;->zzio:I

    .line 3
    const/4 p1, 0x0

    iput p1, p0, Lccsancom/google/android/gms/dynamite/DynamiteModule$zzb;->zzip:I

    .line 4
    return-void
.end method


# virtual methods
.method public final getLocalVersion(Lccsanandroid/content/Context;Ljava/lang/String;)I
    .locals 0

    .line 6
    iget p1, p0, Lccsancom/google/android/gms/dynamite/DynamiteModule$zzb;->zzio:I

    return p1
.end method

.method public final zza(Lccsanandroid/content/Context;Ljava/lang/String;Z)I
    .locals 0

    .line 5
    const/4 p1, 0x0

    return p1
.end method