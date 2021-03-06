.class public final Lccsancom/google/android/gms/common/api/internal/zzc;
.super Lccsanandroidx/fragment/app/Fragment;

# interfaces
.implements Lccsancom/google/android/gms/common/api/internal/LifecycleFragment;


# static fields
.field private static zzbd:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lccsanandroidx/fragment/app/FragmentActivity;",
            "Ljava/lang/ref/WeakReference<",
            "Lccsancom/google/android/gms/common/api/internal/zzc;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private zzbe:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsancom/google/android/gms/common/api/internal/LifecycleCallback;",
            ">;"
        }
    .end annotation
.end field

.field private zzbf:I

.field private zzbg:Lccsanandroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 87
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lccsancom/google/android/gms/common/api/internal/zzc;->zzbd:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lccsanandroidx/fragment/app/Fragment;-><init>()V

    .line 2
    new-instance v0, Lccsanandroidx/collection/ArrayMap;

    invoke-direct {v0}, Lccsanandroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/gms/common/api/internal/zzc;->zzbe:Ljava/util/Map;

    .line 3
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/google/android/gms/common/api/internal/zzc;->zzbf:I

    return-void
.end method

.method static synthetic zza(Lccsancom/google/android/gms/common/api/internal/zzc;)I
    .locals 0

    .line 85
    iget p0, p0, Lccsancom/google/android/gms/common/api/internal/zzc;->zzbf:I

    return p0
.end method

.method public static zza(Lccsanandroidx/fragment/app/FragmentActivity;)Lccsancom/google/android/gms/common/api/internal/zzc;
    .locals 3

    .line 4
    const-string v0, "SupportLifecycleFragmentImpl"

    sget-object v1, Lccsancom/google/android/gms/common/api/internal/zzc;->zzbd:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 5
    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/gms/common/api/internal/zzc;

    .line 7
    if-eqz v1, :cond_0

    .line 8
    return-object v1

    .line 9
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Lccsanandroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsanandroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Lccsanandroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/gms/common/api/internal/zzc;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    nop

    .line 13
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lccsancom/google/android/gms/common/api/internal/zzc;->isRemoving()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 14
    :cond_1
    new-instance v1, Lccsancom/google/android/gms/common/api/internal/zzc;

    invoke-direct {v1}, Lccsancom/google/android/gms/common/api/internal/zzc;-><init>()V

    .line 15
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Lccsanandroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Lccsanandroidx/fragment/app/FragmentManager;->beginTransaction()Lccsanandroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lccsanandroidx/fragment/app/FragmentTransaction;->add(Lccsanandroidx/fragment/app/Fragment;Ljava/lang/String;)Lccsanandroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 16
    :cond_2
    sget-object v0, Lccsancom/google/android/gms/common/api/internal/zzc;->zzbd:Ljava/util/WeakHashMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    return-object v1

    .line 11
    :catch_0
    move-exception p0

    .line 12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment with tag SupportLifecycleFragmentImpl is not a SupportLifecycleFragmentImpl"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method static synthetic zzb(Lccsancom/google/android/gms/common/api/internal/zzc;)Lccsanandroid/os/Bundle;
    .locals 0

    .line 86
    iget-object p0, p0, Lccsancom/google/android/gms/common/api/internal/zzc;->zzbg:Lccsanandroid/os/Bundle;

    return-object p0
.end method


# virtual methods
.method public final addCallback(Ljava/lang/String;Lccsancom/google/android/gms/common/api/internal/LifecycleCallback;)V
    .locals 2

    .line 19
    iget-object v0, p0, Lccsancom/google/android/gms/common/api/internal/zzc;->zzbe:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 20
    iget-object v0, p0, Lccsancom/google/android/gms/common/api/internal/zzc;->zzbe:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    nop

    .line 22
    iget v0, p0, Lccsancom/google/android/gms/common/api/internal/zzc;->zzbf:I

    if-lez v0, :cond_0

    .line 23
    new-instance v0, Lccsancom/google/android/gms/internal/common/zze;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsancom/google/android/gms/internal/common/zze;-><init>(Lccsanandroid/os/Looper;)V

    new-instance v1, Lccsancom/google/android/gms/common/api/internal/zzd;

    invoke-direct {v1, p0, p2, p1}, Lccsancom/google/android/gms/common/api/internal/zzd;-><init>(Lccsancom/google/android/gms/common/api/internal/zzc;Lccsancom/google/android/gms/common/api/internal/LifecycleCallback;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0, v1}, Lccsancom/google/android/gms/internal/common/zze;->post(Ljava/lang/Runnable;)Z

    .line 25
    :cond_0
    return-void

    .line 26
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "LifecycleCallback with tag "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " already added to this fragment."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 77
    invoke-super {p0, p1, p2, p3, p4}, Lccsanandroidx/fragment/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lccsancom/google/android/gms/common/api/internal/zzc;->zzbe:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/gms/common/api/internal/LifecycleCallback;

    .line 79
    invoke-virtual {v1, p1, p2, p3, p4}, Lccsancom/google/android/gms/common/api/internal/LifecycleCallback;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 80
    goto :goto_0

    .line 81
    :cond_0
    return-void
.end method

.method public final getCallbackOrNull(Ljava/lang/String;Ljava/lang/Class;)Lccsancom/google/android/gms/common/api/internal/LifecycleCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lccsancom/google/android/gms/common/api/internal/LifecycleCallback;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lccsancom/google/android/gms/common/api/internal/zzc;->zzbe:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/google/android/gms/common/api/internal/LifecycleCallback;

    return-object p1
.end method

