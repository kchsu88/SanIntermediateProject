.class public Lccsancom/mbridge/msdk/video/dynview/a;
.super Ljava/lang/Object;
.source "MBUIController.java"


# static fields
.field private static volatile a:Lccsancom/mbridge/msdk/video/dynview/a;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static a()Lccsancom/mbridge/msdk/video/dynview/a;
    .locals 2

    .line 26
    sget-object v0, Lccsancom/mbridge/msdk/video/dynview/a;->a:Lccsancom/mbridge/msdk/video/dynview/a;

    if-nez v0, :cond_1

    .line 27
    const-class v0, Lccsancom/mbridge/msdk/video/dynview/a;

    monitor-enter v0

    .line 28
    :try_start_0
    sget-object v1, Lccsancom/mbridge/msdk/video/dynview/a;->a:Lccsancom/mbridge/msdk/video/dynview/a;

    if-nez v1, :cond_0

    .line 29
    new-instance v1, Lccsancom/mbridge/msdk/video/dynview/a;

    invoke-direct {v1}, Lccsancom/mbridge/msdk/video/dynview/a;-><init>()V

    sput-object v1, Lccsancom/mbridge/msdk/video/dynview/a;->a:Lccsancom/mbridge/msdk/video/dynview/a;

    .line 31
    :cond_0
    sget-object v1, Lccsancom/mbridge/msdk/video/dynview/a;->a:Lccsancom/mbridge/msdk/video/dynview/a;

    monitor-exit v0

    return-object v1

    .line 32
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 34
    :cond_1
    sget-object v0, Lccsancom/mbridge/msdk/video/dynview/a;->a:Lccsancom/mbridge/msdk/video/dynview/a;

    return-object v0
.end method


# virtual methods
.method public final a(Lccsancom/mbridge/msdk/video/dynview/b;Lccsancom/mbridge/msdk/video/dynview/d/c;)V
    .locals 2

    .line 46
    new-instance v0, Lccsancom/mbridge/msdk/video/dynview/g/a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lccsancom/mbridge/msdk/video/dynview/g/a;-><init>(Lccsancom/mbridge/msdk/video/dynview/b;Lccsancom/mbridge/msdk/video/dynview/d/c;Ljava/util/Map;)V

    .line 47
    return-void
.end method
