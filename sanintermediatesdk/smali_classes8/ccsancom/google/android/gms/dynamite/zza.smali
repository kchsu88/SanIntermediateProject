.class final Lccsancom/google/android/gms/dynamite/zza;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zza;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLocalVersion(Lccsanandroid/content/Context;Ljava/lang/String;)I
    .locals 0

    .line 3
    invoke-static {p1, p2}, Lccsancom/google/android/gms/dynamite/DynamiteModule;->getLocalVersion(Lccsanandroid/content/Context;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final zza(Lccsanandroid/content/Context;Ljava/lang/String;Z)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/android/gms/dynamite/DynamiteModule$LoadingException;
        }
    .end annotation

    .line 2
    invoke-static {p1, p2, p3}, Lccsancom/google/android/gms/dynamite/DynamiteModule;->zza(Lccsanandroid/content/Context;Ljava/lang/String;Z)I

    move-result p1

    return p1
.end method
