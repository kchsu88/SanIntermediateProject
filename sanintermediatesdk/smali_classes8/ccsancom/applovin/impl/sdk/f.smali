.class public Lccsancom/applovin/impl/sdk/f;
.super Lccsanandroid/content/BroadcastReceiver;

# interfaces
.implements Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/applovin/impl/sdk/f$a;
    }
.end annotation


# static fields
.field public static a:I


# instance fields
.field private final b:Lccsanandroid/media/AudioManager;

.field private final c:Lccsanandroid/content/Context;

.field private final d:Lccsancom/applovin/impl/sdk/k;

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lccsancom/applovin/impl/sdk/f$a;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/Object;

.field private g:Z

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lccsancom/applovin/impl/sdk/f;->a:I

    return-void
.end method

.method constructor <init>(Lccsancom/applovin/impl/sdk/k;)V
    .locals 1

    invoke-direct {p0}, Lccsanandroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/f;->e:Ljava/util/Set;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/f;->f:Ljava/lang/Object;

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/f;->d:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->J()Lccsanandroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/f;->c:Lccsanandroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/media/AudioManager;

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/f;->b:Lccsanandroid/media/AudioManager;

    return-void
.end method

.method public static a(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/f;->d:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    const-string v1, "AudioSessionManager"

    const-string v2, "Observing ringer mode..."

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lccsancom/applovin/impl/sdk/f;->a:I

    iput v0, p0, Lccsancom/applovin/impl/sdk/f;->h:I

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/f;->c:Lccsanandroid/content/Context;

    new-instance v1, Lccsanandroid/content/IntentFilter;

    const-string v2, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v1, v2}, Lccsanandroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lccsanandroid/content/Context;->registerReceiver(Lccsanandroid/content/BroadcastReceiver;Lccsanandroid/content/IntentFilter;)Lccsanandroid/content/Intent;

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/f;->d:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->ai()Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager;

    move-result-object v0

    new-instance v1, Lccsanandroid/content/IntentFilter;

    const-string v2, "com.applovin.application_paused"

    invoke-direct {v1, v2}, Lccsanandroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager;->registerReceiver(Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;Lccsanandroid/content/IntentFilter;)V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/f;->d:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->ai()Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager;

    move-result-object v0

    new-instance v1, Lccsanandroid/content/IntentFilter;

    const-string v2, "com.applovin.application_resumed"

    invoke-direct {v1, v2}, Lccsanandroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager;->registerReceiver(Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;Lccsanandroid/content/IntentFilter;)V

    return-void
.end method

.method private b(I)V
    .locals 4

    iget-boolean v0, p0, Lccsancom/applovin/impl/sdk/f;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/sdk/f;->d:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    const-string v1, "AudioSessionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ringer mode is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/f;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/f;->e:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/applovin/impl/sdk/f$a;

    new-instance v3, Lccsancom/applovin/impl/sdk/f$1;

    invoke-direct {v3, p0, v2, p1}, Lccsancom/applovin/impl/sdk/f$1;-><init>(Lccsancom/applovin/impl/sdk/f;Lccsancom/applovin/impl/sdk/f$a;I)V

    invoke-static {v3}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/f;->d:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    const-string v1, "AudioSessionManager"

    const-string v2, "Stopping observation of mute switch state..."

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/f;->c:Lccsanandroid/content/Context;

    invoke-virtual {v0, p0}, Lccsanandroid/content/Context;->unregisterReceiver(Lccsanandroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/f;->d:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->ai()Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager;->unregisterReceiver(Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/f;->b:Lccsanandroid/media/AudioManager;

    invoke-virtual {v0}, Lccsanandroid/media/AudioManager;->getRingerMode()I

    move-result v0

    return v0
.end method

.method public a(Lccsancom/applovin/impl/sdk/f$a;)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/f;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/f;->e:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/f;->e:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/f;->e:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/f;->b()V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(Lccsancom/applovin/impl/sdk/f$a;)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/f;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/f;->e:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/f;->e:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/f;->e:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/f;->c()V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onReceive(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Lccsanandroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/f;->b:Lccsanandroid/media/AudioManager;

    invoke-virtual {p1}, Lccsanandroid/media/AudioManager;->getRingerMode()I

    move-result p1

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/sdk/f;->b(I)V

    :cond_0
    return-void
.end method

.method public onReceive(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Lccsanandroid/content/Intent;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Lccsanandroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.applovin.application_paused"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lccsancom/applovin/impl/sdk/f;->g:Z

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/f;->b:Lccsanandroid/media/AudioManager;

    invoke-virtual {p1}, Lccsanandroid/media/AudioManager;->getRingerMode()I

    move-result p1

    iput p1, p0, Lccsancom/applovin/impl/sdk/f;->h:I

    goto :goto_0

    :cond_0
    const-string p2, "com.applovin.application_resumed"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsancom/applovin/impl/sdk/f;->g:Z

    iget p1, p0, Lccsancom/applovin/impl/sdk/f;->h:I

    iget-object p2, p0, Lccsancom/applovin/impl/sdk/f;->b:Lccsanandroid/media/AudioManager;

    invoke-virtual {p2}, Lccsanandroid/media/AudioManager;->getRingerMode()I

    move-result p2

    if-eq p1, p2, :cond_1

    sget p1, Lccsancom/applovin/impl/sdk/f;->a:I

    iput p1, p0, Lccsancom/applovin/impl/sdk/f;->h:I

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/f;->b:Lccsanandroid/media/AudioManager;

    invoke-virtual {p1}, Lccsanandroid/media/AudioManager;->getRingerMode()I

    move-result p1

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/sdk/f;->b(I)V

    :cond_1
    :goto_0
    return-void
.end method
