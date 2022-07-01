.class public Lccsancom/mbridge/msdk/mbnative/f/a;
.super Ljava/lang/Object;
.source "NativeProvider.java"


# instance fields
.field private a:Lccsancom/mbridge/msdk/mbnative/c/b;

.field private b:Lccsanandroid/os/Handler;

.field private c:Lccsancom/mbridge/msdk/mbnative/d/a;

.field private d:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lccsanandroid/os/Handler;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/mbnative/f/a;->b:Lccsanandroid/os/Handler;

    .line 42
    return-void
.end method

.method public constructor <init>(Lccsancom/mbridge/msdk/mbnative/d/a;Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lccsanandroid/os/Handler;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/mbnative/f/a;->b:Lccsanandroid/os/Handler;

    .line 44
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbnative/f/a;->c:Lccsancom/mbridge/msdk/mbnative/d/a;

    .line 45
    iput-object p2, p0, Lccsancom/mbridge/msdk/mbnative/f/a;->d:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    .line 46
    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 1

    .line 121
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/f/a;->a:Lccsancom/mbridge/msdk/mbnative/c/b;

    if-eqz v0, :cond_3

    .line 122
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/f/a;->c:Lccsancom/mbridge/msdk/mbnative/d/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/mbnative/d/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 124
    invoke-direct {p0}, Lccsancom/mbridge/msdk/mbnative/f/a;->f()V

    goto :goto_0

    .line 126
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/f/a;->b:Lccsanandroid/os/Handler;

    new-instance p2, Lccsancom/mbridge/msdk/mbnative/f/a$1;

    invoke-direct {p2, p0}, Lccsancom/mbridge/msdk/mbnative/f/a$1;-><init>(Lccsancom/mbridge/msdk/mbnative/f/a;)V

    invoke-virtual {p1, p2}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 134
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/f/a;->c:Lccsancom/mbridge/msdk/mbnative/d/a;

    if-eqz v0, :cond_2

    .line 135
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/mbnative/d/a;->b()V

    .line 137
    :cond_2
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/f/a;->a:Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-virtual {v0, p1, p2}, Lccsancom/mbridge/msdk/mbnative/c/b;->a(ILjava/lang/String;)V

    .line 140
    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/mbnative/f/a;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lccsancom/mbridge/msdk/mbnative/f/a;->f()V

    return-void
.end method

.method private f()V
    .locals 2

    .line 116
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/f/a;->c:Lccsancom/mbridge/msdk/mbnative/d/a;

    const-string v1, "current request is loading"

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/mbnative/d/a;->onAdLoadError(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/f/a;->c:Lccsancom/mbridge/msdk/mbnative/d/a;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/mbnative/d/a;->b()V

    .line 118
    return-void
.end method

.method public static preload(Ljava/util/Map;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 111
    const-string v0, "NativeProvider"

    const-string v1, "native provider preload"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    new-instance v0, Lccsancom/mbridge/msdk/mbnative/c/c;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/mbnative/c/c;-><init>()V

    invoke-virtual {v0, p0, p1}, Lccsancom/mbridge/msdk/mbnative/c/c;->a(Ljava/util/Map;I)V

    .line 113
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 53
    const/4 v0, 0x0

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lccsancom/mbridge/msdk/mbnative/f/a;->a(ILjava/lang/String;)V

    .line 54
    return-void
.end method

.method public final a(Lccsanandroid/content/Context;Lccsanandroid/content/res/Resources;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Lccsanandroid/content/res/Resources;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 49
    new-instance p2, Lccsancom/mbridge/msdk/mbnative/c/b;

    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/f/a;->c:Lccsancom/mbridge/msdk/mbnative/d/a;

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/f/a;->d:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    invoke-direct {p2, v0, v1, p3, p1}, Lccsancom/mbridge/msdk/mbnative/c/b;-><init>(Lccsancom/mbridge/msdk/mbnative/d/a;Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;Ljava/util/Map;Lccsanandroid/content/Context;)V

    iput-object p2, p0, Lccsancom/mbridge/msdk/mbnative/f/a;->a:Lccsancom/mbridge/msdk/mbnative/c/b;

    .line 50
    return-void
.end method

.method public final a(Lccsanandroid/view/View;Lccsancom/mbridge/msdk/out/Campaign;)V
    .locals 2

    .line 87
    const-string v0, "NativeProvider"

    const-string v1, "native provider registerView"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/f/a;->a:Lccsancom/mbridge/msdk/mbnative/c/b;

    if-nez v0, :cond_0

    .line 89
    return-void

    .line 91
    :cond_0
    invoke-virtual {v0, p2, p1}, Lccsancom/mbridge/msdk/mbnative/c/b;->a(Lccsancom/mbridge/msdk/out/Campaign;Lccsanandroid/view/View;)V

    .line 92
    return-void
.end method

.method public final a(Lccsanandroid/view/View;Ljava/util/List;Lccsancom/mbridge/msdk/out/Campaign;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/view/View;",
            "Ljava/util/List<",
            "Lccsanandroid/view/View;",
            ">;",
            "Lccsancom/mbridge/msdk/out/Campaign;",
            ")V"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/f/a;->a:Lccsancom/mbridge/msdk/mbnative/c/b;

    if-nez v0, :cond_0

    .line 81
    return-void

    .line 83
    :cond_0
    invoke-virtual {v0, p3, p1, p2}, Lccsancom/mbridge/msdk/mbnative/c/b;->a(Lccsancom/mbridge/msdk/out/Campaign;Lccsanandroid/view/View;Ljava/util/List;)V

    .line 84
    return-void
.end method

.method public final a(Lccsancom/mbridge/msdk/mbnative/d/a;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbnative/f/a;->c:Lccsancom/mbridge/msdk/mbnative/d/a;

    .line 33
    return-void
.end method

.method public final a(Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbnative/f/a;->d:Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;

    .line 39
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lccsancom/mbridge/msdk/mbnative/f/a;->a(ILjava/lang/String;)V

    .line 58
    return-void
.end method

.method public final b()V
    .locals 2

    .line 61
    const/4 v0, 0x1

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lccsancom/mbridge/msdk/mbnative/f/a;->a(ILjava/lang/String;)V

    .line 62
    return-void
.end method

.method public final b(Lccsanandroid/view/View;Lccsancom/mbridge/msdk/out/Campaign;)V
    .locals 2

    .line 95
    const-string v0, "NativeProvider"

    const-string v1, "native provider unregisterView"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/f/a;->a:Lccsancom/mbridge/msdk/mbnative/c/b;

    if-nez v0, :cond_0

    .line 97
    return-void

    .line 99
    :cond_0
    invoke-virtual {v0, p2, p1}, Lccsancom/mbridge/msdk/mbnative/c/b;->b(Lccsancom/mbridge/msdk/out/Campaign;Lccsanandroid/view/View;)V

    .line 100
    return-void
.end method

.method public final b(Lccsanandroid/view/View;Ljava/util/List;Lccsancom/mbridge/msdk/out/Campaign;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/view/View;",
            "Ljava/util/List<",
            "Lccsanandroid/view/View;",
            ">;",
            "Lccsancom/mbridge/msdk/out/Campaign;",
            ")V"
        }
    .end annotation

    .line 103
    const-string v0, "NativeProvider"

    const-string v1, "native provider unregisterView"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/f/a;->a:Lccsancom/mbridge/msdk/mbnative/c/b;

    if-nez v0, :cond_0

    .line 105
    return-void

    .line 107
    :cond_0
    invoke-virtual {v0, p3, p1, p2}, Lccsancom/mbridge/msdk/mbnative/c/b;->b(Lccsancom/mbridge/msdk/out/Campaign;Lccsanandroid/view/View;Ljava/util/List;)V

    .line 108
    return-void
.end method

.method public final c()V
    .locals 2

    .line 66
    nop

    .line 2959
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/o;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    const-string v0, "NativeProvider"

    const-string v1, "clear cache failed"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :goto_0
    return-void
.end method

.method public final d()V
    .locals 2

    .line 73
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/f/a;->a:Lccsancom/mbridge/msdk/mbnative/c/b;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/mbnative/c/b;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    const-string v0, "NativeProvider"

    const-string v1, "release failed"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :goto_0
    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/f/a;->a:Lccsancom/mbridge/msdk/mbnative/c/b;

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/mbnative/c/b;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 145
    :cond_0
    const-string v0, ""

    return-object v0
.end method
