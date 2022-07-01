.class public Lccsancom/vungle/warren/utility/ConcurrencyTimeoutProvider;
.super Ljava/lang/Object;
.source "ConcurrencyTimeoutProvider.java"

# interfaces
.implements Lccsancom/vungle/warren/utility/TimeoutProvider;


# static fields
.field private static final OPERATION_TIMEOUT:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 13
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 14
    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lccsancom/vungle/warren/utility/ConcurrencyTimeoutProvider;->OPERATION_TIMEOUT:J

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTimeout()J
    .locals 2

    .line 26
    invoke-static {}, Lccsancom/vungle/warren/utility/ThreadUtil;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-wide v0, Lccsancom/vungle/warren/utility/ConcurrencyTimeoutProvider;->OPERATION_TIMEOUT:J

    goto :goto_0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    return-wide v0
.end method
