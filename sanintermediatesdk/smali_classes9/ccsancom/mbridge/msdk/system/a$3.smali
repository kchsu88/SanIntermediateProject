.class final Lccsancom/mbridge/msdk/system/a$3;
.super Ljava/lang/Object;
.source "MBridgeSDKImpl.java"

# interfaces
.implements Lccsancom/mbridge/msdk/foundation/download/utils/ILogger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/system/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/system/a;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/system/a;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lccsancom/mbridge/msdk/system/a$3;->a:Lccsancom/mbridge/msdk/system/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final log(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 223
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method public final log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 218
    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    return-void
.end method
