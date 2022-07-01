.class public Lccsancom/mbridge/msdk/foundation/same/report/c/a;
.super Ljava/lang/Object;
.source "LogFileController.java"


# static fields
.field public static final a:Ljava/lang/String;

.field private static b:Lccsancom/mbridge/msdk/foundation/same/report/c/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const-class v0, Lccsancom/mbridge/msdk/foundation/same/report/c/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/foundation/same/report/c/a;->a:Ljava/lang/String;

    .line 14
    const/4 v0, 0x0

    sput-object v0, Lccsancom/mbridge/msdk/foundation/same/report/c/a;->b:Lccsancom/mbridge/msdk/foundation/same/report/c/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lccsancom/mbridge/msdk/foundation/same/report/c/a;
    .locals 2

    const-class v0, Lccsancom/mbridge/msdk/foundation/same/report/c/a;

    monitor-enter v0

    .line 19
    :try_start_0
    sget-object v1, Lccsancom/mbridge/msdk/foundation/same/report/c/a;->b:Lccsancom/mbridge/msdk/foundation/same/report/c/a;

    if-nez v1, :cond_0

    .line 20
    new-instance v1, Lccsancom/mbridge/msdk/foundation/same/report/c/a;

    invoke-direct {v1}, Lccsancom/mbridge/msdk/foundation/same/report/c/a;-><init>()V

    sput-object v1, Lccsancom/mbridge/msdk/foundation/same/report/c/a;->b:Lccsancom/mbridge/msdk/foundation/same/report/c/a;

    .line 22
    :cond_0
    sget-object v1, Lccsancom/mbridge/msdk/foundation/same/report/c/a;->b:Lccsancom/mbridge/msdk/foundation/same/report/c/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 18
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
