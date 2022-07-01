.class public Lccsancom/mbridge/msdk/out/CustomInfoManager;
.super Ljava/lang/Object;
.source "CustomInfoManager.java"

# interfaces
.implements Lccsancom/mbridge/msdk/system/NoProGuard;


# static fields
.field private static INSTANCE:Lccsancom/mbridge/msdk/out/CustomInfoManager; = null

.field private static TAG:Ljava/lang/String; = null

.field public static final TYPE_BID:I = 0x6

.field public static final TYPE_BIDLOAD:I = 0x7

.field public static final TYPE_LOAD:I = 0x8


# instance fields
.field private infoMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-string v0, "CustomInfoManager"

    sput-object v0, Lccsancom/mbridge/msdk/out/CustomInfoManager;->TAG:Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    sput-object v0, Lccsancom/mbridge/msdk/out/CustomInfoManager;->INSTANCE:Lccsancom/mbridge/msdk/out/CustomInfoManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/out/CustomInfoManager;->infoMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 23
    return-void
.end method

.method private getCustomInfoByUnitId(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 57
    nop

    .line 58
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    .line 59
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 69
    :pswitch_0
    iget-object p2, p0, Lccsancom/mbridge/msdk/out/CustomInfoManager;->infoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    .line 65
    :pswitch_1
    iget-object p2, p0, Lccsancom/mbridge/msdk/out/CustomInfoManager;->infoMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_bidload"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    .line 66
    goto :goto_0

    .line 61
    :pswitch_2
    iget-object p2, p0, Lccsancom/mbridge/msdk/out/CustomInfoManager;->infoMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_bid"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    .line 62
    nop

    .line 73
    :goto_0
    return-object v1

    .line 75
    :cond_0
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static declared-synchronized getInstance()Lccsancom/mbridge/msdk/out/CustomInfoManager;
    .locals 2

    const-class v0, Lccsancom/mbridge/msdk/out/CustomInfoManager;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lccsancom/mbridge/msdk/out/CustomInfoManager;->INSTANCE:Lccsancom/mbridge/msdk/out/CustomInfoManager;

    if-nez v1, :cond_1

    .line 27
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 28
    :try_start_1
    sget-object v1, Lccsancom/mbridge/msdk/out/CustomInfoManager;->INSTANCE:Lccsancom/mbridge/msdk/out/CustomInfoManager;

    if-nez v1, :cond_0

    .line 29
    new-instance v1, Lccsancom/mbridge/msdk/out/CustomInfoManager;

    invoke-direct {v1}, Lccsancom/mbridge/msdk/out/CustomInfoManager;-><init>()V

    sput-object v1, Lccsancom/mbridge/msdk/out/CustomInfoManager;->INSTANCE:Lccsancom/mbridge/msdk/out/CustomInfoManager;

    .line 31
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 33
    :cond_1
    :goto_0
    sget-object v1, Lccsancom/mbridge/msdk/out/CustomInfoManager;->INSTANCE:Lccsancom/mbridge/msdk/out/CustomInfoManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object v1

    .line 25
    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getCustomInfoByUnitId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 80
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 81
    return-object v1

    .line 84
    :cond_0
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    return-object v1

    .line 89
    :cond_1
    :try_start_0
    invoke-static {p2}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object p2

    .line 90
    if-eqz p2, :cond_4

    .line 91
    invoke-virtual {p2}, Lccsanandroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-virtual {p2}, Lccsanandroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    .line 94
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "hb"

    if-nez v2, :cond_2

    :try_start_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "bid"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 95
    const/4 p2, 0x6

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/out/CustomInfoManager;->getCustomInfoByUnitId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 98
    :cond_2
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "load"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 99
    const/4 p2, 0x7

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/out/CustomInfoManager;->getCustomInfoByUnitId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 102
    :cond_3
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "v3"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 103
    const/16 p2, 0x8

    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/out/CustomInfoManager;->getCustomInfoByUnitId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p1

    .line 108
    :cond_4
    goto :goto_0

    .line 106
    :catchall_0
    move-exception p1

    .line 107
    sget-object p2, Lccsancom/mbridge/msdk/out/CustomInfoManager;->TAG:Ljava/lang/String;

    const-string v0, "Exception"

    invoke-static {p2, v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    :goto_0
    return-object v1
.end method

.method public setCustomInfo(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 37
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 38
    invoke-static {p3}, Lccsancom/mbridge/msdk/foundation/tools/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 40
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 50
    :pswitch_0
    iget-object p2, p0, Lccsancom/mbridge/msdk/out/CustomInfoManager;->infoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 46
    :pswitch_1
    iget-object p2, p0, Lccsancom/mbridge/msdk/out/CustomInfoManager;->infoMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_bidload"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    goto :goto_0

    .line 42
    :pswitch_2
    iget-object p2, p0, Lccsancom/mbridge/msdk/out/CustomInfoManager;->infoMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_bid"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
