.class public final Lccsancom/mbridge/msdk/foundation/same/net/a;
.super Ljava/lang/Object;
.source "BandWideUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/foundation/same/net/a$a;
    }
.end annotation


# static fields
.field private static a:J

.field private static b:J

.field private static c:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 8
    const-wide/16 v0, 0x0

    sput-wide v0, Lccsancom/mbridge/msdk/foundation/same/net/a;->a:J

    .line 10
    sput-wide v0, Lccsancom/mbridge/msdk/foundation/same/net/a;->c:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/mbridge/msdk/foundation/same/net/a$1;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lccsancom/mbridge/msdk/foundation/same/net/a;-><init>()V

    return-void
.end method

.method public static a()Lccsancom/mbridge/msdk/foundation/same/net/a;
    .locals 1

    .line 20
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/net/a$a;->a()Lccsancom/mbridge/msdk/foundation/same/net/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final b()J
    .locals 2

    .line 59
    sget-wide v0, Lccsancom/mbridge/msdk/foundation/same/net/a;->b:J

    return-wide v0
.end method
