.class public final Lccsancom/mbridge/msdk/videocommon/download/b;
.super Ljava/lang/Object;
.source "DownLoadH5SourceListener.java"

# interfaces
.implements Lccsancom/mbridge/msdk/videocommon/download/g$c;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lccsancom/mbridge/msdk/videocommon/download/b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lccsancom/mbridge/msdk/videocommon/download/j;

.field private d:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lccsancom/mbridge/msdk/videocommon/download/g$d;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const-string v0, "DownLoadH5SourceListener"

    sput-object v0, Lccsancom/mbridge/msdk/videocommon/download/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ConcurrentMap;Lccsancom/mbridge/msdk/videocommon/download/j;Lccsancom/mbridge/msdk/videocommon/download/g$d;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lccsancom/mbridge/msdk/videocommon/download/b;",
            ">;",
            "Lccsancom/mbridge/msdk/videocommon/download/j;",
            "Lccsancom/mbridge/msdk/videocommon/download/g$d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/b;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 21
    iput-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/b;->b:Ljava/util/concurrent/ConcurrentMap;

    .line 22
    iput-object p2, p0, Lccsancom/mbridge/msdk/videocommon/download/b;->c:Lccsancom/mbridge/msdk/videocommon/download/j;

    .line 23
    invoke-virtual {v0, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    iput-object p4, p0, Lccsancom/mbridge/msdk/videocommon/download/b;->e:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 34
    return-void
.end method

.method public final a(Lccsancom/mbridge/msdk/videocommon/download/g$d;)V
    .locals 1

    .line 28
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/b;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    .line 92
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/b;->b:Ljava/util/concurrent/ConcurrentMap;

    if-nez v0, :cond_2

    .line 93
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/b;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/videocommon/download/g$d;

    .line 94
    if-eqz v1, :cond_0

    .line 95
    iget-object v2, p0, Lccsancom/mbridge/msdk/videocommon/download/b;->e:Ljava/lang/String;

    const-string v3, "mResDownloadingMap  is null"

    invoke-interface {v1, v2, v3}, Lccsancom/mbridge/msdk/videocommon/download/g$d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v2, p0, Lccsancom/mbridge/msdk/videocommon/download/b;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 98
    :cond_0
    goto :goto_0

    .line 99
    :cond_1
    return-void

    .line 101
    :cond_2
    iget-object v1, p0, Lccsancom/mbridge/msdk/videocommon/download/b;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 102
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/b;->b:Ljava/util/concurrent/ConcurrentMap;

    iget-object v1, p0, Lccsancom/mbridge/msdk/videocommon/download/b;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :cond_3
    goto :goto_1

    .line 104
    :catch_0
    move-exception v0

    .line 105
    sget-boolean v1, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 106
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 109
    :cond_4
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    goto :goto_1

    .line 110
    :catchall_0
    move-exception v0

    .line 111
    sget-object v1, Lccsancom/mbridge/msdk/videocommon/download/b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    :goto_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/b;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/videocommon/download/g$d;

    .line 115
    if-eqz v1, :cond_5

    .line 116
    iget-object v2, p0, Lccsancom/mbridge/msdk/videocommon/download/b;->e:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lccsancom/mbridge/msdk/videocommon/download/g$d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v2, p0, Lccsancom/mbridge/msdk/videocommon/download/b;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 119
    :cond_5
    goto :goto_2

    .line 120
    :cond_6
    return-void
.end method

.method public final a(Ljava/lang/String;[BLjava/lang/String;)V
    .locals 1

    .line 38
    nop

    .line 40
    :try_start_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/b;->b:Ljava/util/concurrent/ConcurrentMap;

    if-nez p1, :cond_2

    .line 41
    iget-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/b;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lccsancom/mbridge/msdk/videocommon/download/g$d;

    .line 42
    if-eqz p2, :cond_0

    .line 43
    const-string v0, "mResDownloadingMap  is null"

    invoke-interface {p2, p3, v0}, Lccsancom/mbridge/msdk/videocommon/download/g$d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/b;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 46
    :cond_0
    goto :goto_0

    .line 47
    :cond_1
    return-void

    .line 49
    :cond_2
    invoke-interface {p1, p3}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 50
    iget-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/b;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, p3}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_3
    if-eqz p2, :cond_7

    array-length p1, p2

    if-lez p1, :cond_7

    .line 54
    nop

    .line 55
    iget-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/b;->c:Lccsancom/mbridge/msdk/videocommon/download/j;

    invoke-virtual {p1, p3, p2}, Lccsancom/mbridge/msdk/videocommon/download/j;->a(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 56
    iget-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/b;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lccsancom/mbridge/msdk/videocommon/download/g$d;

    .line 57
    if-eqz p2, :cond_4

    .line 58
    invoke-interface {p2, p3}, Lccsancom/mbridge/msdk/videocommon/download/g$d;->a(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/b;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 61
    :cond_4
    goto :goto_1

    .line 62
    :cond_5
    return-void

    .line 64
    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "data save failed:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 66
    goto :goto_2

    .line 67
    :cond_7
    const-string p1, "response data is error"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_2
    goto :goto_3

    .line 70
    :catch_0
    move-exception p1

    .line 71
    sget-boolean p2, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_8

    .line 72
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 75
    :cond_8
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    goto :goto_3

    .line 76
    :catchall_0
    move-exception p1

    .line 77
    sget-object p2, Lccsancom/mbridge/msdk/videocommon/download/b;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p1, ""

    .line 81
    :goto_3
    iget-object p2, p0, Lccsancom/mbridge/msdk/videocommon/download/b;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/videocommon/download/g$d;

    .line 82
    if-eqz v0, :cond_9

    .line 83
    invoke-interface {v0, p3, p1}, Lccsancom/mbridge/msdk/videocommon/download/g$d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_9
    goto :goto_4

    .line 86
    :cond_a
    return-void
.end method
