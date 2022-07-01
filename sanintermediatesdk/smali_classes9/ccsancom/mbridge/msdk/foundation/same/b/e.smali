.class public final Lccsancom/mbridge/msdk/foundation/same/b/e;
.super Ljava/lang/Object;
.source "MBridgeDirManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/foundation/same/b/e$a;
    }
.end annotation


# static fields
.field private static c:Lccsancom/mbridge/msdk/foundation/same/b/e;


# instance fields
.field private a:Lccsancom/mbridge/msdk/foundation/same/b/b;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lccsancom/mbridge/msdk/foundation/same/b/e$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const/4 v0, 0x0

    sput-object v0, Lccsancom/mbridge/msdk/foundation/same/b/e;->c:Lccsancom/mbridge/msdk/foundation/same/b/e;

    return-void
.end method

.method private constructor <init>(Lccsancom/mbridge/msdk/foundation/same/b/b;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/b/e;->a:Lccsancom/mbridge/msdk/foundation/same/b/b;

    .line 22
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/b/e;->b:Ljava/util/ArrayList;

    .line 23
    return-void
.end method

.method public static declared-synchronized a()Lccsancom/mbridge/msdk/foundation/same/b/e;
    .locals 3

    const-class v0, Lccsancom/mbridge/msdk/foundation/same/b/e;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lccsancom/mbridge/msdk/foundation/same/b/e;->c:Lccsancom/mbridge/msdk/foundation/same/b/e;

    if-nez v1, :cond_0

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 32
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/s;->a(Lccsanandroid/content/Context;)V

    .line 34
    :cond_0
    sget-object v1, Lccsancom/mbridge/msdk/foundation/same/b/e;->c:Lccsancom/mbridge/msdk/foundation/same/b/e;

    if-nez v1, :cond_1

    .line 35
    const-string v1, "MBridgeDirManager"

    const-string v2, "mDirectoryManager == null"

    invoke-static {v1, v2}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_1
    sget-object v1, Lccsancom/mbridge/msdk/foundation/same/b/e;->c:Lccsancom/mbridge/msdk/foundation/same/b/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 30
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Lccsancom/mbridge/msdk/foundation/same/b/c;)Ljava/io/File;
    .locals 3

    .line 43
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/b/e;->a()Lccsancom/mbridge/msdk/foundation/same/b/e;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/b/e;->a()Lccsancom/mbridge/msdk/foundation/same/b/e;

    move-result-object v0

    iget-object v0, v0, Lccsancom/mbridge/msdk/foundation/same/b/e;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/b/e;->a()Lccsancom/mbridge/msdk/foundation/same/b/e;

    move-result-object v0

    iget-object v0, v0, Lccsancom/mbridge/msdk/foundation/same/b/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 44
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/b/e;->a()Lccsancom/mbridge/msdk/foundation/same/b/e;

    move-result-object v0

    iget-object v0, v0, Lccsancom/mbridge/msdk/foundation/same/b/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/foundation/same/b/e$a;

    .line 45
    iget-object v2, v1, Lccsancom/mbridge/msdk/foundation/same/b/e$a;->a:Lccsancom/mbridge/msdk/foundation/same/b/c;

    invoke-virtual {v2, p0}, Lccsancom/mbridge/msdk/foundation/same/b/c;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    iget-object p0, v1, Lccsancom/mbridge/msdk/foundation/same/b/e$a;->b:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 48
    :cond_0
    goto :goto_0

    .line 52
    :cond_1
    goto :goto_1

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBridgeDirManager"

    invoke-static {v1, v0, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static declared-synchronized a(Lccsancom/mbridge/msdk/foundation/same/b/b;)V
    .locals 2

    const-class v0, Lccsancom/mbridge/msdk/foundation/same/b/e;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lccsancom/mbridge/msdk/foundation/same/b/e;->c:Lccsancom/mbridge/msdk/foundation/same/b/e;

    if-nez v1, :cond_0

    .line 27
    new-instance v1, Lccsancom/mbridge/msdk/foundation/same/b/e;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/foundation/same/b/e;-><init>(Lccsancom/mbridge/msdk/foundation/same/b/b;)V

    sput-object v1, Lccsancom/mbridge/msdk/foundation/same/b/e;->c:Lccsancom/mbridge/msdk/foundation/same/b/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_0
    monitor-exit v0

    return-void

    .line 25
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private a(Lccsancom/mbridge/msdk/foundation/same/b/a;)Z
    .locals 6

    .line 71
    nop

    .line 72
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/same/b/a;->c()Lccsancom/mbridge/msdk/foundation/same/b/a;

    move-result-object v0

    .line 73
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 74
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/same/b/a;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/same/b/a;->a()Lccsancom/mbridge/msdk/foundation/same/b/c;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/same/b/e;->a(Lccsancom/mbridge/msdk/foundation/same/b/c;)Ljava/io/File;

    move-result-object v0

    .line 77
    if-nez v0, :cond_1

    .line 78
    return v1

    .line 80
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/same/b/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_2

    .line 85
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v0

    goto :goto_1

    .line 84
    :cond_2
    const/4 v0, 0x1

    .line 88
    :goto_1
    if-nez v0, :cond_3

    .line 89
    return v1

    .line 92
    :cond_3
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/b/e;->b:Ljava/util/ArrayList;

    new-instance v4, Lccsancom/mbridge/msdk/foundation/same/b/e$a;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/same/b/a;->a()Lccsancom/mbridge/msdk/foundation/same/b/c;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lccsancom/mbridge/msdk/foundation/same/b/e$a;-><init>(Lccsancom/mbridge/msdk/foundation/same/b/c;Ljava/io/File;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/same/b/a;->d()Ljava/util/List;

    move-result-object p1

    .line 94
    if-eqz p1, :cond_5

    .line 95
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/foundation/same/b/a;

    .line 96
    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/foundation/same/b/e;->a(Lccsancom/mbridge/msdk/foundation/same/b/a;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 97
    return v1

    .line 99
    :cond_4
    goto :goto_2

    .line 102
    :cond_5
    return v3
.end method

.method public static b(Lccsancom/mbridge/msdk/foundation/same/b/c;)Ljava/lang/String;
    .locals 0

    .line 57
    invoke-static {p0}, Lccsancom/mbridge/msdk/foundation/same/b/e;->a(Lccsancom/mbridge/msdk/foundation/same/b/c;)Ljava/io/File;

    move-result-object p0

    .line 58
    if-eqz p0, :cond_0

    .line 59
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 61
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final b()Z
    .locals 1

    .line 65
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/b/e;->a:Lccsancom/mbridge/msdk/foundation/same/b/b;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/same/b/b;->a()Lccsancom/mbridge/msdk/foundation/same/b/a;

    move-result-object v0

    .line 66
    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/foundation/same/b/e;->a(Lccsancom/mbridge/msdk/foundation/same/b/a;)Z

    move-result v0

    return v0
.end method
