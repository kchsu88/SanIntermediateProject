.class public abstract Lccsancom/google/android/gms/dynamic/RemoteCreator;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zzia:Ljava/lang/String;

.field private zzib:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lccsancom/google/android/gms/dynamic/RemoteCreator;->zzia:Ljava/lang/String;

    .line 3
    return-void
.end method


# virtual methods
.method protected abstract getRemoteCreator(Lccsanandroid/os/IBinder;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/os/IBinder;",
            ")TT;"
        }
    .end annotation
.end method

.method protected final getRemoteCreatorInstance(Lccsanandroid/content/Context;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lccsancom/google/android/gms/dynamic/RemoteCreator;->zzib:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 5
    invoke-static {p1}, Lccsancom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {p1}, Lccsancom/google/android/gms/common/GooglePlayServicesUtilLight;->getRemoteContext(Lccsanandroid/content/Context;)Lccsanandroid/content/Context;

    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 10
    :try_start_0
    iget-object v0, p0, Lccsancom/google/android/gms/dynamic/RemoteCreator;->zzia:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/os/IBinder;

    .line 12
    invoke-virtual {p0, p1}, Lccsancom/google/android/gms/dynamic/RemoteCreator;->getRemoteCreator(Lccsanandroid/os/IBinder;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lccsancom/google/android/gms/dynamic/RemoteCreator;->zzib:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 18
    :catch_0
    move-exception p1

    .line 19
    new-instance v0, Lccsancom/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException;

    const-string v1, "Could not access creator."

    invoke-direct {v0, v1, p1}, Lccsancom/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 16
    :catch_1
    move-exception p1

    .line 17
    new-instance v0, Lccsancom/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException;

    const-string v1, "Could not instantiate creator."

    invoke-direct {v0, v1, p1}, Lccsancom/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 14
    :catch_2
    move-exception p1

    .line 15
    new-instance v0, Lccsancom/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException;

    const-string v1, "Could not load creator class."

    invoke-direct {v0, v1, p1}, Lccsancom/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 8
    :cond_0
    new-instance p1, Lccsancom/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException;

    const-string v0, "Could not get remote context."

    invoke-direct {p1, v0}, Lccsancom/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_1
    :goto_0
    iget-object p1, p0, Lccsancom/google/android/gms/dynamic/RemoteCreator;->zzib:Ljava/lang/Object;

    return-object p1
.end method
