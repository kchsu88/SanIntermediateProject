.class public Lccsancom/mbridge/msdk/mbnative/d/a;
.super Ljava/lang/Object;
.source "AdListenerProxy.java"

# interfaces
.implements Lccsancom/mbridge/msdk/out/NativeListener$NativeAdListener;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lccsancom/mbridge/msdk/out/NativeListener$NativeAdListener;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Lccsanandroid/content/Context;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lccsancom/mbridge/msdk/mbnative/d/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/mbnative/d/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/mbnative/d/a;->c:Z

    .line 38
    return-void
.end method

.method public constructor <init>(Lccsancom/mbridge/msdk/out/NativeListener$NativeAdListener;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/mbnative/d/a;->c:Z

    .line 41
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbnative/d/a;->b:Lccsancom/mbridge/msdk/out/NativeListener$NativeAdListener;

    .line 42
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbnative/d/a;->d:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 26
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/mbnative/d/a;->f:Z

    .line 27
    return-void
.end method

.method public final a()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/mbnative/d/a;->c:Z

    return v0
.end method

.method public final b()V
    .locals 1

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/mbnative/d/a;->c:Z

    .line 49
    return-void
.end method

.method public onAdClick(Lccsancom/mbridge/msdk/out/Campaign;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/d/a;->b:Lccsancom/mbridge/msdk/out/NativeListener$NativeAdListener;

    if-eqz v0, :cond_0

    .line 88
    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/out/NativeListener$NativeAdListener;->onAdClick(Lccsancom/mbridge/msdk/out/Campaign;)V

    .line 90
    :cond_0
    return-void
.end method

.method public onAdFramesLoaded(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/out/Frame;",
            ">;)V"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/d/a;->b:Lccsancom/mbridge/msdk/out/NativeListener$NativeAdListener;

    if-eqz v0, :cond_0

    .line 95
    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/out/NativeListener$NativeAdListener;->onAdFramesLoaded(Ljava/util/List;)V

    .line 97
    :cond_0
    return-void
.end method

.method public onAdLoadError(Ljava/lang/String;)V
    .locals 3

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/mbnative/d/a;->c:Z

    .line 74
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/d/a;->b:Lccsancom/mbridge/msdk/out/NativeListener$NativeAdListener;

    if-eqz v0, :cond_1

    .line 75
    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/out/NativeListener$NativeAdListener;->onAdLoadError(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/d/a;->e:Lccsanandroid/content/Context;

    if-nez v0, :cond_0

    .line 77
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/mbnative/d/a;->e:Lccsanandroid/content/Context;

    .line 79
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/d/a;->d:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 80
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/d/a;->e:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/d/a;->d:Ljava/lang/String;

    iget-boolean v2, p0, Lccsancom/mbridge/msdk/mbnative/d/a;->f:Z

    invoke-static {v0, p1, v1, v2}, Lccsancom/mbridge/msdk/mbnative/e/a;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 83
    :cond_1
    return-void
.end method

.method public onAdLoaded(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/out/Campaign;",
            ">;I)V"
        }
    .end annotation

    .line 54
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/mbnative/d/a;->c:Z

    .line 56
    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :try_start_1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    .line 58
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    :try_start_2
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbnative/d/a;->b:Lccsancom/mbridge/msdk/out/NativeListener$NativeAdListener;

    if-eqz v1, :cond_1

    .line 60
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 61
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbnative/d/a;->b:Lccsancom/mbridge/msdk/out/NativeListener$NativeAdListener;

    invoke-interface {p1, v0, p2}, Lccsancom/mbridge/msdk/out/NativeListener$NativeAdListener;->onAdLoaded(Ljava/util/List;I)V

    goto :goto_0

    .line 63
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/d/a;->b:Lccsancom/mbridge/msdk/out/NativeListener$NativeAdListener;

    invoke-interface {v0, p1, p2}, Lccsancom/mbridge/msdk/out/NativeListener$NativeAdListener;->onAdLoaded(Ljava/util/List;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 68
    :cond_1
    :goto_0
    goto :goto_1

    .line 58
    :catchall_0
    move-exception p2

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 66
    :catch_0
    move-exception p1

    .line 67
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 69
    :goto_1
    return-void
.end method

.method public onLoggingImpression(I)V
    .locals 1

    .line 101
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/d/a;->b:Lccsancom/mbridge/msdk/out/NativeListener$NativeAdListener;

    if-eqz v0, :cond_0

    .line 102
    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/out/NativeListener$NativeAdListener;->onLoggingImpression(I)V

    .line 104
    :cond_0
    return-void
.end method
