.class public Lccsancom/google/android/gms/common/util/concurrent/NamedThreadFactory;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final name:Ljava/lang/String;

.field private final priority:I

.field private final zzhp:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/google/android/gms/common/util/concurrent/NamedThreadFactory;-><init>(Ljava/lang/String;I)V

    .line 2
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object p2

    iput-object p2, p0, Lccsancom/google/android/gms/common/util/concurrent/NamedThreadFactory;->zzhp:Ljava/util/concurrent/ThreadFactory;

    .line 5
    const-string p2, "Name must not be null"

    invoke-static {p1, p2}, Lccsancom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lccsancom/google/android/gms/common/util/concurrent/NamedThreadFactory;->name:Ljava/lang/String;

    .line 6
    const/4 p1, 0x0

    iput p1, p0, Lccsancom/google/android/gms/common/util/concurrent/NamedThreadFactory;->priority:I

    .line 7
    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    .line 8
    iget-object v0, p0, Lccsancom/google/android/gms/common/util/concurrent/NamedThreadFactory;->zzhp:Ljava/util/concurrent/ThreadFactory;

    new-instance v1, Lccsancom/google/android/gms/common/util/concurrent/zza;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lccsancom/google/android/gms/common/util/concurrent/zza;-><init>(Ljava/lang/Runnable;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    .line 9
    iget-object v0, p0, Lccsancom/google/android/gms/common/util/concurrent/NamedThreadFactory;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 10
    return-object p1
.end method
