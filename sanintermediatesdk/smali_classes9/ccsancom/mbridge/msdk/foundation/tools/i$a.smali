.class final Lccsancom/mbridge/msdk/foundation/tools/i$a;
.super Ljava/lang/Object;
.source "MIMManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/foundation/tools/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Lccsancom/mbridge/msdk/foundation/tools/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 224
    new-instance v0, Lccsancom/mbridge/msdk/foundation/tools/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/i;-><init>(Lccsancom/mbridge/msdk/foundation/tools/i$1;)V

    sput-object v0, Lccsancom/mbridge/msdk/foundation/tools/i$a;->a:Lccsancom/mbridge/msdk/foundation/tools/i;

    return-void
.end method

.method static synthetic a()Lccsancom/mbridge/msdk/foundation/tools/i;
    .locals 1

    .line 223
    sget-object v0, Lccsancom/mbridge/msdk/foundation/tools/i$a;->a:Lccsancom/mbridge/msdk/foundation/tools/i;

    return-object v0
.end method
