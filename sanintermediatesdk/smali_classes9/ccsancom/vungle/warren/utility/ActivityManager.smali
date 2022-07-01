.class public Lccsancom/vungle/warren/utility/ActivityManager;
.super Ljava/lang/Object;
.source "ActivityManager.java"

# interfaces
.implements Lccsanandroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;,
        Lccsancom/vungle/warren/utility/ActivityManager$LifeCycleCallback;
    }
.end annotation


# static fields
.field static final CONFIG_CHANGE_DELAY:J = 0x2bcL

.field public static final TAG:Ljava/lang/String;

.field static final TIMEOUT:J = 0xbb8L

.field private static final instance:Lccsancom/vungle/warren/utility/ActivityManager;


# instance fields
.field private adLeftCallbacks:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lccsancom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;",
            "Lccsancom/vungle/warren/utility/ActivityManager$LifeCycleCallback;",
            ">;"
        }
    .end annotation
.end field

.field private callbacks:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lccsancom/vungle/warren/utility/ActivityManager$LifeCycleCallback;",
            ">;"
        }
    .end annotation
.end field

.field private configChangeRunnable:Ljava/lang/Runnable;

.field private handler:Lccsanandroid/os/Handler;

.field private initialized:Z

.field private paused:Z

.field private resumed:I

.field private started:I

.field private stopped:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lccsancom/vungle/warren/utility/ActivityManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/vungle/warren/utility/ActivityManager;->TAG:Ljava/lang/String;

    .line 47
    new-instance v0, Lccsancom/vungle/warren/utility/ActivityManager;

    invoke-direct {v0}, Lccsancom/vungle/warren/utility/ActivityManager;-><init>()V

    sput-object v0, Lccsancom/vungle/warren/utility/ActivityManager;->instance:Lccsancom/vungle/warren/utility/ActivityManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lccsancom/vungle/warren/utility/ActivityManager;->callbacks:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 53
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lccsancom/vungle/warren/utility/ActivityManager;->adLeftCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/vungle/warren/utility/ActivityManager;->paused:Z

    .line 60
    iput-boolean v0, p0, Lccsancom/vungle/warren/utility/ActivityManager;->stopped:Z

    .line 63
    new-instance v0, Lccsancom/vungle/warren/utility/ActivityManager$1;

    invoke-direct {v0, p0}, Lccsancom/vungle/warren/utility/ActivityManager$1;-><init>(Lccsancom/vungle/warren/utility/ActivityManager;)V

    iput-object v0, p0, Lccsancom/vungle/warren/utility/ActivityManager;->configChangeRunnable:Ljava/lang/Runnable;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lccsancom/vungle/warren/utility/ActivityManager;)I
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/utility/ActivityManager;

    .line 21
    iget v0, p0, Lccsancom/vungle/warren/utility/ActivityManager;->resumed:I

    return v0
.end method

.method static synthetic access$100(Lccsancom/vungle/warren/utility/ActivityManager;)Z
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/utility/ActivityManager;

    .line 21
    iget-boolean v0, p0, Lccsancom/vungle/warren/utility/ActivityManager;->paused:Z

    return v0
.end method