.method public final synthetic getLifecycleActivity()Lccsanandroid/app/Activity;
    .locals 1

    .line 82
    nop

    .line 83
    invoke-virtual {p0}, Lccsancom/google/android/gms/common/api/internal/zzc;->getActivity()Lccsanandroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 84
    return-object v0
.end method

.method public final isCreated()Z
    .locals 1

    .line 27
    iget v0, p0, Lccsancom/google/android/gms/common/api/internal/zzc;->zzbf:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isStarted()Z
    .locals 2

    .line 28
    iget v0, p0, Lccsancom/google/android/gms/common/api/internal/zzc;->zzbf:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onActivityResult(IILccsanandroid/content/Intent;)V
    .locals 2

    .line 51
    invoke-super {p0, p1, p2, p3}, Lccsanandroidx/fragment/app/Fragment;->onActivityResult(IILccsanandroid/content/Intent;)V

    .line 52
    iget-object v0, p0, Lccsancom/google/android/gms/common/api/internal/zzc;->zzbe:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/gms/common/api/internal/LifecycleCallback;

    .line 53
    invoke-virtual {v1, p1, p2, p3}, Lccsancom/google/android/gms/common/api/internal/LifecycleCallback;->onActivityResult(IILccsanandroid/content/Intent;)V

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    return-void
.end method

.method public final onCreate(Lccsanandroid/os/Bundle;)V
    .locals 3

    .line 29
    invoke-super {p0, p1}, Lccsanandroidx/fragment/app/Fragment;->onCreate(Lccsanandroid/os/Bundle;)V

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Lccsancom/google/android/gms/common/api/internal/zzc;->zzbf:I

    .line 31
    iput-object p1, p0, Lccsancom/google/android/gms/common/api/internal/zzc;->zzbg:Lccsanandroid/os/Bundle;

    .line 32
    iget-object v0, p0, Lccsancom/google/android/gms/common/api/internal/zzc;->zzbe:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 33
    nop

    .line 34
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/google/android/gms/common/api/internal/LifecycleCallback;

    .line 35
    if-eqz p1, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lccsanandroid/os/Bundle;->getBundle(Ljava/lang/String;)Lccsanandroid/os/Bundle;

    move-result-object v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 36
    :goto_1
    invoke-virtual {v2, v1}, Lccsancom/google/android/gms/common/api/internal/LifecycleCallback;->onCreate(Lccsanandroid/os/Bundle;)V

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 71
    invoke-super {p0}, Lccsanandroidx/fragment/app/Fragment;->onDestroy()V

    .line 72
    const/4 v0, 0x5

    iput v0, p0, Lccsancom/google/android/gms/common/api/internal/zzc;->zzbf:I

    .line 73
    iget-object v0, p0, Lccsancom/google/android/gms/common/api/internal/zzc;->zzbe:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/gms/common/api/internal/LifecycleCallback;

    .line 74
    invoke-virtual {v1}, Lccsancom/google/android/gms/common/api/internal/LifecycleCallback;->onDestroy()V

    .line 75
    goto :goto_0

    .line 76
    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 2

    .line 45
    invoke-super {p0}, Lccsanandroidx/fragment/app/Fragment;->onResume()V

    .line 46
    const/4 v0, 0x3

    iput v0, p0, Lccsancom/google/android/gms/common/api/internal/zzc;->zzbf:I

    .line 47
    iget-object v0, p0, Lccsancom/google/android/gms/common/api/internal/zzc;->zzbe:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/gms/common/api/internal/LifecycleCallback;

    .line 48
    invoke-virtual {v1}, Lccsancom/google/android/gms/common/api/internal/LifecycleCallback;->onResume()V

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method

.method public final onSaveInstanceState(Lccsanandroid/os/Bundle;)V
    .locals 4

    .line 56
    invoke-super {p0, p1}, Lccsanandroidx/fragment/app/Fragment;->onSaveInstanceState(Lccsanandroid/os/Bundle;)V

    .line 57
    if-nez p1, :cond_0

    .line 58
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/gms/common/api/internal/zzc;->zzbe:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 60
    new-instance v2, Lccsanandroid/os/Bundle;

    invoke-direct {v2}, Lccsanandroid/os/Bundle;-><init>()V

    .line 61
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/google/android/gms/common/api/internal/LifecycleCallback;

    invoke-virtual {v3, v2}, Lccsancom/google/android/gms/common/api/internal/LifecycleCallback;->onSaveInstanceState(Lccsanandroid/os/Bundle;)V

    .line 62
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lccsanandroid/os/Bundle;->putBundle(Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 39
    invoke-super {p0}, Lccsanandroidx/fragment/app/Fragment;->onStart()V

    .line 40
    const/4 v0, 0x2

    iput v0, p0, Lccsancom/google/android/gms/common/api/internal/zzc;->zzbf:I

    .line 41
    iget-object v0, p0, Lccsancom/google/android/gms/common/api/internal/zzc;->zzbe:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/gms/common/api/internal/LifecycleCallback;

    .line 42
    invoke-virtual {v1}, Lccsancom/google/android/gms/common/api/internal/LifecycleCallback;->onStart()V

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    return-void
.end method

.method public final onStop()V
    .locals 2

    .line 65
    invoke-super {p0}, Lccsanandroidx/fragment/app/Fragment;->onStop()V

    .line 66
    const/4 v0, 0x4

    iput v0, p0, Lccsancom/google/android/gms/common/api/internal/zzc;->zzbf:I

    .line 67
    iget-object v0, p0, Lccsancom/google/android/gms/common/api/internal/zzc;->zzbe:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/gms/common/api/internal/LifecycleCallback;

    .line 68
    invoke-virtual {v1}, Lccsancom/google/android/gms/common/api/internal/LifecycleCallback;->onStop()V

    .line 69
    goto :goto_0

    .line 70
    :cond_0
    return-void
.end method