.method static synthetic access$1000(Lccsancom/vungle/warren/utility/ActivityManager;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/utility/ActivityManager;

    .line 21
    iget-object v0, p0, Lccsancom/vungle/warren/utility/ActivityManager;->adLeftCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$102(Lccsancom/vungle/warren/utility/ActivityManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/utility/ActivityManager;
    .param p1, "x1"    # Z

    .line 21
    iput-boolean p1, p0, Lccsancom/vungle/warren/utility/ActivityManager;->paused:Z

    return p1
.end method

.method static synthetic access$200(Lccsancom/vungle/warren/utility/ActivityManager;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/utility/ActivityManager;

    .line 21
    iget-object v0, p0, Lccsancom/vungle/warren/utility/ActivityManager;->callbacks:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object v0
.end method

.method static synthetic access$300(Lccsancom/vungle/warren/utility/ActivityManager;)I
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/utility/ActivityManager;

    .line 21
    iget v0, p0, Lccsancom/vungle/warren/utility/ActivityManager;->started:I

    return v0
.end method

.method static synthetic access$400(Lccsancom/vungle/warren/utility/ActivityManager;)Z
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/utility/ActivityManager;

    .line 21
    iget-boolean v0, p0, Lccsancom/vungle/warren/utility/ActivityManager;->stopped:Z

    return v0
.end method

.method static synthetic access$402(Lccsancom/vungle/warren/utility/ActivityManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/utility/ActivityManager;
    .param p1, "x1"    # Z

    .line 21
    iput-boolean p1, p0, Lccsancom/vungle/warren/utility/ActivityManager;->stopped:Z

    return p1
.end method

.method static synthetic access$500()Lccsancom/vungle/warren/utility/ActivityManager;
    .locals 1

    .line 21
    sget-object v0, Lccsancom/vungle/warren/utility/ActivityManager;->instance:Lccsancom/vungle/warren/utility/ActivityManager;

    return-object v0
.end method

.method static synthetic access$600(Lccsancom/vungle/warren/utility/ActivityManager;Lccsancom/vungle/warren/utility/ActivityManager$LifeCycleCallback;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/utility/ActivityManager;
    .param p1, "x1"    # Lccsancom/vungle/warren/utility/ActivityManager$LifeCycleCallback;

    .line 21
    invoke-direct {p0, p1}, Lccsancom/vungle/warren/utility/ActivityManager;->removeListener(Lccsancom/vungle/warren/utility/ActivityManager$LifeCycleCallback;)V

    return-void
.end method

.method static synthetic access$700(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)Z
    .locals 1
    .param p0, "x0"    # Lccsanandroid/content/Context;
    .param p1, "x1"    # Lccsanandroid/content/Intent;

    .line 21
    invoke-static {p0, p1}, Lccsancom/vungle/warren/utility/ActivityManager;->startActivityHandleException(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lccsancom/vungle/warren/utility/ActivityManager;)Lccsanandroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/utility/ActivityManager;

    .line 21
    iget-object v0, p0, Lccsancom/vungle/warren/utility/ActivityManager;->handler:Lccsanandroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lccsancom/vungle/warren/utility/ActivityManager;Lccsancom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/utility/ActivityManager;
    .param p1, "x1"    # Lccsancom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;

    .line 21
    invoke-direct {p0, p1}, Lccsancom/vungle/warren/utility/ActivityManager;->removeOnNextAppLeftCallback(Lccsancom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;)V

    return-void
.end method

.method public static getInstance()Lccsancom/vungle/warren/utility/ActivityManager;
    .locals 1

    .line 86
    sget-object v0, Lccsancom/vungle/warren/utility/ActivityManager;->instance:Lccsancom/vungle/warren/utility/ActivityManager;

    return-object v0
.end method

.method private removeListener(Lccsancom/vungle/warren/utility/ActivityManager$LifeCycleCallback;)V
    .locals 1
    .param p1, "callback"    # Lccsancom/vungle/warren/utility/ActivityManager$LifeCycleCallback;

    .line 148
    iget-object v0, p0, Lccsancom/vungle/warren/utility/ActivityManager;->callbacks:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 149
    return-void
.end method

.method private removeOnNextAppLeftCallback(Lccsancom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;)V
    .locals 1
    .param p1, "leftCallback"    # Lccsancom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;

    .line 272
    if-nez p1, :cond_0

    .line 273
    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Lccsancom/vungle/warren/utility/ActivityManager;->adLeftCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/vungle/warren/utility/ActivityManager$LifeCycleCallback;

    .line 275
    .local v0, "callback":Lccsancom/vungle/warren/utility/ActivityManager$LifeCycleCallback;
    if-eqz v0, :cond_1

    .line 276
    invoke-direct {p0, v0}, Lccsancom/vungle/warren/utility/ActivityManager;->removeListener(Lccsancom/vungle/warren/utility/ActivityManager$LifeCycleCallback;)V

    .line 278
    :cond_1
    return-void
.end method

.method private static startActivityHandleException(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)Z
    .locals 4
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "startIntent"    # Lccsanandroid/content/Intent;

    .line 282
    :try_start_0
    invoke-virtual {p0, p1}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;)V
    :try_end_0
    .catch Lccsanandroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    nop

    .line 287
    const/4 v0, 0x1

    return v0

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, "actNotFoundException":Lccsanandroid/content/ActivityNotFoundException;
    sget-object v1, Lccsancom/vungle/warren/utility/ActivityManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find activity to handle the Implicit intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lccsanandroid/content/ActivityNotFoundException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const/4 v1, 0x0

    return v1
.end method

.method public static startWhenForeground(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;Lccsancom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;)V
    .locals 3
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "intent"    # Lccsanandroid/content/Intent;
    .param p2, "leftCallback"    # Lccsancom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;

    .line 117
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 118
    .local v0, "weakContext":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lccsanandroid/content/Context;>;"
    sget-object v1, Lccsancom/vungle/warren/utility/ActivityManager;->instance:Lccsancom/vungle/warren/utility/ActivityManager;

    invoke-virtual {v1}, Lccsancom/vungle/warren/utility/ActivityManager;->inForeground()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    invoke-static {p0, p1}, Lccsancom/vungle/warren/utility/ActivityManager;->startActivityHandleException(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 120
    invoke-virtual {v1, p2}, Lccsancom/vungle/warren/utility/ActivityManager;->addOnNextAppLeftCallback(Lccsancom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;)V

    goto :goto_0

    .line 123
    :cond_0
    new-instance v2, Lccsancom/vungle/warren/utility/ActivityManager$2;

    invoke-direct {v2, v0, p1, p2}, Lccsancom/vungle/warren/utility/ActivityManager$2;-><init>(Ljava/lang/ref/WeakReference;Lccsanandroid/content/Intent;Lccsancom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;)V

    invoke-virtual {v1, v2}, Lccsancom/vungle/warren/utility/ActivityManager;->addListener(Lccsancom/vungle/warren/utility/ActivityManager$LifeCycleCallback;)V

    .line 136
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addListener(Lccsancom/vungle/warren/utility/ActivityManager$LifeCycleCallback;)V
    .locals 1
    .param p1, "callback"    # Lccsancom/vungle/warren/utility/ActivityManager$LifeCycleCallback;

    .line 144
    iget-object v0, p0, Lccsancom/vungle/warren/utility/ActivityManager;->callbacks:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 145
    return-void
.end method

.method public addOnNextAppLeftCallback(Lccsancom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;)V
    .locals 6
    .param p1, "leftCallback"    # Lccsancom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;

    .line 205
    if-nez p1, :cond_0

    .line 206
    return-void

    .line 209
    :cond_0
    iget-boolean v0, p0, Lccsancom/vungle/warren/utility/ActivityManager;->initialized:Z

    if-nez v0, :cond_1

    .line 210
    invoke-interface {p1}, Lccsancom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;->onLeftApplication()V

    .line 211
    return-void

    .line 214
    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 215
    .local v0, "weakCallback":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lccsancom/vungle/warren/utility/ActivityManager$LeftApplicationCallback;>;"
    new-instance v1, Lccsancom/vungle/warren/utility/ActivityManager$3;

    invoke-direct {v1, p0, v0}, Lccsancom/vungle/warren/utility/ActivityManager$3;-><init>(Lccsancom/vungle/warren/utility/ActivityManager;Ljava/lang/ref/WeakReference;)V

    .line 223
    .local v1, "cancelRunnable":Ljava/lang/Runnable;
    new-instance v2, Lccsancom/vungle/warren/utility/ActivityManager$4;

    invoke-direct {v2, p0, v0, v1}, Lccsancom/vungle/warren/utility/ActivityManager$4;-><init>(Lccsancom/vungle/warren/utility/ActivityManager;Ljava/lang/ref/WeakReference;Ljava/lang/Runnable;)V

    .line 252
    .local v2, "callback":Lccsancom/vungle/warren/utility/ActivityManager$LifeCycleCallback;
    iget-object v3, p0, Lccsancom/vungle/warren/utility/ActivityManager;->adLeftCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    invoke-virtual {p0}, Lccsancom/vungle/warren/utility/ActivityManager;->inForeground()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 254
    iget-object v3, p0, Lccsancom/vungle/warren/utility/ActivityManager;->handler:Lccsanandroid/os/Handler;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v3, v1, v4, v5}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 255
    invoke-virtual {p0, v2}, Lccsancom/vungle/warren/utility/ActivityManager;->addListener(Lccsancom/vungle/warren/utility/ActivityManager$LifeCycleCallback;)V

    goto :goto_0

    .line 257
    :cond_2
    invoke-static {}, Lccsancom/vungle/warren/utility/ActivityManager;->getInstance()Lccsancom/vungle/warren/utility/ActivityManager;

    move-result-object v3

    new-instance v4, Lccsancom/vungle/warren/utility/ActivityManager$5;

    invoke-direct {v4, p0, v0, v1}, Lccsancom/vungle/warren/utility/ActivityManager$5;-><init>(Lccsancom/vungle/warren/utility/ActivityManager;Ljava/lang/ref/WeakReference;Ljava/lang/Runnable;)V

    invoke-virtual {v3, v4}, Lccsancom/vungle/warren/utility/ActivityManager;->addListener(Lccsancom/vungle/warren/utility/ActivityManager$LifeCycleCallback;)V

    .line 269
    :goto_0
    return-void
.end method

.method deInit(Lccsanandroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 105
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/Application;

    .line 106
    .local v0, "app":Lccsanandroid/app/Application;
    invoke-virtual {v0, p0}, Lccsanandroid/app/Application;->unregisterActivityLifecycleCallbacks(Lccsanandroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 107
    const/4 v1, 0x0

    iput v1, p0, Lccsancom/vungle/warren/utility/ActivityManager;->started:I

    .line 108
    iput v1, p0, Lccsancom/vungle/warren/utility/ActivityManager;->resumed:I

    .line 109
    const/4 v2, 0x1

    iput-boolean v2, p0, Lccsancom/vungle/warren/utility/ActivityManager;->paused:Z

    .line 110
    iput-boolean v2, p0, Lccsancom/vungle/warren/utility/ActivityManager;->stopped:Z

    .line 111
    iput-boolean v1, p0, Lccsancom/vungle/warren/utility/ActivityManager;->initialized:Z

    .line 112
    iget-object v1, p0, Lccsancom/vungle/warren/utility/ActivityManager;->callbacks:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 113
    iget-object v1, p0, Lccsancom/vungle/warren/utility/ActivityManager;->adLeftCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 114
    return-void
.end method

.method protected inForeground()Z
    .locals 1

    .line 140
    iget-boolean v0, p0, Lccsancom/vungle/warren/utility/ActivityManager;->initialized:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lccsancom/vungle/warren/utility/ActivityManager;->started:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public init(Lccsanandroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 94
    iget-boolean v0, p0, Lccsancom/vungle/warren/utility/ActivityManager;->initialized:Z

    if-eqz v0, :cond_0

    .line 95
    return-void

    .line 97
    :cond_0
    new-instance v0, Lccsanandroid/os/Handler;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    iput-object v0, p0, Lccsancom/vungle/warren/utility/ActivityManager;->handler:Lccsanandroid/os/Handler;

    .line 98
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/Application;

    .line 99
    .local v0, "app":Lccsanandroid/app/Application;
    invoke-virtual {v0, p0}, Lccsanandroid/app/Application;->registerActivityLifecycleCallbacks(Lccsanandroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 100
    const/4 v1, 0x1

    iput-boolean v1, p0, Lccsancom/vungle/warren/utility/ActivityManager;->initialized:Z

    .line 101
    return-void
.end method

.method public isInitialized()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lccsancom/vungle/warren/utility/ActivityManager;->initialized:Z

    return v0
.end method

.method public onActivityCreated(Lccsanandroid/app/Activity;Lccsanandroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Lccsanandroid/app/Activity;
    .param p2, "savedInstanceState"    # Lccsanandroid/os/Bundle;

    .line 154
    return-void
.end method

.method public onActivityDestroyed(Lccsanandroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Lccsanandroid/app/Activity;

    .line 202
    return-void
.end method

.method public onActivityPaused(Lccsanandroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Lccsanandroid/app/Activity;

    .line 190
    iget v0, p0, Lccsancom/vungle/warren/utility/ActivityManager;->resumed:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lccsancom/vungle/warren/utility/ActivityManager;->resumed:I

    .line 191
    iget-object v0, p0, Lccsancom/vungle/warren/utility/ActivityManager;->handler:Lccsanandroid/os/Handler;

    iget-object v1, p0, Lccsancom/vungle/warren/utility/ActivityManager;->configChangeRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 192
    return-void
.end method

.method public onActivityResumed(Lccsanandroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Lccsanandroid/app/Activity;

    .line 175
    iget v0, p0, Lccsancom/vungle/warren/utility/ActivityManager;->resumed:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lccsancom/vungle/warren/utility/ActivityManager;->resumed:I

    .line 176
    if-ne v0, v1, :cond_2

    .line 177
    iget-boolean v0, p0, Lccsancom/vungle/warren/utility/ActivityManager;->paused:Z

    if-eqz v0, :cond_1

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/vungle/warren/utility/ActivityManager;->paused:Z

    .line 179
    iget-object v0, p0, Lccsancom/vungle/warren/utility/ActivityManager;->callbacks:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/vungle/warren/utility/ActivityManager$LifeCycleCallback;

    .line 180
    .local v1, "callback":Lccsancom/vungle/warren/utility/ActivityManager$LifeCycleCallback;
    invoke-virtual {v1}, Lccsancom/vungle/warren/utility/ActivityManager$LifeCycleCallback;->onResume()V

    .line 181
    .end local v1    # "callback":Lccsancom/vungle/warren/utility/ActivityManager$LifeCycleCallback;
    goto :goto_0

    :cond_0
    goto :goto_1

    .line 183
    :cond_1
    iget-object v0, p0, Lccsancom/vungle/warren/utility/ActivityManager;->handler:Lccsanandroid/os/Handler;

    iget-object v1, p0, Lccsancom/vungle/warren/utility/ActivityManager;->configChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 186
    :cond_2
    :goto_1
    return-void
.end method

.method public onActivitySaveInstanceState(Lccsanandroid/app/Activity;Lccsanandroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Lccsanandroid/app/Activity;
    .param p2, "outState"    # Lccsanandroid/os/Bundle;

    .line 197
    return-void
.end method

.method public onActivityStarted(Lccsanandroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Lccsanandroid/app/Activity;

    .line 158
    iget v0, p0, Lccsancom/vungle/warren/utility/ActivityManager;->started:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lccsancom/vungle/warren/utility/ActivityManager;->started:I

    .line 159
    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lccsancom/vungle/warren/utility/ActivityManager;->stopped:Z

    if-eqz v0, :cond_0

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/vungle/warren/utility/ActivityManager;->stopped:Z

    .line 161
    iget-object v0, p0, Lccsancom/vungle/warren/utility/ActivityManager;->callbacks:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/vungle/warren/utility/ActivityManager$LifeCycleCallback;

    .line 162
    .local v1, "callback":Lccsancom/vungle/warren/utility/ActivityManager$LifeCycleCallback;
    invoke-virtual {v1}, Lccsancom/vungle/warren/utility/ActivityManager$LifeCycleCallback;->onStart()V

    .line 163
    .end local v1    # "callback":Lccsancom/vungle/warren/utility/ActivityManager$LifeCycleCallback;
    goto :goto_0

    .line 165
    :cond_0
    return-void
.end method

.method public onActivityStopped(Lccsanandroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Lccsanandroid/app/Activity;

    .line 169
    iget v0, p0, Lccsancom/vungle/warren/utility/ActivityManager;->started:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lccsancom/vungle/warren/utility/ActivityManager;->started:I

    .line 170
    iget-object v0, p0, Lccsancom/vungle/warren/utility/ActivityManager;->handler:Lccsanandroid/os/Handler;

    iget-object v1, p0, Lccsancom/vungle/warren/utility/ActivityManager;->configChangeRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 171
    return-void
.end method
